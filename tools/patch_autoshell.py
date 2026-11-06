#!/usr/bin/env python3
r"""Patch LocationModel with an ultra-fast, no-movement shell burst.

Requirement from live play: the player stands still on purpose; the client
must fire CollectShellReq for every announced shell immediately, with no
walker and no rate limiting.  Live testing also confirmed that some direct
requests do reach the inventory while the player is stationary, so this build
maximises the number of attempts per shell instead of walking.

Mechanism (client 2.4.0):

    UpdateResp.data.shells / shellAppeared
        -> LocationModel.parseShells() / updateHandler()
        -> CollectShellReq { x, y }  x5 immediately (no delay, no movement)
        -> retry bursts at ~80 ms / 160 ms / 320 ms for shells still present
        -> UpdateResp { shellCollected: {x, y} }

The vanilla client only sends CollectShellReq after walking within 4 px.  This
patch bypasses that check completely and sends the request for every shell as
soon as the server announces it.

Logs include getTimer() and the current shell inventory count so direct
success can be distinguished from another player's shellCollected broadcast.

FFDec's AS3 importer recompiles only LocationModel.as and writes it back into
the SWF.  The base SWF can be the original client.swf or an already-patched
SWF (e.g. FlashFishaoGame.hold.swf); the hold byte patch is preserved.

Usage:
    python tools/patch_autoshell.py [in.swf] [out.swf]

Defaults:
    in  = clients/2.4.0/FlashFishaoGame.swf
    out = runtime/out/FlashFishaoGame.hold_autoshell.2.4.0.swf
"""

from __future__ import annotations

import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "src/as3/2.4.0/com/ax3/fishao/locations/base/LocationModel.as"
DEFAULT_FFDEC = Path(r"C:\Users\barankrky\fishao_work\ffdec\ffdec-cli.jar")


def replace_once(src: str, old: str, new: str, label: str) -> str:
    if new.strip() in src:
        return src
    if old not in src:
        raise SystemExit(f"anchor not found: {label}")
    return src.replace(old, new, 1)


def patch_source(src: str) -> str:
    """Return LocationModel.as with the instant shell burst injected."""

    src = replace_once(
        src,
        "import com.ax3.fishao.locations.weather.WeatherType;",
        "import com.ax3.fishao.ResourceType;\n   import com.ax3.fishao.locations.weather.WeatherType;",
        "ResourceType import",
    )

    src = replace_once(
        src,
        "import flash.utils.Dictionary;",
        "import com.ax3.fishao.model.info.UserResource;\n   import flash.utils.Dictionary;\n   import flash.utils.getTimer;\n   import flash.utils.setTimeout;",
        "timer + UserResource imports",
    )

    src = replace_once(
        src,
        "public var shells:Vector.<Point> = new Vector.<Point>();",
        """public var shells:Vector.<Point> = new Vector.<Point>();
      
      public static var AUTO_SHELL_ENABLED:Boolean = true;
      
      public static var AUTO_SHELL_BURST_COUNT:int = 5;
      
      public static var AUTO_SHELL_RETRY_MS:int = 80;
      
      public static var AUTO_SHELL_SPOOF_POSITION:Boolean = true;
      
      private var _autoShellRetryScheduled:Boolean = false;
      
      private var _autoShellRetryRound:int = 0;""",
        "shells field",
    )

    src = replace_once(
        src,
        """            if(response.hasDataProperty("shellCollected"))
            {
               removeShellPosition = response.getJsonData("shellCollected");
               dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_SHELL,new Point(removeShellPosition.x,removeShellPosition.y)));
            }""",
        """            if(response.hasDataProperty("shellCollected"))
            {
               removeShellPosition = response.getJsonData("shellCollected");
               this.removeShellPoint(removeShellPosition.x,removeShellPosition.y);
               trace("[AutoShell] shellCollected " + removeShellPosition.x + "," + removeShellPosition.y + " t=" + getTimer());
               Cc.log("[AutoShell] shellCollected " + removeShellPosition.x + "," + removeShellPosition.y + " t=" + getTimer());
               this.logShellCount();
               dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_SHELL,new Point(removeShellPosition.x,removeShellPosition.y)));
            }""",
        "shellCollected handler",
    )

    src = replace_once(
        src,
        """            if(response.hasDataProperty("shellAppeared"))
            {
               newShellPosition = response.getJsonData("shellAppeared");
               dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_SHELL,new Point(newShellPosition.x,newShellPosition.y)));
            }""",
        """            if(response.hasDataProperty("shellAppeared"))
            {
               newShellPosition = response.getJsonData("shellAppeared");
               if(!this.hasShellPoint(newShellPosition.x,newShellPosition.y))
               {
                  this.shells.push(new Point(newShellPosition.x,newShellPosition.y));
               }
               dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_SHELL,new Point(newShellPosition.x,newShellPosition.y)));
               this.collectShellBurst(newShellPosition.x,newShellPosition.y);
               this.scheduleShellRetry();
            }""",
        "shellAppeared handler",
    )

    src = replace_once(
        src,
        """      private function parseShells(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.shells.push(new Point(_loc2_.x,_loc2_.y));
         }
         dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_SHELLS));
      }""",
        """      private function parseShells(param1:Object) : void
      {
         var _loc2_:Object = null;
         var point:Point = null;
         for each(_loc2_ in param1)
         {
            point = new Point(_loc2_.x,_loc2_.y);
            if(!this.hasShellPoint(point.x,point.y))
            {
               this.shells.push(point);
            }
            this.collectShellBurst(point.x,point.y);
         }
         dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_SHELLS));
         this.scheduleShellRetry();
      }
      
      private function hasShellPoint(param1:Number, param2:Number) : Boolean
      {
         var shell:Point = null;
         for each(shell in this.shells)
         {
            if(shell.x == param1 && shell.y == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      private function collectShellBurst(param1:Number, param2:Number) : void
      {
         var i:int = 0;
         var player:PlayerChar = null;
         var ox:Number = 0;
         var oy:Number = 0;
         var or:Number = 0;
         var spoofed:Boolean = false;
         if(!AUTO_SHELL_ENABLED)
         {
            return;
         }
         player = this._dialog != null ? this._dialog.player : null;
         if(AUTO_SHELL_SPOOF_POSITION && player != null && Point.distance(player.position,new Point(param1,param2)) > 4)
         {
            ox = player.position.x;
            oy = player.position.y;
            or = player.position.rotation;
            FishaoFscModelManager.locationExtension.moveTo(-1,-1,-1,param1,param2,or);
            spoofed = true;
            trace("[AutoShell] spoof " + param1 + "," + param2 + " t=" + getTimer());
            Cc.log("[AutoShell] spoof " + param1 + "," + param2 + " t=" + getTimer());
         }
         trace("[AutoShell] burst " + param1 + "," + param2 + " n=" + AUTO_SHELL_BURST_COUNT + " t=" + getTimer());
         Cc.log("[AutoShell] burst " + param1 + "," + param2 + " n=" + AUTO_SHELL_BURST_COUNT + " t=" + getTimer());
         i = 0;
         while(i < AUTO_SHELL_BURST_COUNT)
         {
            if(FishaoFscModelManager.locationExtension != null)
            {
               FishaoFscModelManager.locationExtension.collectShellAt(param1,param2);
            }
            i++;
         }
         if(spoofed)
         {
            FishaoFscModelManager.locationExtension.moveTo(-1,-1,-1,ox,oy,or);
            trace("[AutoShell] restore " + ox + "," + oy + " t=" + getTimer());
         }
      }
      
      private function collectAllShellBursts() : void
      {
         var shell:Point = null;
         if(!AUTO_SHELL_ENABLED)
         {
            return;
         }
         for each(shell in this.shells)
         {
            if(shell != null)
            {
               this.collectShellBurst(shell.x,shell.y);
            }
         }
      }
      
      private function scheduleShellRetry() : void
      {
         if(!AUTO_SHELL_ENABLED || this._autoShellRetryScheduled)
         {
            return;
         }
         this._autoShellRetryRound = 0;
         this._autoShellRetryScheduled = true;
         setTimeout(this.retryShells,AUTO_SHELL_RETRY_MS);
      }
      
      private function retryShells() : void
      {
         this._autoShellRetryScheduled = false;
         if(!AUTO_SHELL_ENABLED || this.shells.length == 0)
         {
            return;
         }
         this.collectAllShellBursts();
         ++this._autoShellRetryRound;
         if(this._autoShellRetryRound < 3)
         {
            this._autoShellRetryScheduled = true;
            setTimeout(this.retryShells,AUTO_SHELL_RETRY_MS * 2);
         }
      }
      
      private function logShellCount() : void
      {
         var res:UserResource = app.user.inventory.getResource(1,ResourceType.OTHER.id);
         trace("[AutoShell] shells=" + (res != null ? res.quantity : -1));
      }
      
      private function removeShellPoint(param1:Number, param2:Number) : void
      {
         var i:int = 0;
         while(i < this.shells.length)
         {
            if(this.shells[i].x == param1 && this.shells[i].y == param2)
            {
               this.shells.splice(i,1);
            }
            else
            {
               i++;
            }
         }
      }""",
        "parseShells + burst",
    )

    src = replace_once(
        src,
        """      public function deactivate() : void
      {
         this.wasLoadedFirstResp = false;
         this.shells = new Vector.<Point>();
      }""",
        """      public function deactivate() : void
      {
         this.wasLoadedFirstResp = false;
         this.shells = new Vector.<Point>();
         this._autoShellRetryScheduled = false;
         this._autoShellRetryRound = 0;
      }""",
        "deactivate reset",
    )

    return src


def main() -> None:
    args = sys.argv[1:]
    if len(args) > 2:
        raise SystemExit("usage: patch_autoshell.py [in.swf] [out.swf]")

    src_swf = Path(args[0]) if len(args) >= 1 else ROOT / "clients/2.4.0/FlashFishaoGame.swf"
    dst_swf = Path(args[1]) if len(args) >= 2 else ROOT / "runtime/out/FlashFishaoGame.hold_autoshell.2.4.0.swf"

    if not src_swf.exists():
        raise SystemExit(f"input SWF not found: {src_swf}")
    if not SOURCE.exists():
        raise SystemExit(f"source not found: {SOURCE}")

    ffdec = Path(os.environ.get("FFDEC", DEFAULT_FFDEC))
    if not ffdec.exists():
        raise SystemExit(f"ffdec-cli.jar not found: {ffdec} (set FFDEC)")

    patched = patch_source(SOURCE.read_text(encoding="utf-8"))

    tmp = Path(tempfile.mkdtemp(prefix="fishao_autoshell_"))
    try:
        import_dir = tmp / "import"
        target = import_dir / "com/ax3/fishao/locations/base/LocationModel.as"
        target.parent.mkdir(parents=True)
        target.write_text(patched, encoding="utf-8")

        cmd = [
            "java", "-jar", str(ffdec),
            "-onerror", "abort",
            "-importScript", str(src_swf), str(dst_swf), str(import_dir),
        ]
        print("running:", " ".join(cmd))
        subprocess.run(cmd, check=True)
    finally:
        shutil.rmtree(tmp, ignore_errors=True)

    print(f"input : {src_swf}")
    print(f"output: {dst_swf} ({dst_swf.stat().st_size} bytes)")
    print("test  : client_test\\run-adl-autoshell.bat")


if __name__ == "__main__":
    main()

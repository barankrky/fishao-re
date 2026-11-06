#!/usr/bin/env python3
r"""Patch the 2.5.1 (obfuscated) LocationModel with the instant shell burst.

2.5.1 renamed every game class to a hashed identifier, so the 2.4.0
`LocationModel.as` patch cannot be imported.  The equivalent class is
`com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e` (extends
EventDispatcher, owns `shells:Vector.<Point>` and the UpdateResp handler).

The injected logic is identical to the 2.4.0 patch:

    UpdateResp.data.shells / shellAppeared
        -> collectShellBurst()
        -> MvUsrToRq(x,y) spoof + CollectShellReq x5
        -> MvUsrToRq back to the original position

Obfuscated names used by the new client:

    FishaoFscModelManager        -> com.ax3.fishao._dfa25706e58a240c1e33e5c6
    LocationFscExtension.moveTo  -> same public name on
                                    com.ax3.jss.ext.impl._da8945d70238098d1f7454c9
    collectShellAt               -> _7753d28b513efa07432294ed
    LocationModelEvent           -> com.ax3.fishao.events._4986c362bed569a2ffb299b4
    PlayerChar                   -> com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4

Usage:
    python tools/patch_autoshell_251.py [in.swf] [out.swf]

Defaults:
    in  = runtime/out/FlashFishaoGame.hold.swf (if present), else clients/2.5.1/FlashFishaoGame.swf
    out = runtime/out/FlashFishaoGame.hold_autoshell.2.5.1.swf
"""

from __future__ import annotations

import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
SOURCE = ROOT / "src/as3/2.5.1/com/ax3/fishao/locations/base/_4039c287ddb4ef46ab65ab0e.as"
DEFAULT_FFDEC = Path(r"C:\Users\barankrky\fishao_work\ffdec\ffdec-cli.jar")


def replace_once(src: str, old: str, new: str, label: str) -> str:
    if new in src:
        return src
    if old not in src:
        raise SystemExit(f"anchor not found: {label}")
    return src.replace(old, new, 1)


def patch_source(src: str) -> str:
    src = replace_once(
        src,
        "import flash.utils.Dictionary;",
        "import flash.utils.Dictionary;\n   import flash.utils.getTimer;\n   import flash.utils.setTimeout;",
        "timer imports",
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

    # The handler lines contain encrypted string literals; match on the
    # assignment prefix and insert the burst call immediately after it.
    lines = src.splitlines()
    out: list[str] = []
    for line in lines:
        out.append(line)
        if "removeShellPosition = response.getJsonData(" in line:
            indent = line[: len(line) - len(line.lstrip())]
            out.append(f"{indent}this.removeShellPoint(removeShellPosition.x,removeShellPosition.y);")
            out.append(f'{indent}trace("[AutoShell] shellCollected " + removeShellPosition.x + "," + removeShellPosition.y + " t=" + getTimer());')
            out.append(f'{indent}Cc.log("[AutoShell] shellCollected " + removeShellPosition.x + "," + removeShellPosition.y + " t=" + getTimer());')
        elif "newShellPosition = response.getJsonData(" in line:
            indent = line[: len(line) - len(line.lstrip())]
            out.append(f"{indent}this.collectShellBurst(newShellPosition.x,newShellPosition.y);")
        elif line.strip() == "this.shells.push(new Point(_loc2_.x,_loc2_.y));":
            indent = line[: len(line) - len(line.lstrip())]
            out.append(f"{indent}this.collectShellBurst(_loc2_.x,_loc2_.y);")
    src = "\n".join(out) + "\n"

    src = replace_once(
        src,
        "      private function _372b51c61c99430e27054c34(param1:Object) : void",
        r'''      private function hasShellPoint(param1:Number, param2:Number) : Boolean
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
         var player:* = null;
         var ox:Number = 0;
         var oy:Number = 0;
         var or:Number = 0;
         var spoofed:Boolean = false;
         if(!AUTO_SHELL_ENABLED)
         {
            return;
         }
         player = this.dialog != null ? this.dialog.player : null;
         if(AUTO_SHELL_SPOOF_POSITION && player != null && Point.distance(player.position,new Point(param1,param2)) > 4)
         {
            ox = player.position.x;
            oy = player.position.y;
            or = player.position.rotation;
            _dfa25706e58a240c1e33e5c6.locationExtension.moveTo(-1,-1,-1,param1,param2,or);
            spoofed = true;
            trace("[AutoShell] spoof " + param1 + "," + param2 + " t=" + getTimer());
            Cc.log("[AutoShell] spoof " + param1 + "," + param2 + " t=" + getTimer());
         }
         trace("[AutoShell] burst " + param1 + "," + param2 + " n=" + AUTO_SHELL_BURST_COUNT + " t=" + getTimer());
         Cc.log("[AutoShell] burst " + param1 + "," + param2 + " n=" + AUTO_SHELL_BURST_COUNT + " t=" + getTimer());
         i = 0;
         while(i < AUTO_SHELL_BURST_COUNT)
         {
            if(_dfa25706e58a240c1e33e5c6.locationExtension != null)
            {
               _dfa25706e58a240c1e33e5c6.locationExtension._7753d28b513efa07432294ed(param1,param2);
            }
            i++;
         }
         if(spoofed)
         {
            _dfa25706e58a240c1e33e5c6.locationExtension.moveTo(-1,-1,-1,ox,oy,or);
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
      }
      
      private function _372b51c61c99430e27054c34(param1:Object) : void''',
        "burst methods",
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
        raise SystemExit("usage: patch_autoshell_251.py [in.swf] [out.swf]")

    hold = ROOT / "runtime/out/FlashFishaoGame.hold.swf"
    src_swf = Path(args[0]) if len(args) >= 1 else (hold if hold.exists() else ROOT / "clients/2.5.1/FlashFishaoGame.swf")
    dst_swf = Path(args[1]) if len(args) >= 2 else ROOT / "runtime/out/FlashFishaoGame.hold_autoshell.2.5.1.swf"

    if not src_swf.exists():
        raise SystemExit(f"input SWF not found: {src_swf}")
    if not SOURCE.exists():
        raise SystemExit(f"source not found: {SOURCE}")

    ffdec = Path(os.environ.get("FFDEC", DEFAULT_FFDEC))
    if not ffdec.exists():
        raise SystemExit(f"ffdec-cli.jar not found: {ffdec} (set FFDEC)")

    patched = patch_source(SOURCE.read_text(encoding="utf-8"))

    tmp = Path(tempfile.mkdtemp(prefix="fishao_autoshell_251_"))
    try:
        import_dir = tmp / "import"
        target = import_dir / "com/ax3/fishao/locations/base/_4039c287ddb4ef46ab65ab0e.as"
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

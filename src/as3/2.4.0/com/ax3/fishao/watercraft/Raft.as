package com.ax3.fishao.watercraft
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Raft
   {
      
      public static const ON_THE_DOCK:int = 0;
      
      public static const SAILED:int = 1;
      
      public static const ON_THE_MIDDLE:int = 2;
      
      public static const BACK:int = 3;
      
      public static const UNLOADING:int = 4;
      
      private var _asset:Sprite;
      
      private var _state:int = 0;
      
      private var _rect:Rectangle;
      
      private var _dockPos:Point;
      
      private var _fishPos:Point;
      
      private var _prevPos:Point;
      
      private var _charOnBoard:Vector.<FieldChar> = new Vector.<FieldChar>();
      
      private var _tween:TweenCube;
      
      public var offsetX:Number = 0;
      
      public var offsetY:Number = 0;
      
      public function Raft(param1:Sprite)
      {
         super();
         this._asset = param1;
         this._asset.mouseEnabled = false;
         this._asset.x = int(this._asset.x);
         this._asset.y = int(this._asset.y);
         this._dockPos = new Point(this._asset.x,param1.y);
         this._fishPos = new Point(this._asset.x,1150);
         this._rect = new Rectangle(this._asset.x + 10,this._asset.y + 10,290,315);
      }
      
      public function get rectangle() : Rectangle
      {
         return this._rect;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this._state = param1;
         Cc.log("Raft.state = ",this._state);
         switch(this._state)
         {
            case ON_THE_MIDDLE:
               this._prevPos = new Point(this._asset.x,this._asset.y);
               this._asset.x = int(this._fishPos.x);
               this._asset.y = int(this._fishPos.y);
               _loc2_ = this._prevPos.x - this._fishPos.x;
               _loc3_ = this._prevPos.y - this._fishPos.y;
               this.movePassengers();
               break;
            case ON_THE_DOCK:
               this._asset.x = int(this._dockPos.x);
               this._asset.y = int(this._dockPos.y);
               this.movePassengers();
         }
      }
      
      public function sail(param1:int = 60, param2:int = 0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._state = SAILED;
         var _loc5_:int = param1;
         if(param2 > 0)
         {
            _loc5_ = param2;
            _loc3_ = (this._dockPos.x - this._fishPos.x) * (_loc5_ / param1);
            _loc4_ = (this._dockPos.y - this._fishPos.y) * (_loc5_ / param1);
            this._asset.x = int(this._fishPos.x + _loc3_);
            this._asset.y = int(this._fishPos.y + _loc4_);
            this.movePassengers();
         }
         FishaoSoundManager.playLoop(FishaoSoundManager.SFX_063_MOV_Raft_float);
         this._prevPos = new Point(this._asset.x,this._asset.y);
         Cc.logch("raft",".sail: timeOfSailSec=" + param1 + ", currentTime=" + param2 + ", sailTimeLeft=" + _loc5_);
         Cc.logch("raft",".sail from " + this._asset.y + "px to " + this._fishPos.y + "px (=" + Math.abs(this._fishPos.y - this._asset.y) + "px) with " + _loc5_ + " sec = " + Math.abs(this._fishPos.y - this._asset.y) / _loc5_ + "px/sec");
         this._tween = TweenCube.to(this._asset,_loc5_,{
            "y":this._fishPos.y,
            "x":this._fishPos.x
         },{
            "onComplete":this.onSailFinish,
            "onChange":this.onRaftMove
         });
      }
      
      private function movePassengers() : void
      {
         this.offsetX = int(this._asset.x - this._dockPos.x);
         this.offsetY = int(this._asset.y - this._dockPos.y);
      }
      
      private function onSailFinish() : void
      {
         this._state = ON_THE_MIDDLE;
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_063_MOV_Raft_float);
      }
      
      public function returnToDock(param1:int = 60, param2:int = 0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._state = BACK;
         var _loc5_:int = param1;
         if(param2 > 0)
         {
            _loc5_ = param2;
            _loc3_ = (this._dockPos.x - this._fishPos.x) * (_loc5_ / param1);
            _loc4_ = (this._dockPos.y - this._fishPos.y) * (_loc5_ / param1);
            this._asset.x = int(this._dockPos.x - _loc3_);
            this._asset.y = int(this._dockPos.y - _loc4_);
            this.movePassengers();
         }
         FishaoSoundManager.playLoop(FishaoSoundManager.SFX_063_MOV_Raft_float);
         this._prevPos = new Point(this._asset.x,this._asset.y);
         Cc.logch("raft",".toDock: timeOfSailSec=" + param1 + ", currentTime=" + param2 + ", sailTimeLeft=" + _loc5_);
         Cc.logch("raft",".toDock from " + this._asset.y + "px to " + this._dockPos.y + "px (=" + Math.abs(this._dockPos.y - this._asset.y) + "px) with " + _loc5_ + " sec = " + Math.abs(this._dockPos.y - this._asset.y) / _loc5_ + "px/sec");
         this._tween = TweenCube.to(this._asset,_loc5_,{
            "y":this._dockPos.y,
            "x":this._dockPos.x
         },{
            "onComplete":this.onReturnFinish,
            "onChange":this.onRaftMove
         });
      }
      
      private function onReturnFinish() : void
      {
         this._state = ON_THE_DOCK;
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_063_MOV_Raft_float);
      }
      
      private function onRaftMove() : void
      {
         var _loc1_:Number = this._prevPos.x - this._asset.x;
         var _loc2_:Number = this._prevPos.y - this._asset.y;
         this.movePassengers();
         this._prevPos = new Point(this._asset.x,this._asset.y);
      }
      
      public function addChar(param1:FieldChar, param2:Boolean = false) : void
      {
         if(this._charOnBoard.indexOf(param1) == -1)
         {
            this._charOnBoard.push(param1);
            param1.raft = this;
            if(!param1.onRaft)
            {
               param1.onRaft = true;
            }
         }
      }
      
      public function removeChar(param1:FieldChar) : void
      {
         param1.raft = null;
         var _loc2_:int = this._charOnBoard.indexOf(param1);
         if(_loc2_ > -1)
         {
            this._charOnBoard.splice(_loc2_,1);
            if(param1.onRaft)
            {
               param1.clearCommandQueue();
               param1.onRaft = false;
            }
         }
      }
      
      public function isOnBoard(param1:FieldChar) : Boolean
      {
         return this._charOnBoard.indexOf(param1) != -1;
      }
      
      public function destroy() : void
      {
         if(this._tween != null && this._tween.active)
         {
            this._tween.gotoEnd();
            this._tween.destroyTween();
            this._tween = null;
         }
      }
      
      public function get x() : Number
      {
         return this._asset.x + 10;
      }
      
      public function get y() : Number
      {
         return this._asset.y + 10;
      }
      
      public function isOnRaftAbsolute(param1:Number, param2:Number) : Boolean
      {
         return this._rect.contains(param1 - this.offsetX,param2 - this.offsetY);
      }
      
      public function get charOnBoard() : Vector.<FieldChar>
      {
         return this._charOnBoard;
      }
   }
}


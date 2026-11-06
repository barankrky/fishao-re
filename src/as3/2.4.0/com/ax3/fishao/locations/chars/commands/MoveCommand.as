package com.ax3.fishao.locations.chars.commands
{
   import com.ax3.fishao.locations.entries.FieldChar;
   import flash.utils.getTimer;
   
   public class MoveCommand implements ICharCommand
   {
      
      private static var _globalInstanceId:int = 0;
      
      public var x:int;
      
      public var y:int;
      
      public var r:int;
      
      private var fieldChar:FieldChar;
      
      private var createTimestampMs:int;
      
      private const MAX_MOVEMENT_TIMER_MS:int = 40000;
      
      private var _instanceId:int;
      
      private var _createTsMs:int = 0;
      
      private var _executionTsMs:int = 0;
      
      private var _username:String = "";
      
      public function MoveCommand(param1:FieldChar, param2:int, param3:int, param4:int)
      {
         super();
         this._createTsMs = getTimer();
         this._instanceId = _globalInstanceId++;
         this.fieldChar = param1;
         this.fieldChar.__lastModeCommand = this;
         if(param1 != null && param1.locationUser != null)
         {
            this._username = param1.locationUser.username;
         }
         this.x = param2;
         this.y = param3;
         this.r = param4;
         this.createTimestampMs = getTimer();
      }
      
      public function execute() : void
      {
         this._executionTsMs = getTimer();
         if(this.fieldChar != null)
         {
            this.fieldChar.hideRodAndShowChar();
            this.fieldChar.graphic.alpha = 1;
            this.fieldChar.moveByMouseClick(this.x,this.y,this.r);
         }
      }
      
      public function canReplace(param1:ICharCommand) : Boolean
      {
         return !(param1 is ForceMoveCommand) && !(param1 is MoveCommand && (param1 as MoveCommand).wasPathSearch());
      }
      
      public function isComplete() : Boolean
      {
         return this.fieldChar.isMove() == false || getTimer() - this.createTimestampMs > this.MAX_MOVEMENT_TIMER_MS;
      }
      
      public function toString() : String
      {
         return "MoveCommand(id:" + this._instanceId + ",x:" + this.x + ",y:" + this.y + ",r:" + this.r + ",was:" + this.wasPathSearch() + ",c_ms:" + this._createTsMs + ",e_ms:" + this._executionTsMs + ",u:" + this._username + ")";
      }
      
      public function destroy() : void
      {
         this.fieldChar = null;
      }
      
      public function wasPathSearch() : Boolean
      {
         return this.fieldChar.wasPathSearch();
      }
   }
}


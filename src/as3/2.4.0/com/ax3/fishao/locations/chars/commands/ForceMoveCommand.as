package com.ax3.fishao.locations.chars.commands
{
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.model.ExitFromRaftCommand;
   
   public class ForceMoveCommand implements ICharCommand
   {
      
      private var x:int;
      
      private var y:int;
      
      private var r:int = -1;
      
      private var fieldChar:FieldChar;
      
      private var _isComplete:Boolean = false;
      
      public function ForceMoveCommand(param1:FieldChar, param2:int, param3:int)
      {
         super();
         this.fieldChar = param1;
         this.x = param2;
         this.y = param3;
      }
      
      public function execute() : void
      {
         if(this.fieldChar != null)
         {
            this.fieldChar.onRaft = false;
            this.fieldChar.hideRodAndShowChar();
            this.fieldChar.graphic.alpha = 1;
            this.fieldChar.forceMoveTo(this.x,this.y,this.onArrive);
            this._isComplete = false;
         }
         else
         {
            this._isComplete = true;
         }
      }
      
      private function onArrive() : void
      {
         this._isComplete = true;
      }
      
      public function canReplace(param1:ICharCommand) : Boolean
      {
         return !(param1 is ForceMoveCommand) && !(param1 is ExitFromRaftCommand);
      }
      
      public function isComplete() : Boolean
      {
         return this._isComplete;
      }
      
      public function toString() : String
      {
         return "ForceMoveCommand(x:" + this.x + ",y:" + this.y + ")";
      }
      
      public function destroy() : void
      {
         this.fieldChar = null;
      }
   }
}


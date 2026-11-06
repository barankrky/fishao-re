package com.ax3.fishao.locations.chars.commands
{
   import com.ax3.fishao.locations.entries.FieldChar;
   import flash.utils.getTimer;
   
   public class ReelInFishingCommand implements ICharCommand
   {
      
      private var fieldChar:FieldChar;
      
      private var _createTsMs:int = 0;
      
      private var _executionTsMs:int = 0;
      
      private var _username:String = "";
      
      public function ReelInFishingCommand(param1:FieldChar)
      {
         super();
         this._createTsMs = getTimer();
         this.fieldChar = param1;
         if(param1 != null && param1.locationUser != null)
         {
            this._username = param1.locationUser.username;
         }
      }
      
      public function execute() : void
      {
         this._executionTsMs = getTimer();
         if(this.fieldChar != null)
         {
            this.fieldChar.reelIn();
         }
      }
      
      public function canReplace(param1:ICharCommand) : Boolean
      {
         return false;
      }
      
      public function isComplete() : Boolean
      {
         return true;
      }
      
      public function toString() : String
      {
         return "ReelInFishingCommand(u:" + this._username + ")";
      }
      
      public function destroy() : void
      {
         this.fieldChar = null;
      }
   }
}


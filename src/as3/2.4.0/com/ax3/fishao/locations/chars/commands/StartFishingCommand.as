package com.ax3.fishao.locations.chars.commands
{
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.junkbyte.console.Cc;
   import flash.utils.getTimer;
   
   public class StartFishingCommand implements ICharCommand
   {
      
      private var fieldChar:FieldChar;
      
      private var x:Number;
      
      private var y:Number;
      
      private var _createTsMs:int = 0;
      
      private var _executionTsMs:int = 0;
      
      private var _username:String = "";
      
      public function StartFishingCommand(param1:FieldChar, param2:Number, param3:Number)
      {
         super();
         this._createTsMs = getTimer();
         this.fieldChar = param1;
         if(param1 != null && param1.locationUser != null)
         {
            this._username = param1.locationUser.username;
         }
         this.x = param2;
         this.y = param3;
         param1.__lastStartFishingCommand = this;
      }
      
      public function execute() : void
      {
         this._executionTsMs = getTimer();
         if(this.fieldChar != null)
         {
            Cc.log("execute StartFishingCommand(" + this.toString() + ") for " + this.fieldChar.locationUser.username);
            this.fieldChar.showRodAndHideChar();
            this.fieldChar.throwIn(this.x,this.y,this.fieldChar.rodSfxVolume());
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
         return "StartFishingCommand(x:" + this.x + ",y:" + this.y + ",c_ms:" + this._createTsMs + ",e_ms:" + this._executionTsMs + ",u:" + this._username + ")";
      }
      
      public function destroy() : void
      {
         this.fieldChar = null;
      }
   }
}


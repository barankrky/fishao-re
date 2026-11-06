package com.ax3.fishao.locations.chars.commands
{
   import com.ax3.fishao.locations.entries.FieldChar;
   
   public class BiteFishingCommand implements ICharCommand
   {
      
      private var fieldChar:FieldChar;
      
      public function BiteFishingCommand(param1:FieldChar)
      {
         super();
         this.fieldChar = param1;
      }
      
      public function execute() : void
      {
         if(this.fieldChar != null)
         {
            this.fieldChar.bite();
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
         return "BiteFishingCommand()";
      }
      
      public function destroy() : void
      {
         this.fieldChar = null;
      }
   }
}


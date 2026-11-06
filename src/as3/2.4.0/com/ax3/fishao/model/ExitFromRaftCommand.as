package com.ax3.fishao.model
{
   import com.ax3.fishao.locations.chars.commands.ICharCommand;
   import com.ax3.fishao.locations.chars.commands.MoveCommand;
   import com.ax3.fishao.locations.entries.FieldChar;
   
   public class ExitFromRaftCommand implements ICharCommand
   {
      
      private var char:FieldChar;
      
      public function ExitFromRaftCommand(param1:FieldChar)
      {
         super();
         this.char = param1;
      }
      
      public function execute() : void
      {
         if(this.char != null)
         {
            this.char.onRaft = false;
         }
      }
      
      public function canReplace(param1:ICharCommand) : Boolean
      {
         return param1 is MoveCommand;
      }
      
      public function isComplete() : Boolean
      {
         return true;
      }
      
      public function toString() : String
      {
         return "ExitFromRaftCommand()";
      }
      
      public function destroy() : void
      {
         this.char = null;
      }
   }
}


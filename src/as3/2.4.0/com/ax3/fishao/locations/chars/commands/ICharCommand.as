package com.ax3.fishao.locations.chars.commands
{
   public interface ICharCommand
   {
      
      function execute() : void;
      
      function canReplace(param1:ICharCommand) : Boolean;
      
      function isComplete() : Boolean;
      
      function toString() : String;
      
      function destroy() : void;
   }
}


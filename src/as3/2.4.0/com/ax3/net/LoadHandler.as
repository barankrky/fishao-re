package com.ax3.net
{
   public class LoadHandler
   {
      
      public var executor:Function = null;
      
      public var executionChecker:Function = null;
      
      public var itemType:int = -1;
      
      public function LoadHandler(param1:Function = null, param2:Function = null, param3:int = -1)
      {
         super();
         this.executor = param1;
         this.executionChecker = param2;
         this.itemType = param3;
      }
   }
}


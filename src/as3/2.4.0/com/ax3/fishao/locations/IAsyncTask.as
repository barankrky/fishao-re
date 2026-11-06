package com.ax3.fishao.locations
{
   import com.ax3.utils.timer.IUpdate;
   import flash.display.DisplayObject;
   
   public interface IAsyncTask
   {
      
      function isComplete() : Boolean;
      
      function parseTick() : void;
      
      function getUpdateList() : Vector.<IUpdate>;
      
      function getDisplayObjectList() : Vector.<DisplayObject>;
   }
}


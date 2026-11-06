package com.ax3.events
{
   import flash.events.Event;
   
   public class GameResizeEvent extends Event
   {
      
      public static const RESIZE:String = "gameResize";
      
      public var width:int;
      
      public var height:int;
      
      public function GameResizeEvent(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(RESIZE,param3,param4);
         this.width = param1;
         this.height = param2;
      }
   }
}


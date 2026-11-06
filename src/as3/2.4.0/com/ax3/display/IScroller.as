package com.ax3.display
{
   import flash.events.IEventDispatcher;
   
   public interface IScroller extends IEventDispatcher
   {
      
      function set maximum(param1:Number) : void;
      
      function get maximum() : Number;
      
      function set minimum(param1:Number) : void;
      
      function set value(param1:Number) : void;
      
      function isHorizontal() : Boolean;
      
      function get value() : Number;
      
      function set pageCount(param1:int) : void;
      
      function set visible(param1:Boolean) : void;
   }
}


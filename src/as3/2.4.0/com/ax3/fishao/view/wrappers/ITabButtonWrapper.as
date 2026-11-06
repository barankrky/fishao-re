package com.ax3.fishao.view.wrappers
{
   import flash.display.Sprite;
   import flash.events.IEventDispatcher;
   
   public interface ITabButtonWrapper extends IEventDispatcher
   {
      
      function init(param1:String, param2:Sprite, param3:Sprite, param4:String) : void;
      
      function get name() : String;
      
      function set active(param1:Boolean) : void;
      
      function get active() : Boolean;
   }
}


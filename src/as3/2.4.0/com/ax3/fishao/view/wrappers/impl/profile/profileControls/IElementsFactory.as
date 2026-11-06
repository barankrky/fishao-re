package com.ax3.fishao.view.wrappers.impl.profile.profileControls
{
   import flash.display.DisplayObject;
   
   public interface IElementsFactory
   {
      
      function getElements(param1:Number, param2:Number) : Vector.<DisplayObject>;
      
      function get totalElements() : Number;
      
      function set elements(param1:Vector.<Object>) : void;
   }
}


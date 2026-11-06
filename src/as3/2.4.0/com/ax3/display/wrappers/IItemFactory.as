package com.ax3.display.wrappers
{
   import flash.display.DisplayObject;
   
   public interface IItemFactory extends IAssetWrapper
   {
      
      function createInstance(param1:Boolean = false) : DisplayObject;
   }
}


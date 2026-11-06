package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   
   public class FishaoOptButtonWrapper extends FishaoCheckboxWrapper implements IAssetWrapper
   {
      
      public function FishaoOptButtonWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         this.name = param1.name + "_wrapper";
         super.process(param1);
      }
      
      public function get asset() : DisplayObject
      {
         return _child;
      }
   }
}


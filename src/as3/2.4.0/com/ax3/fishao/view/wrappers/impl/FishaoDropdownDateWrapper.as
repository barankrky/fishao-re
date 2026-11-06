package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.impl.StaticClassFactoryWrapper;
   import flash.display.DisplayObject;
   
   public class FishaoDropdownDateWrapper extends FishaoDropdownBaseWrapper
   {
      
      public function FishaoDropdownDateWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         setItemFactory(new StaticClassFactoryWrapper(FishaoDropdownListDateItem));
      }
   }
}


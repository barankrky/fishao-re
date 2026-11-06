package com.ax3.fishao.view.wrappers.impl
{
   public class HScrollWrapper extends ScrollWrapper
   {
      
      public function HScrollWrapper()
      {
         var _loc1_:ScrollWrapperConfig = new ScrollWrapperConfig();
         _loc1_.direction = ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION;
         _loc1_.scaleFieldName = "scaleX";
         super(_loc1_);
      }
   }
}


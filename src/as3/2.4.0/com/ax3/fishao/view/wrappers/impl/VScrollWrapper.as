package com.ax3.fishao.view.wrappers.impl
{
   public class VScrollWrapper extends ScrollWrapper
   {
      
      public function VScrollWrapper()
      {
         var _loc1_:ScrollWrapperConfig = new ScrollWrapperConfig();
         _loc1_.direction = ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION;
         _loc1_.scaleFieldName = "scaleY";
         super(_loc1_);
      }
   }
}


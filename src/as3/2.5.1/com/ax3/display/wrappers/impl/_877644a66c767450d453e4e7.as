package com.ax3.display.wrappers.impl
{
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   
   public class _877644a66c767450d453e4e7 extends FrameBaseButton
   {
      
      public function _877644a66c767450d453e4e7(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_051_UI_Open_menu);
      }
   }
}


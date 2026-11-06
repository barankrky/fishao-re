package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   
   public class _5d5813f1007961bd553fa857 extends FrameBaseButton
   {
      
      public function _5d5813f1007961bd553fa857(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_052_UI_Close_menu);
      }
   }
}


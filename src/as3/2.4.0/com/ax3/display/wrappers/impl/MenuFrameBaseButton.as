package com.ax3.display.wrappers.impl
{
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   
   public class MenuFrameBaseButton extends FrameBaseButton
   {
      
      public function MenuFrameBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
      }
   }
}


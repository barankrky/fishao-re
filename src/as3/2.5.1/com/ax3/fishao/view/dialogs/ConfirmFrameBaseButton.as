package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.buttons.FrameBaseButton;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers.GlobalSoundHandlers;
   
   public class ConfirmFrameBaseButton extends FrameBaseButton
   {
      
      public function ConfirmFrameBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         GlobalSoundHandlers.globalConfirmClickCallback();
      }
   }
}


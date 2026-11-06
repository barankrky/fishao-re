package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers.GlobalSoundHandlers;
   import com.ax3.fishao.view.buttons.FishaoBaseButton;
   
   public class CloseMenuFishaoBaseButton extends FishaoBaseButton
   {
      
      public function CloseMenuFishaoBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         GlobalSoundHandlers.globalConfirmClickCallback();
      }
   }
}


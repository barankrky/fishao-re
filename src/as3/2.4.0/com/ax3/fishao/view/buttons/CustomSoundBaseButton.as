package com.ax3.fishao.view.buttons
{
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.sound.SoundFile;
   
   public class CustomSoundBaseButton extends FishaoBaseButton
   {
      
      private var _customClickSound:SoundFile;
      
      private var _customOverSound:SoundFile;
      
      public function CustomSoundBaseButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         if(this._customClickSound != null)
         {
            FishaoSoundManager.play(this._customClickSound);
         }
         else
         {
            super.playClickSound();
         }
      }
      
      override protected function playOverSound() : void
      {
         if(this._customOverSound != null)
         {
            FishaoSoundManager.play(this._customOverSound);
         }
         else
         {
            super.playOverSound();
         }
      }
      
      public function set customClickSound(param1:SoundFile) : void
      {
         this._customClickSound = param1;
      }
      
      public function set customOverSound(param1:SoundFile) : void
      {
         this._customOverSound = param1;
      }
   }
}


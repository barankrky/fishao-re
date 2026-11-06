package com.ax3.fishao.view.wrappers
{
   import com.ax3.fishao.view.buttons.CustomSoundBaseButton;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.utils.sound.SoundFile;
   
   public class CustomSoundButtonWrapper extends FishaoButtonWrapper
   {
      
      public function CustomSoundButtonWrapper()
      {
         super();
         _buttonCls = CustomSoundBaseButton;
      }
      
      public function set customClickSound(param1:SoundFile) : void
      {
         _button.customClickSound = param1;
      }
      
      public function set customOverSound(param1:SoundFile) : void
      {
         _button.customOverSound = param1;
      }
   }
}


package com.ax3.fishao.tutorial.views.gui
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class _b6040eb47ec5aa7940afcc56 extends _8a5b0c698d40931e860c0aeb
   {
      
      private var _1adadebabe03a11d04289b80:_283b592e1b144e604db439f2;
      
      public function _b6040eb47ec5aa7940afcc56(param1:_67f8febc099eaa05c48aa41e)
      {
         super(param1);
         this._1adadebabe03a11d04289b80 = GameSwf.instance.managerTutorial;
         var _loc2_:_9b5482b3978b7abe1547abb8 = this._1adadebabe03a11d04289b80.tutorialInProgress;
         if(_loc2_ != null && _loc2_.needHideGui)
         {
            this.visible = false;
         }
      }
      
      override protected function _f023d699374bc80f9da141e8(param1:KeyboardEvent) : void
      {
         var _loc2_:int = -35905124 ^ -743468663 ^ 0x18C35001 ^ -860172985;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2145861086 ^ -1632138977 ^ -1486455501 ^ 0x43C31B5F))
            {
               case 0:
                  super._f023d699374bc80f9da141e8(param1);
                  return;
               case 1:
                  if(param1.keyCode != Keyboard.ESCAPE)
                  {
                     _loc2_ = -1628097639 ^ -828980336 ^ 0x38DC3E3F ^ -1833573532;
                  }
                  else
                  {
                     _loc2_ = -1745028544 ^ 0x377ABA9B ^ -1208633240 ^ -310782490;
                  }
                  break;
               case 2:
                  if(this._1adadebabe03a11d04289b80.isTutorialCommonComplete)
                  {
                     _loc2_ = 0x498C09D0 ^ -1669721562 ^ 0x258E2F15 ^ 0x0A7219B2;
                  }
                  else
                  {
                     _loc2_ = 0x616778D9 ^ -1409885920 ^ -786713228 ^ -511690275;
                  }
                  break;
               case 3:
                  super._f023d699374bc80f9da141e8(param1);
                  _loc2_ = -909778940 ^ -1633304241 ^ 0x732B45CA ^ -566146604;
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function sendMessage(param1:KeyboardEvent) : void
      {
         if(this._1adadebabe03a11d04289b80.isTutorialCommonComplete)
         {
            super.sendMessage(param1);
            return;
         }
         var _loc2_:String = mainMenu.chatPanel._3664746aeec4641375f1d491();
         if(_loc2_.length != (-1468606754 ^ 0x1D91F501 ^ 0x6484C7F6 ^ -781982679))
         {
            _c2bcb9a0689418fd7282399c(param1);
            if(mainMenu.chatPanel.canSendChatMessage)
            {
               _dfa25706e58a240c1e33e5c6.chatFscExtension._6fbcd38e2f77dae9897d47cf(_loc2_);
               this._1adadebabe03a11d04289b80.tutorialInProgress._83b8cd2c4cd21dac01865d35();
            }
         }
         else
         {
            mainMenu._0a536442826a14fe4d5ef54b();
         }
      }
   }
}


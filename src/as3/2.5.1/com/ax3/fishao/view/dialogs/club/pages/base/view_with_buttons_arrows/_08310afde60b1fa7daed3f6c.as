package com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class _08310afde60b1fa7daed3f6c extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _cdba01fe737da52fcf232941:FrameButtonWrapper;
      
      private var _95fd3ec55f90321cd19c4dea:FrameButtonWrapper;
      
      private var _507250168dddf302b5faa9c8:int;
      
      private var _0be6425deb6596d6ad09671d:int;
      
      public function _08310afde60b1fa7daed3f6c(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get pageCurrent() : int
      {
         return this._507250168dddf302b5faa9c8;
      }
      
      public function set pageCurrent(param1:int) : void
      {
         var _loc2_:int = 0x135BE6CF ^ 0x44AC1AA3 ^ -2146659659 ^ -1160170242;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x44110CA0 ^ 0x77DFACFA ^ -1728486519 ^ -971662859))
            {
               case 0:
                  return;
               case 1:
                  if(this._507250168dddf302b5faa9c8 == param1)
                  {
                     _loc2_ = 0x42C9A809 ^ 0x14F14235 ^ 0x7D6E0177 ^ 0x4674B16D;
                  }
                  else
                  {
                     _loc2_ = -1464749322 ^ 0x10E83781 ^ -1334402027 ^ 0x650D7B46;
                  }
                  break;
               case 2:
                  this._507250168dddf302b5faa9c8 = param1;
                  this._f27331cdff6890df855f43b5();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get pagesTotal() : int
      {
         return this._0be6425deb6596d6ad09671d;
      }
      
      public function set pagesTotal(param1:int) : void
      {
         var _loc2_:int = -1785250941 ^ -1449414060 ^ 0x63EAF769 ^ 0x04F13FFF;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6D5D74DB ^ -187001743 ^ 0x5AF5A35B ^ -1738210638))
            {
               case 0:
                  this._507250168dddf302b5faa9c8 = Math.max(-617478374 ^ 0x666A3F07 ^ -277362096 ^ 0x522FF24D,this._0be6425deb6596d6ad09671d - 1);
                  controller._4f254116765eb1a39d6712be(this._cdba01fe737da52fcf232941,null);
                  _loc2_ = -1373314196 ^ 0x1696AD4F ^ -1124749278 ^ 0x5F50BF41;
                  break;
               case 1:
                  this._0be6425deb6596d6ad09671d = param1;
                  if(this._0be6425deb6596d6ad09671d <= this._507250168dddf302b5faa9c8)
                  {
                     _loc2_ = 0x03679EF8 ^ 0x2C2FE683 ^ -646772183 ^ -1389612271;
                  }
                  else
                  {
                     _loc2_ = -139377505 ^ 0x544C58C9 ^ -923433989 ^ 0x301FDEED;
                  }
                  break;
               case 2:
                  if(this._0be6425deb6596d6ad09671d == param1)
                  {
                     _loc2_ = -432083925 ^ 0x0CB04F56 ^ -690840042 ^ 0x674B7C2C;
                  }
                  else
                  {
                     _loc2_ = 0x0D33EB6C ^ -878117035 ^ 0x6129BA69 ^ -56234222;
                  }
                  break;
               case 3:
                  this._f27331cdff6890df855f43b5();
                  return;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get buttonLeft() : FrameButtonWrapper
      {
         return this._cdba01fe737da52fcf232941;
      }
      
      public function get buttonRight() : FrameButtonWrapper
      {
         return this._95fd3ec55f90321cd19c4dea;
      }
      
      private function _9b44716c00b4f4cc64628bd4(param1:MouseEvent) : void
      {
         --this.pageCurrent;
         controller._4f254116765eb1a39d6712be(this._cdba01fe737da52fcf232941,param1);
      }
      
      private function _6cd41490175962db521d5549(param1:MouseEvent) : void
      {
         ++this.pageCurrent;
         controller._4f254116765eb1a39d6712be(this._95fd3ec55f90321cd19c4dea,param1);
      }
      
      protected function _f27331cdff6890df855f43b5() : void
      {
         this._da52f166130c8696fb839fb2();
      }
      
      private function init() : void
      {
         this._cdba01fe737da52fcf232941 = _092050566a3adcf2725382ab(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劭刴劓刜制勬刧劌剹剳动勤刭勴剧列刪劔削劌劅刌勣勠刷劳制勦","刡劋動剏劝勳刔刓删劒剃勣勓加剌刳"),null,this._9b44716c00b4f4cc64628bd4);
         this._95fd3ec55f90321cd19c4dea = _092050566a3adcf2725382ab(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揨挗捩捡排措挵挢挅揭揊揂掃揃掩挍揣挭捡捶揀捪掚捿揼挥掶捑挘揵","捏握挫揞推揟挈揨揻揥掬挀掻捎授挄"),null,this._6cd41490175962db521d5549);
         this._507250168dddf302b5faa9c8 = -1521693002 ^ 0x6A707035 ^ -337940090 ^ -619171590;
         this._da52f166130c8696fb839fb2();
      }
      
      private function _da52f166130c8696fb839fb2() : void
      {
         this._cdba01fe737da52fcf232941.enabled = this._507250168dddf302b5faa9c8 > (-999277972 ^ -1236063022 ^ -835050789 ^ -1139198875);
         this._95fd3ec55f90321cd19c4dea.enabled = this._507250168dddf302b5faa9c8 < this._0be6425deb6596d6ad09671d - 1;
      }
   }
}


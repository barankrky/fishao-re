package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._08310afde60b1fa7daed3f6c;
   import flash.display.DisplayObjectContainer;
   
   public class _23c4b1608711d33d72423928 extends _08310afde60b1fa7daed3f6c
   {
      
      private var _9deb12bee32151b461498247:_1c73633a6a4f4f6050258c2a;
      
      public function _23c4b1608711d33d72423928(param1:_e2bbbb1ef110bb0aa28b913f, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      override protected function _f27331cdff6890df855f43b5() : void
      {
         var _loc1_:int = -317805498 ^ -384522433 ^ 0x15975675 ^ 0x6614017F;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4BF50B16 ^ 0x5F232E80 ^ 0x56117B68 ^ 0x355E028D))
            {
               case 0:
                  if(this.pageCurrent != (0x1A928631 ^ 0x5DF243FF ^ 0x49CE7605 ^ -246330316))
                  {
                     _loc1_ = -1386962209 ^ 0x7B1E3AE6 ^ 0x03E371FA ^ -1573866063;
                  }
                  else
                  {
                     _loc1_ = -772081466 ^ -1154102069 ^ -453843945 ^ -106656661;
                  }
                  break;
               case 1:
                  this._9deb12bee32151b461498247.emblemID = this.pageCurrent;
                  _loc1_ = 0x61C77D06 ^ 0x2B3198A8 ^ -1591276810 ^ -1672957143;
                  break;
               case 2:
                  super._f27331cdff6890df855f43b5();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._9deb12bee32151b461498247 = new _1c73633a6a4f4f6050258c2a(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掞揀掳提挦掷掼挋捈揤掝揆掼掀挶挕捌揆","捚挍揊揜捉捁掕揀掸揂揣挝振挖挼捀")));
      }
   }
}


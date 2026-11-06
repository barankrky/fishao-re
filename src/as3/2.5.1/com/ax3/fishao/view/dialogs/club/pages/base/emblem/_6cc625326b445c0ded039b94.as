package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import flash.display.DisplayObjectContainer;
   
   public class _6cc625326b445c0ded039b94 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _e47e17e0e716ca2eddd7c3b3:_23c4b1608711d33d72423928;
      
      public function _6cc625326b445c0ded039b94(param1:DisplayObjectContainer)
      {
         this._e47e17e0e716ca2eddd7c3b3 = new _23c4b1608711d33d72423928(this,param1);
         super(this._e47e17e0e716ca2eddd7c3b3);
         this._e47e17e0e716ca2eddd7c3b3.pagesTotal = ConstantsBase.CLUB_EMBLEMS_COUNT;
         this._e47e17e0e716ca2eddd7c3b3.pageCurrent = 0x5BD7CA37 ^ -1019956175 ^ 0x03C7A929 ^ -1692084433;
      }
      
      public function get emblem() : int
      {
         return this._e47e17e0e716ca2eddd7c3b3.pageCurrent;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._e47e17e0e716ca2eddd7c3b3.pageCurrent = param1;
      }
   }
}


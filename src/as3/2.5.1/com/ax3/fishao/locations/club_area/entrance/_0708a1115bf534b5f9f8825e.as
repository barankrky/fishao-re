package com.ax3.fishao.locations.club_area.entrance
{
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   
   public class _0708a1115bf534b5f9f8825e extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _f74cbeafdceba059911b50a6:_087d99e8fd5796934edd182c = new _087d99e8fd5796934edd182c(this);
      
      public function _0708a1115bf534b5f9f8825e()
      {
         super(this._f74cbeafdceba059911b50a6);
         this.init();
      }
      
      public function get viewEntrance() : _087d99e8fd5796934edd182c
      {
         return this._f74cbeafdceba059911b50a6;
      }
      
      private function init() : void
      {
         this._f74cbeafdceba059911b50a6.isGuest = app.user.isGuest;
      }
   }
}


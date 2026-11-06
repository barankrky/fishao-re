package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.club.model._ece4f37c607dd0c90d333eca;
   import com.ax3.fishao.view.wrappers.impl._45050138a2c5c7b0f497e4b4;
   
   public class _d785bc68c4c97e61dc7e51fc extends _45050138a2c5c7b0f497e4b4
   {
      
      private var _77acee551f17fa3b9c320cd0:String;
      
      public function _d785bc68c4c97e61dc7e51fc()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._77acee551f17fa3b9c320cd0;
      }
      
      public function set type(param1:String) : void
      {
         this._77acee551f17fa3b9c320cd0 = param1;
         _label.text = _c2ad9d37d7be0097d6d2e977.get(this._77acee551f17fa3b9c320cd0);
         _icon.gotoAndStop(_ece4f37c607dd0c90d333eca._ea79d0046941b11b32f2961c(this._77acee551f17fa3b9c320cd0));
      }
   }
}


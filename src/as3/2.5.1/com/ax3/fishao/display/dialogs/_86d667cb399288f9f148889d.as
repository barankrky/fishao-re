package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.vo._b37fd2bf0fee2c3dcbb24252;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   
   public class _86d667cb399288f9f148889d extends _0d3ce2ad35f3477bc8fda6f0
   {
      
      private var _8fe7e30b00a363c872e79c40:_b37fd2bf0fee2c3dcbb24252;
      
      public function _86d667cb399288f9f148889d()
      {
         super();
      }
      
      override public function show() : void
      {
         this._5c8273e7be35c9e125eefcd1();
      }
      
      override protected function _74ef5fb7a53c3d36ba880cd8(param1:_b37fd2bf0fee2c3dcbb24252) : void
      {
         close();
         GameSwf.instance._0bcd23177a136eba1c7dbe4f(param1.friendName);
         this._8fe7e30b00a363c872e79c40 = param1;
      }
      
      private function _5c8273e7be35c9e125eefcd1() : void
      {
         _dfa25706e58a240c1e33e5c6.friendsHouseFscExtension._6c7381c6193f1c6f849e48ed(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this.onUpdate));
      }
      
      private function onUpdate(param1:Object) : void
      {
         var _loc2_:Vector.<_b37fd2bf0fee2c3dcbb24252> = null;
         var _loc3_:Object = null;
         var _loc4_:Array = JSON.parse(param1.data) as Array;
         _loc2_ = new Vector.<_b37fd2bf0fee2c3dcbb24252>();
         for each(_loc3_ in _loc4_)
         {
            _loc2_.push(new _b37fd2bf0fee2c3dcbb24252(_loc3_.login,_loc3_.housePoints,_loc3_.online));
         }
         _loc2_.sort(_b37fd2bf0fee2c3dcbb24252._31249d24d327d467b3b29cd3);
         items = _loc2_;
         _filteredItems = items.concat();
         super.show();
      }
   }
}


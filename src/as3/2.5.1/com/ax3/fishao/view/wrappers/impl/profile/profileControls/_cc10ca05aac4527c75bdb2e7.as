package com.ax3.fishao.view.wrappers.impl.profile.profileControls
{
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController.*;
   import flash.display.DisplayObject;
   
   public class _cc10ca05aac4527c75bdb2e7 implements _acd96fcacdf8779b1cdbd5c3
   {
      
      private var _1f4aff9573a3498e1571cdac:_b6959442d774100015b69ffa;
      
      private var _9d199df9a9487014a87aecb5:Vector.<Object>;
      
      public function _cc10ca05aac4527c75bdb2e7(param1:_b6959442d774100015b69ffa)
      {
         super();
         this._1f4aff9573a3498e1571cdac = param1;
         this.elements = new Vector.<Object>();
      }
      
      public function set elements(param1:Vector.<Object>) : void
      {
         this._9d199df9a9487014a87aecb5 = param1;
      }
      
      public function _0b7ab4d6da300a03653ea672(param1:Number, param2:Number) : Vector.<DisplayObject>
      {
         var _loc3_:_8e0cf6a61ed6893034f3074e = null;
         var _loc4_:Number = param1 + param2;
         var _loc5_:Vector.<DisplayObject> = new Vector.<DisplayObject>(-864348574 ^ -232871269 ^ 0x7811D9FB ^ 0x46746502);
         if(param1 < (0x5F65E74D ^ -800430539 ^ -1319284695 ^ 0x3E72D151) || param2 < (-290856947 ^ 0x4B90CDBD ^ -82909859 ^ 0x5E37C8ED))
         {
            return _loc5_;
         }
         var _loc6_:Number = param1;
         while(_loc6_ < this._9d199df9a9487014a87aecb5.length && _loc6_ < _loc4_)
         {
            _loc3_ = _8e0cf6a61ed6893034f3074e(this._1f4aff9573a3498e1571cdac._a54f7898880d608c7e1dc342());
            _loc3_.elementData = this._9d199df9a9487014a87aecb5[_loc6_];
            _loc5_.push(_loc3_);
            _loc6_++;
         }
         return _loc5_;
      }
      
      public function get totalElements() : Number
      {
         return this._9d199df9a9487014a87aecb5.length;
      }
   }
}


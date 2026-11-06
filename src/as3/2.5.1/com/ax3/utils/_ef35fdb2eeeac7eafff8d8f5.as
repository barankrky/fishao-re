package com.ax3.utils
{
   public class _ef35fdb2eeeac7eafff8d8f5
   {
      
      private var _5163d9844093aaa854cc8731:Array;
      
      public function _ef35fdb2eeeac7eafff8d8f5()
      {
         super();
         this._5163d9844093aaa854cc8731 = [];
      }
      
      public function destroy() : void
      {
         this._5163d9844093aaa854cc8731 = null;
      }
      
      public function _b04233d246f7aaf0deec034f(... rest) : void
      {
         this._85a5cdd74863be6964837388(rest);
         this._77e53b82e0fdbd425cc16c9f();
      }
      
      private function _77e53b82e0fdbd425cc16c9f() : void
      {
         this._5163d9844093aaa854cc8731 = [];
      }
      
      public function dispatch(param1:Object, ... rest) : void
      {
         this._85a5cdd74863be6964837388(rest);
      }
      
      private function _85a5cdd74863be6964837388(param1:Array) : void
      {
         var _loc2_:_0ce7a4d99e17666ff0e19ce6 = null;
         for each(_loc2_ in this._5163d9844093aaa854cc8731)
         {
            _loc2_._cd888ce627e13536f5c57313(this,param1);
         }
      }
      
      public function add(param1:Function, ... rest) : void
      {
         this._0c63049141745456ec659cf5(param1,rest);
      }
      
      public function _a3f3ddf7847bc352ea92e04f(param1:Function) : Boolean
      {
         return this._5163d9844093aaa854cc8731.indexOf(param1) != (-1155147669 ^ 0x3351B9E3 ^ 0x5DC82604 ^ 0x2A43B873);
      }
      
      public function _0c63049141745456ec659cf5(param1:Function, param2:Array) : void
      {
         var _loc3_:_0ce7a4d99e17666ff0e19ce6 = new _0ce7a4d99e17666ff0e19ce6(param1);
         _loc3_.args = param2;
         this._5163d9844093aaa854cc8731.push(_loc3_);
      }
      
      public function _21b2a6c68fe394cdfa1577b4(... rest) : void
      {
         this._a5c328a9b9f25a002d3c0a15(rest);
      }
      
      private function _a5c328a9b9f25a002d3c0a15(param1:Array) : void
      {
         var _loc2_:_0ce7a4d99e17666ff0e19ce6 = this._5163d9844093aaa854cc8731.shift();
         if(_loc2_ != null)
         {
            _loc2_._cd888ce627e13536f5c57313(this,param1);
         }
      }
      
      public function get length() : Number
      {
         return this._5163d9844093aaa854cc8731.length;
      }
   }
}


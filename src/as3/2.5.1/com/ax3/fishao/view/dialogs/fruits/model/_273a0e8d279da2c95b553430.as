package com.ax3.fishao.view.dialogs.fruits.model
{
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   
   public class _273a0e8d279da2c95b553430
   {
      
      private var _43f70a51b779cc3b9583ab78:int;
      
      private var _ff9a12f4dc0ca79a75c92980:int;
      
      private var _b8293be13bd1d2dff50f552d:String;
      
      public function _273a0e8d279da2c95b553430(param1:int, param2:int)
      {
         super();
         this._43f70a51b779cc3b9583ab78 = param1;
         this._ff9a12f4dc0ca79a75c92980 = param2;
         this.init();
      }
      
      public function get id() : int
      {
         return this._43f70a51b779cc3b9583ab78;
      }
      
      public function get imageUrl() : String
      {
         return this._b8293be13bd1d2dff50f552d;
      }
      
      public function get amount() : int
      {
         return this._ff9a12f4dc0ca79a75c92980;
      }
      
      public function set amount(param1:int) : void
      {
         this._ff9a12f4dc0ca79a75c92980 = param1;
      }
      
      private function init() : void
      {
         this._b8293be13bd1d2dff50f552d = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.FRUIT.name,this._43f70a51b779cc3b9583ab78));
      }
   }
}


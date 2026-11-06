package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.fishao.model._b6623dcbe6cf97cbdc7c37e5;
   import com.ax3.fishao.model._c0d0e24e1ed8eae578a7b0b2;
   import flash.events.Event;
   
   public class _e3d16e44e787d36bd0c38e74
   {
      
      private var _af6144d6418211827e9913b0:_b6623dcbe6cf97cbdc7c37e5;
      
      private var _be839e414030b5e7b7f89208:String;
      
      private var _e9ab1d8a375ddd23894e917a:_4a9667f6b725c3d41c719647;
      
      public function _e3d16e44e787d36bd0c38e74(param1:_b6623dcbe6cf97cbdc7c37e5, param2:String)
      {
         super();
         this._af6144d6418211827e9913b0 = param1;
         this._be839e414030b5e7b7f89208 = param2;
      }
      
      public function config(param1:_4a9667f6b725c3d41c719647) : void
      {
         this._e9ab1d8a375ddd23894e917a = param1;
         this._e9ab1d8a375ddd23894e917a.init();
         this._e9ab1d8a375ddd23894e917a.addEventListener(Event.CHANGE,this._606f4b4f1035a512dae59c2a);
         var _loc2_:_c0d0e24e1ed8eae578a7b0b2 = this._af6144d6418211827e9913b0._b31895c8df36744f6beebecb(this._be839e414030b5e7b7f89208);
         if(_loc2_ != null)
         {
            this._e9ab1d8a375ddd23894e917a.text = _loc2_.name;
         }
         this._e9ab1d8a375ddd23894e917a.create(this._af6144d6418211827e9913b0.forDropdown);
      }
      
      private function _606f4b4f1035a512dae59c2a(param1:Event) : void
      {
         this._be839e414030b5e7b7f89208 = this._af6144d6418211827e9913b0._c58f345b0040e6bf918d0465(this._e9ab1d8a375ddd23894e917a.displayValue).id;
      }
      
      public function get currentCountryID() : String
      {
         return this._be839e414030b5e7b7f89208;
      }
      
      public function _6ba0ebcd022238458430b820(param1:Boolean) : void
      {
         var _loc2_:int = -105382988 ^ 0x7090AE05 ^ -575947626 ^ 0x067C13FE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2019646322 ^ 0x318C7789 ^ 0x686D3187 ^ -1936779176))
            {
               case 0:
                  this._e9ab1d8a375ddd23894e917a.disable();
                  _loc2_ = -1371015528 ^ -76901492 ^ -749192866 ^ -729438575;
                  break;
               case 1:
                  if(param1)
                  {
                     _loc2_ = -897554412 ^ 0x018F728B ^ -996407877 ^ 0x5D63E5FE;
                  }
                  else
                  {
                     _loc2_ = 0x6B191800 ^ -1752695940 ^ -1066288574 ^ 0x6E1FA3E6;
                  }
                  break;
               case 2:
                  this._e9ab1d8a375ddd23894e917a.enable();
                  _loc2_ = -1538546969 ^ 0x1A01DA3A ^ 0x6718DA8A ^ -1952294772;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


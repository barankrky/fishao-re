package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.model.types._102f42750557c8e6e6e5eeda;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _9cff77d5f188667f75b09b59
   {
      
      public var lang:String;
      
      public var username:String;
      
      public var timeLeft:String;
      
      public var status:_102f42750557c8e6e6e5eeda;
      
      public var banType:_3e150da9e23ba0916ccbf8e9;
      
      public var timeLeftSec:int;
      
      public function _9cff77d5f188667f75b09b59()
      {
         super();
      }
      
      public function _aa26310566acafc06106a99c(param1:Object) : void
      {
         this.username = param1.login;
         this.lang = param1.lang;
         this.banType = _3e150da9e23ba0916ccbf8e9._4f0abf31624ad8d39f1e1bfd(param1.banType);
         this.timeLeftSec = param1.timeLeftSec;
         this.timeLeft = _c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(this.timeLeftSec);
      }
   }
}


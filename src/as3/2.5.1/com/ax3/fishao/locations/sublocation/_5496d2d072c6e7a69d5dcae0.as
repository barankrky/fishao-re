package com.ax3.fishao.locations.sublocation
{
   import com.ax3.fishao.locations._c664ae58f019f215539f81c5;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import protocol.sr.EnterSublocationSuccessResp;
   
   public class _5496d2d072c6e7a69d5dcae0 extends _4039c287ddb4ef46ab65ab0e
   {
      
      public function _5496d2d072c6e7a69d5dcae0(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function get type() : String
      {
         return _c664ae58f019f215539f81c5.ELT_SUBLOCATION;
      }
      
      public function _ff7e8af48da5cd0dc61f3b71(param1:EnterSublocationSuccessResp) : void
      {
      }
      
      override public function get weather() : _da93b7e4b1cf62dcb698e0bd
      {
         return _da93b7e4b1cf62dcb698e0bd.SUNNY;
      }
      
      override public function get absoluteId() : int
      {
         return _id + (0x0C67E834 ^ 0x2385CF4D ^ 0x7D8FEFA3 ^ 0x526DC8BE);
      }
      
      private function init() : void
      {
         isSublocation = true;
         _dayCycleEnabled = false;
      }
   }
}


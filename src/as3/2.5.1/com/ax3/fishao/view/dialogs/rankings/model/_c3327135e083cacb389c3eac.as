package com.ax3.fishao.view.dialogs.rankings.model
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _c3327135e083cacb389c3eac
   {
      
      private var _6759fa7a14444d331a02a804:Number;
      
      private var _d734a6f20e301a86508b176d:String;
      
      private var _b6446ff7e0a9cfa7e30ab1de:String;
      
      private var _cdf89234ad8bfefb74de1d1a:int;
      
      private var _31eb3a0dcce0b75ed5508615:Boolean;
      
      private var _3e4d3ce154c4d7d11a4b8870:int;
      
      public function _c3327135e083cacb389c3eac(param1:int)
      {
         super();
         this._3e4d3ce154c4d7d11a4b8870 = param1;
      }
      
      public static function _19732dd0d7063a3c949aeaa3(param1:_c3327135e083cacb389c3eac, param2:_c3327135e083cacb389c3eac) : int
      {
         var _loc3_:int = -1348356101 ^ -812442786 ^ 0x56DFEA85 ^ 0x36ED4620;
         var _loc4_:Number = param1._6759fa7a14444d331a02a804;
         var _loc5_:Number = param2._6759fa7a14444d331a02a804;
         if(_loc4_ < _loc5_)
         {
            _loc3_ = -340711029 ^ 0x5735B608 ^ -904465933 ^ -1989308017;
         }
         else if(_loc4_ > _loc5_)
         {
            _loc3_ = 0x6A3CC7EA ^ 0x45FF9218 ^ 0x06627F28 ^ 0x29A12ADB;
         }
         return _loc3_;
      }
      
      public function get position() : Number
      {
         return this._6759fa7a14444d331a02a804;
      }
      
      public function get login() : String
      {
         return this._d734a6f20e301a86508b176d;
      }
      
      public function get score() : String
      {
         return this._b6446ff7e0a9cfa7e30ab1de;
      }
      
      public function get select() : Boolean
      {
         return this._31eb3a0dcce0b75ed5508615;
      }
      
      public function get type() : int
      {
         return this._3e4d3ce154c4d7d11a4b8870;
      }
      
      public function deserialize(param1:Object) : void
      {
         var _loc2_:int = -741921956 ^ 0x4EF769C4 ^ -1984326332 ^ -1691497545;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0CD21DC4 ^ 0x7F03B8E2 ^ -1652043500 ^ 0x61F2685B))
            {
               case 0:
                  return;
               case 1:
                  this._b6446ff7e0a9cfa7e30ab1de = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._cdf89234ad8bfefb74de1d1a);
                  _loc2_ = 0x16121863 ^ 0x5FC790F6 ^ 0x3A14EBE0 ^ -60457188;
                  break;
               case 2:
                  this._6759fa7a14444d331a02a804 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၝၠႈဢႏဨၪီ჆ႱჂဂზၩၟღဎ჆ႝၶკဗჽၠ","ჲპ။Ⴆ႔ဋွჭ၇ჃႊဈცၐჷჀ"));
                  this._6759fa7a14444d331a02a804 += 0x1A798B75 ^ -1660294393 ^ 0x548A981F ^ -738527124;
                  this._d734a6f20e301a86508b176d = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ဴြჲႼ။უၣ္Ⴈ၎ႨნံႺფႆေ","ၼსဂာ჻ၼွჿဳႴიყႭ႖ၵႩ"));
                  this._cdf89234ad8bfefb74de1d1a = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဿကႢႈჁဖჟဃဉၜ჏ლႃဳჴၟ၅ႎ","ဥတნ႕ဝ႗၇၀၌ၲ჻ၟေჭ္သ"));
                  if(this._3e4d3ce154c4d7d11a4b8870 == _7b5c1c7b056c8acade2b9708.FISH_SIZE)
                  {
                     _loc2_ = -808310175 ^ 0x040D02C3 ^ 0x359CFBE7 ^ 0x71E7CF2D;
                  }
                  else
                  {
                     _loc2_ = 0x6C0F9E56 ^ -345049041 ^ -1736380245 ^ -1874490696;
                  }
                  break;
               case 3:
                  this._b6446ff7e0a9cfa7e30ab1de = this._cdf89234ad8bfefb74de1d1a + "";
                  _loc2_ = 0x7E55312A ^ -1281578033 ^ 0x2B1D26C2 ^ 0x6970A04E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


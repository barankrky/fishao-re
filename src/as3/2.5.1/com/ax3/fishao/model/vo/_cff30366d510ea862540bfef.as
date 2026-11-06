package com.ax3.fishao.model.vo
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.model._d77ebfef0f9e8ea16b924015;
   import com.ax3.fishao.requirements._200c41bbe68d5cdf5a0f8ad3;
   import com.ax3.fishao.requirements._486f3b64ee967395c7114ca7;
   import com.ax3.fishao.requirements._db402f1977e6d9d227c729aa;
   import com.ax3.fishao.requirements._ddb70167c149bc90b647ba30;
   import com.ax3.fishao.requirements._f64d5035ede01b069be48bbf;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.utils.empty;
   import flash.utils.Dictionary;
   
   public class _cff30366d510ea862540bfef implements _d77ebfef0f9e8ea16b924015
   {
      
      public var id:Number;
      
      public var rating:Number;
      
      public var minLength:Number;
      
      public var avgLength:Number;
      
      public var maxLength:Number;
      
      public var catchRequirements:Object;
      
      public var breedingCost:int;
      
      public var breedingDuration:int;
      
      public var breedingSuccessRate:Number;
      
      public var breedingSuccessRateCurrent:Number;
      
      public var hueShiftOfShiny:int;
      
      private var _948eb3213a462a1812609da7:String = "";
      
      private var _2e99e18b591a48b1c02f138d:String = "";
      
      private var _61bbd9581c9928af9643b7af:Dictionary;
      
      public function _cff30366d510ea862540bfef()
      {
         super();
         this._61bbd9581c9928af9643b7af = new Dictionary(true);
      }
      
      public static function _f5502442600f90ab60bf8136(param1:Object, param2:Object) : int
      {
         var _loc3_:String = (param1 as _cff30366d510ea862540bfef).displayName;
         var _loc4_:String = (param2 as _cff30366d510ea862540bfef).displayName;
         if(_loc3_ > _loc4_)
         {
            return -2029004828 ^ -1091192030 ^ 0x7DBE340C ^ 0x444458CB;
         }
         if(_loc3_ < _loc4_)
         {
            return -2048488789 ^ 0x6E856407 ^ -741361428 ^ -950818369;
         }
         return -392259830 ^ 0x19218384 ^ -140474770 ^ 0x061F92E0;
      }
      
      public static function _350423b6918b0cdf00c4c708(param1:_cff30366d510ea862540bfef, param2:_cff30366d510ea862540bfef) : int
      {
         var _loc3_:int = 0x7B9347A6 ^ -2079057165 ^ -2132115712 ^ 0x7F6D2255;
         var _loc4_:_db402f1977e6d9d227c729aa = param1._61bbd9581c9928af9643b7af[_486f3b64ee967395c7114ca7.ERT_CLUB_POINTS];
         var _loc5_:_db402f1977e6d9d227c729aa = param2._61bbd9581c9928af9643b7af[_486f3b64ee967395c7114ca7.ERT_CLUB_POINTS];
         if(_loc4_.points > _loc5_.points)
         {
            _loc3_ = 0x593B9831 ^ -1981730288 ^ -1013201456 ^ 0x13416FF0;
         }
         else if(_loc4_.points < _loc5_.points)
         {
            _loc3_ = -467698275 ^ -2062589858 ^ 0x320CF4EE ^ -1394403630;
         }
         return _loc3_;
      }
      
      public static function _ee1095a667f95d0de0951bd0(param1:_cff30366d510ea862540bfef, param2:_cff30366d510ea862540bfef) : int
      {
         var _loc3_:int = -1325504842 ^ 0x405B5F57 ^ 0x33CF1554 ^ -1016451915;
         var _loc4_:_200c41bbe68d5cdf5a0f8ad3 = param1._61bbd9581c9928af9643b7af[_486f3b64ee967395c7114ca7.ERT_CLUB_UNLOCK_BY_FISHCOINS];
         var _loc5_:_200c41bbe68d5cdf5a0f8ad3 = param2._61bbd9581c9928af9643b7af[_486f3b64ee967395c7114ca7.ERT_CLUB_UNLOCK_BY_FISHCOINS];
         if(_loc4_.price > _loc5_.price)
         {
            _loc3_ = -1486601514 ^ 0x255D3EF1 ^ -408258451 ^ 0x6593044B;
         }
         else if(_loc4_.price < _loc5_.price)
         {
            _loc3_ = 0x2E4D0ADE ^ -1963653050 ^ 0x0B7DC4B8 ^ 0x503A39DF;
         }
         return _loc3_;
      }
      
      public function _2dd278b198781935b9d9b9ee(param1:Object) : void
      {
         this.id = parseInt(param1.id);
         this.rating = parseInt(param1.rating);
         this.minLength = parseInt(param1.min_length);
         this.avgLength = parseInt(param1.avg_length);
         this.maxLength = parseInt(param1.max_length);
         this.breedingCost = parseInt(param1.breed_cost);
         this.breedingDuration = parseInt(param1.breed_duration);
         this.breedingSuccessRate = parseFloat(param1.breed_success_rate);
         this.catchRequirements = JSON.parse(param1.catch_req);
         this.hueShiftOfShiny = parseFloat(param1.hue_shift_of_shiny);
         this._91eeeb01ec687a30918b6509();
      }
      
      private function _91eeeb01ec687a30918b6509() : void
      {
         var _loc1_:_ddb70167c149bc90b647ba30 = null;
         var _loc2_:Array = _f64d5035ede01b069be48bbf._b8514e3989ca2f7992b2b976(this.catchRequirements);
         for each(_loc1_ in _loc2_)
         {
            this._61bbd9581c9928af9643b7af[_loc1_.type] = _loc1_;
         }
      }
      
      public function _5ad2af1d65e4995e96c623b7(param1:String) : _ddb70167c149bc90b647ba30
      {
         return this._61bbd9581c9928af9643b7af[param1];
      }
      
      public function _8cf2d0c59e0bec938a0aef5d(param1:String) : Boolean
      {
         return param1 in this._61bbd9581c9928af9643b7af;
      }
      
      public function get displayName() : String
      {
         var _loc1_:int = 0x4E3A00D4 ^ -557187281 ^ 0x330565C7 ^ -1147732162;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x715602B1 ^ -173872268 ^ 0x16833A6F ^ -1978157400))
            {
               case 0:
                  if(empty(this._948eb3213a462a1812609da7))
                  {
                     _loc1_ = -870638847 ^ 0x2EE21654 ^ 0x35A2732F ^ -818209927;
                  }
                  else
                  {
                     _loc1_ = -1162640701 ^ -1842935155 ^ 0x7491CA89 ^ 0x446527C7;
                  }
                  break;
               case 1:
                  this._948eb3213a462a1812609da7 = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈勑勻剠劣刋劁刖勈勋勻劬剒制劫劳剚劬","勾剠剴勽劐勉劔則刻劙勋刖剣券剣劳") + this.id);
                  _loc1_ = 0x09F3E39A ^ -1399114148 ^ -139790478 ^ 0x4AA247B4;
                  break;
               case 2:
                  return this._948eb3213a462a1812609da7;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get displayDescription() : String
      {
         var _loc1_:int = -1088424054 ^ -2097297582 ^ 0x1E4631C0 ^ -518128507;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x43631010 ^ -763965275 ^ 0x01F56791 ^ 0x52595ABD))
            {
               case 0:
                  return this._2e99e18b591a48b1c02f138d;
               case 1:
                  this._2e99e18b591a48b1c02f138d = "";
                  _loc1_ = 0x28F1DDD4 ^ -11849068 ^ -1542690368 ^ -1324385511;
                  break;
               case 2:
                  if(_c2ad9d37d7be0097d6d2e977._366a0cba702662de218e1cd3(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刱剳刓刋刡加剗劣勶刴列勌剁剅剰剮勫剟勧勻劍劳剞剱剻効刋刈","刐劾刷剫剃划劷列劉初劾勱勡勝剋券") + this.id))
                  {
                     _loc1_ = 0x2D641DD4 ^ 0x0A759DFB ^ -2134782877 ^ 0x6569B1D6;
                  }
                  else
                  {
                     _loc1_ = -717670419 ^ -850497219 ^ 0x2CE26FDD ^ -164834155;
                  }
                  break;
               case 3:
                  this._2e99e18b591a48b1c02f138d = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劯刾剞劂功刈删刕勌刄勃勝勋効刦劧勇劻剚利剣劣刎勀勢剭刚功","勄刞勘劼剄勰劎刁刔刹別勊劔刏勂剡") + this.id);
                  _loc1_ = 0x5814D8D4 ^ 0x7858B18E ^ 0x19D0A077 ^ -81447756;
                  break;
               case 4:
                  if(empty(this._2e99e18b591a48b1c02f138d))
                  {
                     _loc1_ = 0x187D8808 ^ 0x7F23612A ^ -304567194 ^ 0x483FB8DF;
                  }
                  else
                  {
                     _loc1_ = -1492060228 ^ -380227295 ^ -257308830 ^ 0x7C56FC66;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get increaseBreedingChancePrice() : int
      {
         if(this.breedingSuccessRate == (-557639938 ^ -523310101 ^ 0x4A973E77 ^ 0x749AC362))
         {
            return 0x5117A7C6 ^ 0x5A9A10C3 ^ -123884520 ^ -217048291;
         }
         var _loc1_:Number = this.breedingCost / this.breedingSuccessRate;
         _loc1_ /= -1990557033 ^ -47391089 ^ -296879583 ^ -1707366895;
         _loc1_ *= _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揺掅挤掓揽握掋捼捬捸捱揼挌捥掜捙揦捺揢掟掤揩揉捓","揁捲揽捛揵捪捍挌捬挂揦挗提揉措揸");
         _loc1_ /= -2097689618 ^ -1716391039 ^ 0x7B81A614 ^ 0x60C79E6F;
         return Math.ceil(_loc1_);
      }
   }
}


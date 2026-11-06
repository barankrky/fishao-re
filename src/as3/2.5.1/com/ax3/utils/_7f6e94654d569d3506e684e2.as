package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.system.System;
   import flash.utils.Dictionary;
   import flash.utils.setInterval;
   import flash.utils.setTimeout;
   
   public class _7f6e94654d569d3506e684e2
   {
      
      private static var _952c6066a3e8a9982ebb78c0:Dictionary = new Dictionary(true);
      
      private var _2cd43ae5710b61126c6ee7c3:int;
      
      private var _f19636419b0de86197ecc8b3:int;
      
      private var _28ec56040ee0252a1684d015:int;
      
      private var _6ad0ce1a6ff13455b667bfc4:Function;
      
      private var _ae6ec7391c86e135767d0bfc:Function;
      
      private var _693843ded045530df008cd63:int;
      
      private var _67bc2842e37dbc0aab5f3aed:int;
      
      private var _856006796ca04b2395434f8f:Boolean;
      
      public function _7f6e94654d569d3506e684e2(param1:int = 1000, param2:int = 62914560, param3:int = 104857600, param4:int = 60000, param5:int = 1, param6:Function = null, param7:Function = null)
      {
         super();
         this._2cd43ae5710b61126c6ee7c3 = param1;
         this._f19636419b0de86197ecc8b3 = param2;
         this._28ec56040ee0252a1684d015 = param3;
         this._6ad0ce1a6ff13455b667bfc4 = param6;
         this._ae6ec7391c86e135767d0bfc = param7;
         this._693843ded045530df008cd63 = param5;
         this._67bc2842e37dbc0aab5f3aed = param4;
         this._856006796ca04b2395434f8f = true;
         setInterval(this._00982644aa1ab875f8eea2fa,this._2cd43ae5710b61126c6ee7c3);
      }
      
      private static function _2405349a64cbd5eca00625ec() : void
      {
         var _loc1_:Point = new Point();
         _loc1_ = null;
         var _loc2_:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃刃勦刾创刍刢勈刨劐勅刌刓剟刌勻刴勭剫勁劓动劁勜剨刵剼剚劊勛劆势劏刯列勁勀勏刓前","勣勯勿勩勖助勍刿劍切剳动劊劻勘刨");
         _loc2_ = null;
         var _loc3_:Array = [];
         var _loc4_:int = -435424031 ^ 0x314C1F90 ^ 0x5CF6FA0A ^ -1951329925;
         _loc4_ = 0x52C278DD ^ 0x0EDCB58E ^ -476364939 ^ -1081740762;
         while(_loc4_ < (0x21D285DB ^ -2026154984 ^ 0x3B2CA844 ^ -1648002937))
         {
            _loc3_.push(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕掱挢按捸挶掃捫挙捗","捵掩捬挢捠揦揙捄捝捰揼掦揙持挡挢"));
            _loc4_++;
         }
         _loc4_ = 0x3162F77E ^ 0x1D8666E6 ^ 0x18083310 ^ 0x34ECA288;
         while(_loc4_ < (0x2ABB45B2 ^ -1894992405 ^ -1998173588 ^ 0x2D51BB35))
         {
            delete _loc3_[_loc4_];
            _loc4_++;
         }
         _loc3_ = null;
      }
      
      public static function track(param1:*, param2:String) : void
      {
         _952c6066a3e8a9982ebb78c0[param1] = param2;
      }
      
      public static function _0d6e3aa3542c4573018fd704() : String
      {
         var _loc1_:Object = null;
         var _loc2_:String = "";
         var _loc3_:int = -659622064 ^ -1304241640 ^ -43425522 ^ -1752871866;
         _loc2_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წჄႍထႸდი႞იၪဤဂ჏ူၢႮႝႹვိဘ။კჽၙ၅်၅჏Ⴚ၀၅ႅႃႍ႘ႎဂႜ჋လဓၯႠ჋ნ့ႍႹქႬၭ၅ဦှ჎႐၊Ⴒၱ჈ၕ","ၪၼეဋ၄၎჈နႩႛაၢ၀ါ႒ႏ");
         for(_loc1_ in _952c6066a3e8a9982ebb78c0)
         {
            _loc2_ += _loc1_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭勃刴删勬刢削劒剥动剌勄","劐勼剉勞務劥刅劦努剹勱剆劁刋剂剘") + _952c6066a3e8a9982ebb78c0[_loc1_] + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劂劔勴勰勼刮勣制判剭剙剋","務剽刃分勀勶勵勆剓划劓到前劋刻剜");
            _loc3_++;
         }
         return _loc2_ + (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刈剥勍刹剏勣刋则剉刽剗刯劊剫剮剉勴劙列効劳刟劇勤加刜剭到勨剈勪刽剸别勖劍刏剭劈劥劐勒剦剡刊劷刁剜剣加勤剰","労劜刻劵勝劃勠刴勱剋剽励劍劁刟劭") + _loc3_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၨႶსႠწဈၶიထႃ","၄၄ၾ჋ၴႅႢှტ჊ြၭჵႾქဆ"));
      }
      
      public static function _9bef72003448e2b78b56129f() : void
      {
         _952c6066a3e8a9982ebb78c0 = new Dictionary(true);
      }
      
      private function _b2e127772372bc47921c4385() : void
      {
         this._856006796ca04b2395434f8f = true;
      }
      
      public function _b22c74d262493008365da319() : void
      {
         if(!this._856006796ca04b2395434f8f)
         {
            return;
         }
         var _loc1_:int = -1065467827 ^ -189156759 ^ -176933511 ^ -1045182627;
         _loc1_ = 0x4D0552E7 ^ -1383080816 ^ -1247337561 ^ 0x552DADD0;
         while(_loc1_ < this._693843ded045530df008cd63)
         {
            try
            {
               new LocalConnection().connect(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揤揊挂掸掚揖揝捓揱捪掴揩掼揵挃掲","排振挢掗掞接掺掙捷捄掙掤捶捭揁揅"));
               new LocalConnection().connect(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჈႐၃ၙთ၄ႎဗკဠჟႋၡၚၐၡ","၊ჲၲဏၬႉႧၡ၃ჽၑြკ႘ႯჁ"));
            }
            catch(e:*)
            {
            }
            _loc1_++;
         }
         this._856006796ca04b2395434f8f = false;
         setTimeout(this._b2e127772372bc47921c4385,this._67bc2842e37dbc0aab5f3aed);
      }
      
      private function _00982644aa1ab875f8eea2fa() : void
      {
         var _loc1_:int = -95132818 ^ 0x02F13334 ^ -1554767467 ^ -1732400402;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1645650968 ^ -72880891 ^ 0x7BE08C47 ^ -555556467))
            {
               case 0:
                  this._ae6ec7391c86e135767d0bfc();
                  _loc1_ = 0x56752D1D ^ 0x3D78E3A5 ^ -1735796442 ^ 0x30C8CCBE;
                  break;
               case 1:
                  this._b22c74d262493008365da319();
                  _loc1_ = 0x69B4B053 ^ 0x11EED635 ^ -614106620 ^ 0x6073C742;
                  break;
               case 2:
                  if(System.totalMemory > this._f19636419b0de86197ecc8b3)
                  {
                     _loc1_ = -1975155770 ^ 0x24E25633 ^ -1151253876 ^ -695579558;
                  }
                  else
                  {
                     _loc1_ = 0x3B09278C ^ -698891533 ^ 0x2CDEDF99 ^ 0x02CCE1C6;
                  }
                  break;
               case 3:
                  this._6ad0ce1a6ff13455b667bfc4();
                  _loc1_ = -846225099 ^ 0x092C3119 ^ -1261786348 ^ -1289363426;
                  break;
               case 4:
                  _2405349a64cbd5eca00625ec();
                  if(this._ae6ec7391c86e135767d0bfc != null)
                  {
                     _loc1_ = -929782066 ^ -1120755782 ^ -306588972 ^ 0x5B533087;
                  }
                  else
                  {
                     _loc1_ = -247836118 ^ -1832383276 ^ -508229036 ^ 0x410B8F8A;
                  }
                  break;
               case 5:
                  if(this._6ad0ce1a6ff13455b667bfc4 != null)
                  {
                     _loc1_ = 0x3A6B0B47 ^ -481483855 ^ -994777886 ^ -555870416;
                  }
                  else
                  {
                     _loc1_ = 0x70DE8399 ^ 0x2EA1DCC0 ^ 0x446616A2 ^ -648703267;
                  }
                  break;
               case 6:
                  if(System.totalMemory > this._28ec56040ee0252a1684d015)
                  {
                     _loc1_ = 0x59C79953 ^ 0x65865F63 ^ -231624330 ^ 0x0D3CAC64;
                  }
                  else
                  {
                     _loc1_ = 0x2FE65883 ^ -1972101897 ^ -1977768516 ^ -322749715;
                  }
                  break;
               case 7:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


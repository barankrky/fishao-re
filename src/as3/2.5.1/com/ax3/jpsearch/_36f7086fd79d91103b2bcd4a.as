package com.ax3.jpsearch
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class _36f7086fd79d91103b2bcd4a
   {
      
      private var _586c8fa6cb82e72618825af5:Function;
      
      private var _0f4d6453818403d22b6e7847:Vector.<_3f0b8f3bb126033c881dfbc2> = new Vector.<_3f0b8f3bb126033c881dfbc2>();
      
      public function _36f7086fd79d91103b2bcd4a(param1:Function = null)
      {
         super();
         this._586c8fa6cb82e72618825af5 = param1 == null ? _d0e67ce4e50feaa8c07605c0 : param1;
      }
      
      private static function _d0e67ce4e50feaa8c07605c0(param1:int, param2:int) : int
      {
         var _loc3_:int = -958583656 ^ 0x2671AA ^ -206464409 ^ -1478474940;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-134631650 ^ -182203231 ^ 0x565DBC9C ^ -970106062))
            {
               case 0:
                  if(param1 < param2)
                  {
                     _loc3_ = -1338486599 ^ 0xCFF13A ^ -543477239 ^ -37349473;
                  }
                  else
                  {
                     _loc3_ = 0x5AC7630A ^ -1082646276 ^ -1539223637 ^ -749434802;
                  }
                  break;
               case 1:
                  return -494217763 ^ 0x36B0BBAF ^ 0x299ED3DC ^ -39535186;
               case 2:
                  if(param1 > param2)
                  {
                     _loc3_ = 0x6F1931E7 ^ -30356938 ^ -954889707 ^ -996739626;
                  }
                  else
                  {
                     _loc3_ = -1257970370 ^ -2104298494 ^ -1772499608 ^ 0x33655844;
                  }
                  break;
               case 3:
                  return 0x15F91336 ^ -636101009 ^ 0x23A5C85E ^ -330758906;
               case 4:
                  return -574000433 ^ 0x61D80DA5 ^ 0x1DB69514 ^ 0x5E581581;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _37a8dc5fa0713ca35697b35d(param1:_3f0b8f3bb126033c881dfbc2, param2:_3f0b8f3bb126033c881dfbc2) : int
      {
         var _loc3_:int = 0x0448DD55 ^ 0x09572426 ^ -1330666536 ^ -764269743;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x7ABCA317 ^ 0x68443B74 ^ -215563861 ^ -1910757326))
            {
               case 0:
                  if(param1.f < param2.f)
                  {
                     _loc3_ = -123133008 ^ -833090968 ^ -1602658588 ^ -112589113;
                  }
                  else
                  {
                     _loc3_ = 0x448E9D67 ^ 0x26B098F9 ^ 0x7901E9A8 ^ 0x74FD9DCF;
                  }
                  break;
               case 1:
                  return -984539817 ^ -373999690 ^ 0x42C3E537 ^ -1848102871;
               case 2:
                  return 0x56671254 ^ 0x16E56C44 ^ -1426121865 ^ -360880794;
               case 3:
                  if(param1.f > param2.f)
                  {
                     _loc3_ = 0x5601B14B ^ 0x33E4D927 ^ 0x3701BF38 ^ 0x3D26A6AC;
                  }
                  else
                  {
                     _loc3_ = 0x1F256764 ^ -1175555072 ^ 0x033B282E ^ -902673740;
                  }
                  break;
               case 4:
                  return 0x5D6F6F01 ^ -1277276172 ^ 0x5D907B76 ^ -1289659517;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function push(param1:_3f0b8f3bb126033c881dfbc2) : _3f0b8f3bb126033c881dfbc2
      {
         this._0f4d6453818403d22b6e7847.push(param1);
         this._86232895e0832279733e7de1();
         return param1;
      }
      
      public function get length() : int
      {
         return this._0f4d6453818403d22b6e7847.length;
      }
      
      public function _436a92039c352d9199b7a18d(param1:_3f0b8f3bb126033c881dfbc2) : _3f0b8f3bb126033c881dfbc2
      {
         this._86232895e0832279733e7de1();
         return param1;
      }
      
      private function _86232895e0832279733e7de1() : void
      {
         this._0f4d6453818403d22b6e7847.sort(this._586c8fa6cb82e72618825af5);
      }
      
      public function get nodes() : Vector.<_3f0b8f3bb126033c881dfbc2>
      {
         return this._0f4d6453818403d22b6e7847;
      }
      
      public function shift() : _3f0b8f3bb126033c881dfbc2
      {
         return this._0f4d6453818403d22b6e7847.shift();
      }
      
      public function print() : void
      {
         var _loc1_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc2_:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღါჷၭჇဣဿၣ၄Ⴔ","ႻႱးႲၶწႪ႟၎Ⴍ჌၃သၸႱႱ");
         var _loc3_:int = -337916000 ^ 0x6D2E8ACB ^ -463417556 ^ 0x62958A47;
         for each(_loc1_ in this._0f4d6453818403d22b6e7847)
         {
            _loc2_ += _loc3_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂဴၵဘჳဇႢႷႁჼၬႉထှ။ၳစღ","ဴ႗წცჽဌဳႼႭၗၙႍႄၮ႙႒") + _loc1_.x + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剱動勇剁劒刭刭勺刣勨勺劤判刬勍勐别剋","勐剰勴剒劭剋创剬刱切刋力剶勷劄勳") + _loc1_.y + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼိၛဟკჰ჉ვဌဗၬჰႻჭဇႌჱ်","ႍဦဤၚႶႺ၇დ၂႓ဪႹჼჃ်ဏ") + _loc1_.f + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၾგၐႳႍဩ၆ဠႡဵ","ძ၍ၕႃၹပလ჎၂ၸ၈ၽြ჈ပလ");
            _loc3_++;
         }
         _loc2_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("判勚勺勏劔勺判刂剾剄","刨勘勄劃刋刳勘勴刚勖剨剈刿加剙劐");
      }
   }
}


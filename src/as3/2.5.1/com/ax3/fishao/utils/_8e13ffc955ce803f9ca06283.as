package com.ax3.fishao.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.junkbyte.console.Cc;
   
   public class _8e13ffc955ce803f9ca06283
   {
      
      public function _8e13ffc955ce803f9ca06283()
      {
         super();
      }
      
      public static function _5ce3f4e8aa24a7bd3ffb9787(param1:Array) : Array
      {
         if(param1.length == (0x54B76B3E ^ -1352561522 ^ -1756300365 ^ 0x6C861C03))
         {
            return [];
         }
         var _loc2_:int = param1.shift();
         var _loc3_:Array = new Array(_loc2_);
         if(param1.length == (-1476720966 ^ -647836923 ^ 0x4A030A4F ^ 0x349AC7F0))
         {
            return _loc3_;
         }
         var _loc4_:int = 0x750679E3 ^ -695704118 ^ 0x18B8B22E ^ -1154044409;
         while(_loc4_ < _loc3_.length)
         {
            _loc3_[_loc4_] = _5ce3f4e8aa24a7bd3ffb9787(_48ffa3f049ec0c910d4858b2(param1));
            _loc4_++;
         }
         return _loc3_;
      }
      
      private static function _48ffa3f049ec0c910d4858b2(param1:Array) : Array
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0x32E58F2B ^ 0x3153D535 ^ -140434910 ^ -199788484;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(param1[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function _1b520a4567f7aef011d3fe68(param1:Array, param2:Object) : int
      {
         var _loc3_:int = 0x31754ACA ^ 0x2C6194C9 ^ 0x2C91B7A4 ^ 0x318569A7;
         var _loc4_:int = 0x559D4D37 ^ 0x094692C6 ^ 0x16A452C4 ^ 0x6F5C87C2;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x08B5CFB9 ^ -1112775368 ^ 0x44BABE31 ^ -729801148))
            {
               case 0:
                  param1.splice(_loc3_,0x5A0D28B8 ^ -1670950281 ^ -266850242 ^ 0x36724AF0);
                  _loc4_ = 0x39748857 ^ 0x03C4AE88 ^ -467520503 ^ -72280032;
                  break;
               case 1:
                  Cc.warn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔Ⴔჲ၌ႱႿმန႙၉ကၺႁႬ႘ဒლၨဝႽხႩဖၛ၏ჲၞဴჂ჌Ⴕထငၬၴ჋ဏးႩქ႐ჸცႧုဠႻ၄Ⴂ့ဟჾჼ၇ၫႦ႖ၽၛဴဣစ၎ၰိპီဂိဗუ჏ტခႬႀၴၷ႕၃ႁဉ၏჏ြ႐ႎဖခႂ၉ံჴტ჈ဉჱჼႝၹသႅ","ႽႧრႇჼဒ၍၎ၕႇျ႕ჵჺတၵ"));
                  _loc4_ = 0x4F6F1B7F ^ 0x29567355 ^ 0x43C24B46 ^ 0xD8299A;
                  break;
               case 2:
                  return _loc3_;
               case 3:
                  _loc3_ = 0x02859350 ^ -1547590424 ^ -117189996 ^ -1481106733;
                  Debug.assertNotEqual(param1,null);
                  Debug.assertNotEqual(param2,null);
                  _loc3_ = param1.indexOf(param2);
                  if(_loc3_ == (-519835952 ^ 0x2E27094C ^ 0x68615798 ^ 0x58BA4FFB))
                  {
                     _loc4_ = 0x5E182F95 ^ 0x1E64A5AF ^ 0x58CAF022 ^ 0x3D9570ED;
                  }
                  else
                  {
                     _loc4_ = 0x6CB2F6EF ^ 0x0D9D9F03 ^ -548122758 ^ -1688720286;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _fb0df7d7bac527e896dfccf1(param1:Array, param2:Object, param3:uint) : void
      {
         var _loc4_:int = -515807038 ^ -1197594482 ^ -888508288 ^ -1831522100;
         var _loc5_:int = -149469958 ^ 0x7B606BB7 ^ 0x411CC34A ^ -1579597597;
         loop0:
         while(true)
         {
            switch(_loc5_ ^ (-287571433 ^ 0x49377B71 ^ -1911044090 ^ 0x454E1D84))
            {
               case 0:
                  _loc4_ = param1.indexOf(param2);
                  if(ConstantsBase.INDEX_NONE != _loc4_)
                  {
                     _loc5_ = 0x47583833 ^ 0x69FF7859 ^ -2052165959 ^ -944012747;
                  }
                  else
                  {
                     _loc5_ = 0x4CEEFF32 ^ -2122735605 ^ 0x235D3968 ^ -2106013004;
                  }
                  break;
               case 1:
                  param1.splice(param3,-1022657897 ^ 0x040489B4 ^ -1426527763 ^ 0x6DF71ACE,param2);
                  return;
               case 2:
                  param1.splice(_loc4_,0x6F350E75 ^ 0x62365433 ^ 0x6A97A906 ^ 0x6794F341);
                  _loc5_ = 0x5C14915A ^ 0x5A8508C1 ^ -1114624296 ^ -676127834;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function _12b60efd7d8ed554fb435dd2(param1:Array, param2:Function) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:* = 0x5AB73699 ^ 0x24842C12 ^ 0x16E6021A ^ 0x68D51891;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0x73F5CE78 ^ 0x5D95868A ^ -1736360772 ^ -1226738609;
         while(_loc8_ < param1.length)
         {
            _loc3_ = param1[_loc8_];
            _loc4_ = param2(_loc3_);
            _loc5_ = int(_loc8_ - 1);
            _loc6_ = param1[_loc5_];
            _loc7_ = param2(_loc6_);
            while(_loc5_ >= (0x5AAAA314 ^ -1438908080 ^ -787422281 ^ 0x218641F3) && _loc7_ > _loc4_)
            {
               _fb0df7d7bac527e896dfccf1(param1,_loc6_,_loc5_ + (-1686206840 ^ 0x3E2C1210 ^ -1398493065 ^ 0x09F624EE));
               _loc5_--;
               if(_loc5_ >= (-1566714978 ^ 0x698EB1C3 ^ -1476306842 ^ 0x63123A3B))
               {
                  _loc6_ = param1[_loc5_];
                  _loc7_ = param2(_loc6_);
               }
            }
            _fb0df7d7bac527e896dfccf1(param1,_loc3_,_loc5_ + (0x2F5E9A09 ^ 0x7F852A6D ^ -365337166 ^ -1159539241));
            _loc8_++;
         }
      }
      
      public static function _95a5742acc364abb3ac13b14(param1:Array, param2:Array) : Array
      {
         var _loc3_:Array = [];
         _a597ec89c12c79c36ce22180(_loc3_,param1);
         _a597ec89c12c79c36ce22180(_loc3_,param2);
         return _loc3_;
      }
      
      private static function _a597ec89c12c79c36ce22180(param1:Array, param2:Array) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            param1.push(_loc3_);
         }
      }
      
      public static function _00d927e8bf7b051f82b488f2(param1:Array) : void
      {
         var _loc2_:Object = null;
         Debug.assertNotEqual(param1,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("推揈捒挣推挛捉揖掰掐揞挪掰掂捝捓挕捰推揅掺挢揻排换掎排揨据挧掊捉揫捸按掀捽挌挠挡捺揆捚捳捂挼挊捈捻揣掉掙捋捂挊挿挆挲挳挘","挫捦揽捴捰挌捸揔挊挓掭挙揞挞捦揷"));
         var _loc3_:int = -549945968 ^ 0x0FF9FF68 ^ 0x58C14623 ^ -2013215525;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _8d6c1468e1cadaf78435f801(param1);
            _1b520a4567f7aef011d3fe68(param1,_loc2_);
            param1.push(_loc2_);
            _loc3_++;
         }
      }
      
      public static function _8d6c1468e1cadaf78435f801(param1:Array) : *
      {
         var _loc2_:uint = _9c52777792d76fde110d23c0._60f3e8587e4103019e85c82e(0x06877984 ^ 0x10B6124C ^ 0x4EE44553 ^ 0x58D52E9B,param1.length - 1);
         return param1[_loc2_];
      }
   }
}


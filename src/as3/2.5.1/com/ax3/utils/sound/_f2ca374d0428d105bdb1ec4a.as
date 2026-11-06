package com.ax3.utils.sound
{
   import com.ax3.utils.math.randomRange;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class _f2ca374d0428d105bdb1ec4a
   {
      
      private static var _d09e49a3a3899035780d6815:int = 0x20B6FFAD ^ 0x35641A25 ^ -1799390619 ^ -2123522067;
      
      private var _15fd0fb337d20c0bedaa3f41:Number;
      
      private var _297fe65bf5691e3a99d01db7:SoundTransform;
      
      private var _a9dbe8bbddea3d285ecc4561:Vector.<Sound>;
      
      private var _b90b00a6c983d45655699738:uint = 0;
      
      private var _fe65f4cd671de46983a9e267:int = -1;
      
      private var _302f71c15cd885a7f7080d87:int;
      
      private var _f6d676dbd62ccd599ca63035:int = 240;
      
      private var _895ab8c671575552864d1773:SoundChannel;
      
      private var _988276ee87360dc264550be7:int;
      
      private var _37f555c8b7c0fe4a2b79c3f6:Object;
      
      public function _f2ca374d0428d105bdb1ec4a(param1:Object, param2:Number, param3:Vector.<Sound>, param4:int)
      {
         super();
         this._37f555c8b7c0fe4a2b79c3f6 = param1;
         this._988276ee87360dc264550be7 = _d09e49a3a3899035780d6815++;
         this._15fd0fb337d20c0bedaa3f41 = param2;
         this._a9dbe8bbddea3d285ecc4561 = param3;
         this._f6d676dbd62ccd599ca63035 = param4;
         this._b90b00a6c983d45655699738 = this._a9dbe8bbddea3d285ecc4561.length;
      }
      
      public function play(param1:SoundTransform) : void
      {
         var _loc2_:int = -1832092886 ^ 0x0A348DA5 ^ 0x03E6B2AD ^ 0x68267C39;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1109252519 ^ 0x0750E0F2 ^ 0x5F759063 ^ 0x16FF6ED3))
            {
               case 0:
                  if(this._297fe65bf5691e3a99d01db7 == null)
                  {
                     _loc2_ = 0x6EFD9210 ^ -1449257018 ^ 0x09CE30A9 ^ 0x3D958D67;
                  }
                  else
                  {
                     _loc2_ = 0x14A4B51F ^ -1597628399 ^ 0x3E1C22A1 ^ 0x79468FB1;
                  }
                  break;
               case 1:
                  this._297fe65bf5691e3a99d01db7.volume = -1741748704 ^ -715444162 ^ 0x66C774BB ^ 0x2BB342A4;
                  _loc2_ = 0x493C40B6 ^ -558501964 ^ -788218020 ^ -1246418873;
                  break;
               case 2:
                  this._297fe65bf5691e3a99d01db7.volume *= this._15fd0fb337d20c0bedaa3f41;
                  this._ee4e91680c6290cc0961f4eb(getTimer());
                  return;
               case 3:
                  this._297fe65bf5691e3a99d01db7 = new SoundTransform();
                  this._297fe65bf5691e3a99d01db7.volume = -1098770240 ^ 0x3960AE0D ^ -1762337965 ^ 0x11166D9F;
                  _loc2_ = 0x26B3B829 ^ 0x1F39FE67 ^ -1393862489 ^ 0x665926F7;
                  break;
               case 4:
                  this._297fe65bf5691e3a99d01db7.volume = param1.volume;
                  _loc2_ = -1159071620 ^ -1270122301 ^ -1082834118 ^ 0x42EFFB9C;
                  break;
               case 5:
                  if(param1 == null)
                  {
                     _loc2_ = -2108665614 ^ 0x69F83A5A ^ -1054266965 ^ -642155751;
                  }
                  else
                  {
                     _loc2_ = 0x5D6D6867 ^ 0x0CCC623F ^ 0x2A48FCB5 ^ -1999515918;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ee4e91680c6290cc0961f4eb(param1:uint) : void
      {
         var _loc2_:int = 0x3CC16FC0 ^ -623441616 ^ -234841617 ^ 0x1416FF1F;
         var _loc3_:int = 0x2E3AB5AD ^ 0x44D173DF ^ -785005332 ^ -303241189;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-263264188 ^ 0x73A463DC ^ -1402465351 ^ 0x79B072A4))
            {
               case 0:
                  _loc2_ = -1842053510 ^ -1341569872 ^ 0x7298D625 ^ 0x50A5ECEF;
                  if(this._b90b00a6c983d45655699738 > (0x650C6A32 ^ -1851458758 ^ -790468809 ^ 0x244AF63E))
                  {
                     _loc3_ = -1303966754 ^ 0x02B1BA23 ^ -1182973247 ^ 0x5FB919BA;
                  }
                  else
                  {
                     _loc3_ = -420780237 ^ -1519229 ^ 0x61438CD5 ^ 0x2E72D0E2;
                  }
                  break;
               case 1:
                  _loc2_ = randomRange(0x582E196D ^ -1438630380 ^ -271275795 ^ 0x1DBA8F94,this._a9dbe8bbddea3d285ecc4561.length - 1);
                  if(_loc2_ != this._fe65f4cd671de46983a9e267)
                  {
                     _loc3_ = -1239543978 ^ 0x7B475253 ^ 0x3528E18D ^ -1371318769;
                  }
                  else
                  {
                     _loc3_ = -227186065 ^ -85984113 ^ 0x7DA7BAB5 ^ 0x233FC6D4;
                  }
                  break;
               case 2:
                  this._fe65f4cd671de46983a9e267 = _loc2_;
                  this._302f71c15cd885a7f7080d87 = param1;
                  var _temp_3:* = this;
                  var _temp_2:* = this._a9dbe8bbddea3d285ecc4561[this._fe65f4cd671de46983a9e267];
                  var _temp_1:* = 0x56EDA7E0 ^ -975541629 ^ 0x2B5C244A ^ -1200887511;
                  _temp_3._895ab8c671575552864d1773 = _temp_2.play(_temp_1,_temp_1,this._297fe65bf5691e3a99d01db7);
                  return;
               case 3:
                  _loc3_ = 0x4FC41D74 ^ 0x16FDAD89 ^ 0x44929840 ^ 0x4B99C239;
                  break;
               case 4:
                  _loc3_ = -1372263639 ^ 0x4DB82ACD ^ 0x0E0B14D3 ^ -1145749581;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function stop() : void
      {
         this._2e6a3090c45fdbe2c9ad21d1();
         this._37f555c8b7c0fe4a2b79c3f6 = null;
         this._895ab8c671575552864d1773 = null;
      }
      
      private function _2e6a3090c45fdbe2c9ad21d1() : void
      {
         var _loc1_:int = -2085737127 ^ 0x7B828BA5 ^ 0x3D269F12 ^ -318775711;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-522303095 ^ -578645270 ^ -675326350 ^ -1021941089))
            {
               case 0:
                  return;
               case 1:
                  if(this._895ab8c671575552864d1773)
                  {
                     _loc1_ = -478041691 ^ 0x12292276 ^ 0x39C4DD5A ^ -510021371;
                  }
                  else
                  {
                     _loc1_ = -2008212628 ^ 0x622CCBAB ^ 0x059F4CBD ^ -972325900;
                  }
                  break;
               case 2:
                  this._895ab8c671575552864d1773.stop();
                  _loc1_ = 0x0C4A3FC6 ^ -181973214 ^ 0x07E7091A ^ -679502224;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = -1173038127 ^ -979889757 ^ 0x5329E5E3 ^ -598168003;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-201593154 ^ -1539914718 ^ -1731211074 ^ 0x3FFF7B8E))
            {
               case 0:
                  if(param1 - this._302f71c15cd885a7f7080d87 >= this._f6d676dbd62ccd599ca63035)
                  {
                     _loc3_ = 0x7148526C ^ 0x1DEFD7B3 ^ 0x752F9A81 ^ -378167565;
                  }
                  else
                  {
                     _loc3_ = -1698097330 ^ -1175632378 ^ -789469879 ^ 0x032875AF;
                  }
                  break;
               case 1:
                  this._ee4e91680c6290cc0961f4eb(param1);
                  _loc3_ = 0x646C5769 ^ -1858440705 ^ 0x677E16D2 ^ 0x62D5B1EA;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:int = -1271866632 ^ 0x30039EB1 ^ 0x7B944B9F ^ 0x188D140B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-701689184 ^ 0x347FFA07 ^ 0x6F26AA73 ^ 0x6A5E590B))
            {
               case 0:
                  return;
               case 1:
                  this._297fe65bf5691e3a99d01db7 = this._895ab8c671575552864d1773.soundTransform;
                  this._297fe65bf5691e3a99d01db7.volume = param1 * this._15fd0fb337d20c0bedaa3f41;
                  this._895ab8c671575552864d1773.soundTransform = this._297fe65bf5691e3a99d01db7;
                  _loc2_ = -2067493590 ^ 0x24BF3897 ^ 0x2ED1F30F ^ 0x69805D6D;
                  break;
               case 2:
                  if(this._895ab8c671575552864d1773 != null)
                  {
                     _loc2_ = 0x382EAF30 ^ -1377445651 ^ -1874834520 ^ -492755029;
                  }
                  else
                  {
                     _loc2_ = 0x7D3FF5A8 ^ -1240523327 ^ -1305785833 ^ -1640908383;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get volume() : Number
      {
         return this._297fe65bf5691e3a99d01db7 != null ? this._297fe65bf5691e3a99d01db7.volume : -926573557 ^ -1848666154 ^ -1439194949 ^ -214062234;
      }
      
      public function _8ecb3177244ee391164c4a96(param1:Number, param2:Number) : void
      {
         this._15fd0fb337d20c0bedaa3f41 = param1;
         this.volume = param2;
      }
   }
}


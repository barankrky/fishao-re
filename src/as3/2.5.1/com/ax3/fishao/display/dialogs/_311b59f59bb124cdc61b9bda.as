package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._0b976607cb271dfc280e2be1;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.breeding._f2b1c613b43475620da0eb28;
   import com.ax3.fishao.view.dialogs.breeding.model._60df203c5bd65d9824423405;
   import com.ax3.utils.math.limit;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class _311b59f59bb124cdc61b9bda extends _211b92248baafbfbfc3db418
   {
      
      public static const BREEDING_STATUS_DIALOG_CLOSED:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("判刢刓剴勇劰剥剴劢勓别劘勋刅剓刔剰刭刯剪判劸剻剦劀剁劻剔勳剩劈労剮剓刼勿剄勭列刑勷刷勵劒労勓剓劘勬剥剫剔務刚刼勿勡初勛刚","剠刍勾勒励刘勗刮刏劢刄剩勺剾剨剠");
      
      private var _56820b79c5c4cc065ae0f109:_cff30366d510ea862540bfef;
      
      private var _35ab089c6e35d6c45a8c4105:Number;
      
      private var _af0e9beef6b77a91b077f4c6:Number;
      
      private var _3867d290fb40fef766b400ab:Timer = new Timer(-1073105477 ^ -1254418802 ^ -1983158262 ^ -50738985);
      
      private var _816f531cf3137d95184d9124:_f2b1c613b43475620da0eb28;
      
      private var _372520b57067e5a124ac96ee:_60df203c5bd65d9824423405;
      
      public function _311b59f59bb124cdc61b9bda()
      {
         super();
         this._816f531cf3137d95184d9124 = GameSwf.instance.managerBreeding;
         this._372520b57067e5a124ac96ee = this._816f531cf3137d95184d9124.currentlyBreeding;
         this._56820b79c5c4cc065ae0f109 = app.fishDict.get(this._372520b57067e5a124ac96ee.id) as _cff30366d510ea862540bfef;
         this.chance = this._372520b57067e5a124ac96ee.succesRate;
         this.secondsLeft = this._372520b57067e5a124ac96ee.timeLeft;
      }
      
      public function set fish(param1:_cff30366d510ea862540bfef) : void
      {
         this._56820b79c5c4cc065ae0f109 = param1;
      }
      
      public function set secondsLeft(param1:Number) : void
      {
         var _loc2_:Date = new Date();
         this._35ab089c6e35d6c45a8c4105 = _loc2_.getTime() + param1 * (0x3FE7208F ^ -497467867 ^ 0x4E278888 ^ -1818651190);
      }
      
      public function set chance(param1:Number) : void
      {
         this._af0e9beef6b77a91b077f4c6 = Math.round(param1 * (0x0B782D39 ^ 0x64C0D324 ^ 0x3861FA0E ^ 0x57D90477));
      }
      
      public function get secondsLeft() : Number
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = Math.round((this._35ab089c6e35d6c45a8c4105 - _loc1_.getTime()) / (0x79C578A8 ^ -604968913 ^ 0x71B6FA5E ^ -746362575));
         return _loc2_ > (0x7EF52A78 ^ 0x27AE4B6F ^ -1451254451 ^ -266011558) ? _loc2_ : -1522719037 ^ -1690980796 ^ 0x3812291C ^ 0x061AA19B;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:int = -1276496358 ^ -1269202919 ^ -612544136 ^ -590420101;
         var _loc2_:_0b976607cb271dfc280e2be1 = null;
         _loc1_ = 0x14086C78 ^ -589569175 ^ 0x075B7E8A ^ -813108837;
         _loc2_ = null;
         fish_name.text = this._56820b79c5c4cc065ae0f109.displayName;
         var _loc3_:int = -392399669 ^ 0x05E25349 ^ -157453733 ^ 0x1BE357AF;
         _loc1_ = 0x3EC6C91A ^ -762697612 ^ 0x506AAEBC ^ -1138339935;
         _loc2_ = new _0b976607cb271dfc280e2be1();
         var _loc4_:Number = 0x2E1D814F ^ -658715644 ^ 0x3B489082 ^ -840311668;
         _loc2_.width = _loc4_;
         _loc2_.height = _loc1_;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("პၾၥႳဆ၏შဩာႦხდၫၗၤႻႜလ၌ၔႾၿႴႷზჭ၁၌Ⴖႆ၅მ","ႧၢბზႇငჇუၞჲოၾႠၷဎႢ") + int(_loc4_) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔剁劼剠刼刢则刅勂剈劅勷刂分","剙刻刃创剖剄剑勬剌労効则刣勿剉剷") + this._56820b79c5c4cc065ae0f109.id));
         _loc2_.x = (_loc3_ - _loc2_.width) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("採挾挮推揆挒捗挰捼捉捡挈捒挘掙捘挌掃振捡掖揈揪採","掩挹掓捿挪捼挟挆揘掾挥挼掣掣掅挳") + (-1388316061 ^ 0x3048F8CD ^ -845204590 ^ 0x50E83111);
         _loc2_.y = (_loc1_ - _loc2_.height) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挗捹揮按掯捬掏捬掭捙挿掚捰挔掬掇挝揊挓捶挰捼揌捱","挝掳揫揚捾掀掭挼挟捼掆挆捸揵掊揍") + (-94372276 ^ -1321036595 ^ -1870289615 ^ -610742473);
         _loc2_.smoothing = true;
         addChild(_loc2_);
         stars.gotoAndStop(this._56820b79c5c4cc065ae0f109.rating + (-1650433959 ^ 0x4EC0CC00 ^ 0x3C1F5C6C ^ -276828108));
         chance_percent.text = this._af0e9beef6b77a91b077f4c6 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劚刏剝副刪刡刊劈勋剚","勻劥劬刨勢剌剶刓刀刌勳勐劸功劌劊");
         time_left_timer.text = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(this.secondsLeft);
         this._3867d290fb40fef766b400ab.addEventListener(TimerEvent.TIMER,this._eef9a0da7fc879322372503d);
         this._3867d290fb40fef766b400ab.start();
         var _loc5_:Number = this._56820b79c5c4cc065ae0f109.breedingCost / this._56820b79c5c4cc065ae0f109.breedingSuccessRate;
         var _loc6_:int = Math.ceil(_loc5_ * _f2b1c613b43475620da0eb28.fishIncreaseChanceMultiplierFishcoins);
         addChanceButton.label = _loc6_.toString();
         subTimeButton.label = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၫတჄဒჷၛ႟ၐჩႾჭဘ","ှჇგქဏყႳတთაၨႵ၎თဴမ");
         this._5df56026dfafe788e7c9272f();
         addChanceButton.handler = this._f819ddb523f1e488dd78a950;
         subTimeButton.handler = this._f4409f9eacf967d6e2a7c2cb;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _5df56026dfafe788e7c9272f() : void
      {
         var _loc1_:int = 0x321851C4 ^ -1885466171 ^ 0x182C660B ^ 0x3AEDCF89;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-209006018 ^ 0x20E6041E ^ -1179047301 ^ -174975523))
            {
               case 0:
                  if(this._35ab089c6e35d6c45a8c4105 > (-2105229623 ^ 0x296EFA56 ^ 0x798D14AF ^ -764981200))
                  {
                     _loc1_ = 0x1413E9B6 ^ -397524578 ^ -216864868 ^ -1878481356;
                  }
                  else
                  {
                     _loc1_ = 0x6AB62FF6 ^ 0x1FF066CB ^ 0x7AC95F19 ^ -1865875546;
                  }
                  break;
               case 1:
                  addChanceButton.disable();
                  _loc1_ = -909253990 ^ 0x41F57E50 ^ 0x709AFEA2 ^ 0x67E58BEE;
                  break;
               case 2:
                  addChanceButton.enable();
                  _loc1_ = -1206445467 ^ 0x2AE766D6 ^ -23506554 ^ -215038797;
                  break;
               case 3:
                  return;
               case 4:
                  subTimeButton.disable();
                  _loc1_ = -621632612 ^ 0x7315F95C ^ -500680707 ^ -729250632;
                  break;
               case 5:
                  if(this._af0e9beef6b77a91b077f4c6 < (-2141459497 ^ -1703679450 ^ 0x4AFAEE2E ^ 0x50D2EFBB))
                  {
                     _loc1_ = -1474856617 ^ -149888722 ^ -1813960111 ^ 0x53A15BAC;
                  }
                  else
                  {
                     _loc1_ = -1582254549 ^ -492447011 ^ 0x62195D32 ^ -1102325693;
                  }
                  break;
               case 6:
                  subTimeButton.enable();
                  _loc1_ = -798846905 ^ 0x5F1501E0 ^ 0x0BC83DED ^ 0x1BF845CF;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _5bdc02939ecc7261d20edc90(param1:* = null) : void
      {
         var _loc2_:int = -750063331 ^ -1236556167 ^ 0x130A52D7 ^ -474889018;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1004147839 ^ -1484801444 ^ 0x4C1F5A69 ^ -1157641536))
            {
               case 0:
                  chance_percent.text = this._af0e9beef6b77a91b077f4c6 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掺捅掩挰挱捪掮挙挕捨","揎捯捍掭挫揷揠掙挘挀捪探揗捞揸捾");
                  this._5df56026dfafe788e7c9272f();
                  return;
               case 1:
                  if(this._af0e9beef6b77a91b077f4c6 < (0x4EB460A5 ^ 0x58533047 ^ 0x50B9C363 ^ 0x465E93E5))
                  {
                     _loc2_ = -1474391759 ^ 0x6FAAE0EA ^ 0x74BFF7D4 ^ 0x26B14779;
                  }
                  else
                  {
                     _loc2_ = -677366574 ^ -562213940 ^ -2015540822 ^ 0x1BBAF7C0;
                  }
                  break;
               case 2:
                  this._af0e9beef6b77a91b077f4c6 = limit(this._af0e9beef6b77a91b077f4c6 + (0x373BF240 ^ 0x5A080169 ^ 0x11D8E0DC ^ 0x7CEB13F0),0x3442A3B2 ^ -826296814 ^ 0x65BE027C ^ -1622992932,0x25F5EBB8 ^ 0x264D05B5 ^ -991579283 ^ -950182652);
                  _loc2_ = -2111294933 ^ -2117576158 ^ 0x40B29C7A ^ -689425145;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _1e99ec05bf3774ca920686df(param1:* = null) : void
      {
         this._35ab089c6e35d6c45a8c4105 -= (-894054662 ^ 0x5E044003 ^ 0x4C4CCA43 ^ -654490443) * (0x49DB90B1 ^ -1114585509 ^ 0x3660DE07 ^ -1037334319) * (0x45309705 ^ -1932739443 ^ -2084535577 ^ 0x4A3CAA87);
         this._5df56026dfafe788e7c9272f();
      }
      
      override protected function _37697c94197a63a95f11a93e(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(BREEDING_STATUS_DIALOG_CLOSED));
         super._37697c94197a63a95f11a93e(param1);
      }
      
      private function _eef9a0da7fc879322372503d(param1:*) : void
      {
         var _loc2_:_c24229eda44b942058106fae = null;
         var _loc3_:Number = this.secondsLeft;
         if(_loc3_ == (-1352396858 ^ 0x5BCF3DF7 ^ -1317045822 ^ 0x45D44BF3))
         {
            this._3867d290fb40fef766b400ab.stop();
            this._3867d290fb40fef766b400ab.removeEventListener(TimerEvent.TIMER,this._eef9a0da7fc879322372503d);
            if(GameSwf.currentLocationDialog is _c24229eda44b942058106fae)
            {
               _loc2_ = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
               this.close();
               _loc2_._961bb8a95560edd96762e6bf();
               return;
            }
         }
         time_left_timer.text = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(_loc3_);
      }
      
      private function _f4409f9eacf967d6e2a7c2cb(param1:* = null) : void
      {
         var _loc2_:int = 0x3E914067 ^ -346584784 ^ -485431096 ^ 0x23F3FEEF;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1578040208 ^ -521195614 ^ -342027840 ^ -1079581344))
            {
               case 0:
                  GameSwf.instance._cb81036d0354ae254b0556b1();
                  return;
               case 1:
                  subTimeButton.disable();
                  this._816f531cf3137d95184d9124.decreaseBreedingTime(this._1e99ec05bf3774ca920686df);
                  return;
               case 2:
                  if(app.user.fishbucks < (-880074171 ^ 0x1FDE10B7 ^ -373915080 ^ 0x3DE3B0D3))
                  {
                     _loc2_ = 0x7371ECAE ^ 0x09DD9306 ^ 0x629FDF3C ^ 0x0D167FE6;
                  }
                  else
                  {
                     _loc2_ = -184162560 ^ -2111885732 ^ 0x471BF6BB ^ 0x2524E094;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f819ddb523f1e488dd78a950(param1:* = null) : void
      {
         var _loc2_:int = 0x511466C6 ^ -980280319 ^ 0x7F9558DD ^ 0x78504D76;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5133A791 ^ -1916374990 ^ -618844618 ^ -1800694024))
            {
               case 0:
                  addChanceButton.disable();
                  this._816f531cf3137d95184d9124.increaseBreedingChance(this._5bdc02939ecc7261d20edc90);
                  return;
               case 1:
                  if(app.user.fishcoins < this._56820b79c5c4cc065ae0f109.increaseBreedingChancePrice)
                  {
                     _loc2_ = 0x1FFF3CBF ^ 0x08F21442 ^ 0x21C05946 ^ -1517412652;
                  }
                  else
                  {
                     _loc2_ = -2116368463 ^ 0x0EB2D938 ^ -382303170 ^ -182585894;
                  }
                  break;
               case 2:
                  GameSwf.instance._e6f0a7b005cacf7751286e97();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


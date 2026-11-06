package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class _55653df020120769a5d33312 extends IN_GAME_LOADING_TIPS implements _31d36aa7605a30cd1efdb917
   {
      
      private var _1b3dde3d5f2888338c9a23d8:int;
      
      private var _95a9901708828ececd97e6e3:Point = new Point(-1593159251 ^ -1812381644 ^ -1978422959 ^ -1193231384,-1846636959 ^ -256611662 ^ -1849289 ^ -1632031044);
      
      private var _d0ad5031b6f3aaf55f91605a:Number = 0.3;
      
      private var _cbfecbbc1a7380cf8e4ff1f3:Number = 15000;
      
      private var _825cf738e2083a62c588db26:Timer = new Timer(0x31398C96 ^ -715299727 ^ -384103381 ^ 0x0D7FDE54);
      
      private var _ab8b8ceab446ae6f3b901447:Number;
      
      private var _7bb0d84f2220f10a06b9322c:Number;
      
      public function _55653df020120769a5d33312()
      {
         super();
         this.percent = -788576224 ^ -1707669895 ^ -1600815628 ^ -362990675;
         this._ab8b8ceab446ae6f3b901447 = TextField(dialogBaloon.label).height;
         this._7bb0d84f2220f10a06b9322c = TextField(dialogBaloon.label).y;
         this._825cf738e2083a62c588db26.addEventListener(TimerEvent.TIMER_COMPLETE,this._c6f6356efe8e0ceae51e958d);
         this._e739ec3118d4e2a27c8bdf75();
      }
      
      public function set percent(param1:Number) : void
      {
         var _loc2_:int = int(param1 * (-1454792462 ^ -504960020 ^ -1514768129 ^ -317115515) + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၝၼ჏ძႼၢჯდႝံၲၟၴၠၠဟ჊့Ⴙ၊ဣဇႣု","ლြႱၚ჉ოჀႾ႓ჍႷရဋၢ့Ⴍ"));
         TextField(progressBar.progressText).text = _loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剒剕力勗勐制劲劌劻勴","刑勫割刣劶勸勚列劖剚剳刴勼勊刾剚");
         progressBar.gotoAndStop(_loc2_);
      }
      
      private function _e739ec3118d4e2a27c8bdf75() : void
      {
         var _loc1_:int = -684118778 ^ 0x6C0105C3 ^ -1133556399 ^ 0x07576594;
         var _loc2_:int = -309665198 ^ -1012873215 ^ -1527398285 ^ 0x29A368F3;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1864450325 ^ 0x04848B94 ^ -545660854 ^ -396404763))
            {
               case 0:
                  _loc2_ = 0x7492006A ^ 0x5230B8AE ^ 0x3DAEA827 ^ -1200582095;
                  break;
               case 1:
                  this._1b3dde3d5f2888338c9a23d8 = _loc1_;
                  tipsImageContainer.gotoAndStop(this._1b3dde3d5f2888338c9a23d8);
                  TextField(dialogBaloon.label).text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ွၻဠၾၫရိၾ႔ႾჟႷ჋ჃპჲႵႃ႐ၨწႻၟႫჸძၲ၇ჲၱყგწဈჽႄှၻႌ၆ဂဍႻხ၄Ⴢ","ႇჶၡფခ၄မၵဏၱႺၺၩჇႁၿ") + this._1b3dde3d5f2888338c9a23d8);
                  this._8db0d47df8a8ab691db090e4();
                  this._f2656ca05b2983d832aa0dee();
                  return;
               case 2:
                  _loc1_ = Math.floor(Math.random() * tipsImageContainer.totalFrames) + (-1616254662 ^ -1712161978 ^ 0x217C6A9E ^ 0x2727F8E3);
                  if(this._1b3dde3d5f2888338c9a23d8 != _loc1_)
                  {
                     _loc2_ = -1125349153 ^ 0x7FAB067D ^ 0x1B1DB5EB ^ 0x7B26B998;
                  }
                  else
                  {
                     _loc2_ = 0x3E04D3C5 ^ -445902256 ^ 0x3994E2A2 ^ 0x4180A1E7;
                  }
                  break;
               case 3:
                  _loc1_ = 0x3951E803 ^ 0x09E248AB ^ -624753986 ^ -361717226;
                  _loc2_ = -472676427 ^ 0x5C95B3CE ^ 0x61AB6D47 ^ 0x7D91DBEE;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8db0d47df8a8ab691db090e4() : void
      {
         TextField(dialogBaloon.label).height = TextField(dialogBaloon.label).textHeight + (0x233FA4E8 ^ -2134662881 ^ -1109221831 ^ 0x1E1E9BCB);
         TextField(dialogBaloon.label).y = this._7bb0d84f2220f10a06b9322c + (this._ab8b8ceab446ae6f3b901447 - TextField(dialogBaloon.label).textHeight) / (0x5DBCB019 ^ 0x6F07FBC1 ^ -844704225 ^ -14836283);
      }
      
      private function _5a1dc97fc64e8850d9848d7f() : void
      {
         this._825cf738e2083a62c588db26.repeatCount = 0x6D8008E4 ^ -2062274915 ^ 0x6C3CF66C ^ -2069311468;
         this._825cf738e2083a62c588db26.delay = this._cbfecbbc1a7380cf8e4ff1f3;
         this._825cf738e2083a62c588db26.start();
      }
      
      private function _c6f6356efe8e0ceae51e958d(param1:TimerEvent = null) : void
      {
         this._ffad6e95acf8f7336616fb1c();
         TweenLite.to(tipsImageContainer,this._d0ad5031b6f3aaf55f91605a,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ရခၝႪჭြႪბ႕გၟ႟ჷ႕ြჯ჋သ","ဉႆ჉ღပჴႽეႆႹႥခၿၻႚၬ")):0x0C90F28B ^ 0x2481D9F0 ^ 0x095960C2 ^ 0x21484BB9,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挟捧捉揆损掜捱捡挼持挝揿揗掍捦振控挏挀捭挅揢捰挼掌揚持捾","揝振捂揽捥揱挼持掾揩捈揌揬振揽捶")):this._e739ec3118d4e2a27c8bdf75
         });
         TweenLite.to(dialogBaloon.label,this._d0ad5031b6f3aaf55f91605a,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴎှံႃ၌ႲၩႡဲჳღၢ၄ခၨခၮႍ","ခၘၩრၦ၈Ⴀ၁ႆწვုၥტ၇႒")):0x03F9AB3C ^ -445115931 ^ 0x5E5BF3F1 ^ -1193653976});
      }
      
      private function _f2656ca05b2983d832aa0dee() : void
      {
         this._ffad6e95acf8f7336616fb1c();
         TweenLite.to(tipsImageContainer,this._d0ad5031b6f3aaf55f91605a,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႰჁက჆႞Ⴆ၍ၪჳႽပჀႾျၱჽၞၟ","Ⴕ႞ညၪၫဍႱჵ၄ီ၍ၳြႭၰႪ")):0x1757840B ^ 0x4D12CAE7 ^ -484389434 ^ -1184529621,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揣指挱捧振揸挔掼揂掹掹揁挞揓捸挲掷振挭揌掑揄挆挏捦捳揄掴","捋挋掛挬揤揇掟換掅揻捈掲掆挮掖挓")):this._5a1dc97fc64e8850d9848d7f
         });
         TweenLite.to(dialogBaloon.label,this._d0ad5031b6f3aaf55f91605a,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("პၤႧავტႠႡၚცၺ၎ရႰဳ႞ဋဗ","ჽဌုႂဥგဳွၻ၊ဲႥၬ჋ოၧ")):0x0CD66939 ^ 0x4AE7A61B ^ 0x6A78F04D ^ 0x2C493F6E});
      }
      
      private function _ffad6e95acf8f7336616fb1c() : void
      {
         TweenLite.killTweensOf(tipsImageContainer);
         TweenLite.killTweensOf(dialogBaloon);
      }
      
      public function _2381b76b21d53e8dc993bc29() : void
      {
         var _loc1_:DisplayObjectContainer = DisplayObjectContainer(background.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜掋捛掟捦捊描挰捗捤揑控捏挔掮持掄挜捸挌揷捬揞挰掹掖揇捴揽掄捙挝握掆掗捺推挛","掖挬挝按掛捩振掕掔提揝掿挨捛捻揍")));
         this._7f76898fd2d60d9899204fa9(_loc1_,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         var _temp_2:* = this;
         var _temp_1:* = -441142104 ^ -163976268 ^ 0x157E491A ^ 0x06F31606;
         _temp_2.centerToRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
      }
      
      private function _7f76898fd2d60d9899204fa9(param1:DisplayObjectContainer, param2:int, param3:int) : void
      {
         var _loc4_:DisplayObject = null;
         _loc4_ = param1.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧勲加剙刯刚剄剧勒勰勍剓勤剑","剏刼募勄刓刏勋剱刘刦刋剮劯勖刊前"));
         var _loc5_:DisplayObject = param1.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劗劀刾创刹劋勿劂劍剨劯劌剋刽勄刞刲勍刪剒","刵劕勯劫刅刖剋勪刿剟劾劄刑劼劙劳"));
         var _loc6_:DisplayObject = param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၉႐ၹჷႨႋငႃႰၹჲႚဴၢၖდႿჿტვ","႖ၓခႌჁၲဒთႈၦ။ႈ၃႗ၜჂ"));
         var _loc7_:Rectangle = _loc5_.getRect(DisplayObjectContainer(_loc5_).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劷刪刯勷剂勸剷剃劸勅動刽刈劁剔刑利勩剝力勍劒刈剂勧判副刞剐列勅刳刣勪劤剟刳勏勭劓劘到","劺剄剆则劎剫劚判勋动勚剰券剔切劘")));
         if(_loc7_.width <= param2)
         {
            _loc4_.x = _loc5_.x = _loc6_.x = -(param2 - _loc7_.width) / (-927003220 ^ -950465643 ^ 0x482DBC83 ^ 0x47CBBAB8);
            _loc4_.width = _loc5_.width = _loc6_.width = param2;
         }
         if(_loc7_.height <= param3)
         {
            _loc4_.y = -_loc4_.height;
            _loc4_.height = _loc6_.height = (param3 - _loc7_.height) / (0x2500DFA1 ^ -779741985 ^ 0x59784662 ^ -1375826658);
         }
      }
      
      private function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this._3d35206e41147b98a9825d65(param1,param2,param3,param4);
      }
      
      public function _3d35206e41147b98a9825d65(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Number = Math.min(param3 / this._95a9901708828ececd97e6e3.x,param4 / this._95a9901708828ececd97e6e3.y);
         this.scaleX = this.scaleY = _loc5_;
         this.x = param1 + (param3 - this._95a9901708828ececd97e6e3.x * _loc5_) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捆揆挈挭持掩捍揼揌掬挒捔捧揣挺挕挏捊掽捺挂捴挠揯","挐揃揘掾捄挖掤持揘掎挵挡捹援损挰");
         this.y = param2 + (param4 - this._95a9901708828ececd97e6e3.y * _loc5_) * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劆劑刯劈劝刉努剹务劆刮刁劶勘勶刳剟勂劸勂剑勣刊剫","勓労劦勶劾勷勢剝劊勛剓剃刪勘勵办");
      }
      
      public function _c303a207e4e800ce00f7bd66() : void
      {
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0x2A12FC01 ^ 0x3570B150 ^ -570419275 ^ -816773900;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1002592843 ^ -1740648891 ^ -1896472396 ^ -590932652))
            {
               case 0:
                  this._ffad6e95acf8f7336616fb1c();
                  if(this._825cf738e2083a62c588db26.hasEventListener(TimerEvent.TIMER_COMPLETE))
                  {
                     _loc1_ = 0x2F3607CA ^ 0x0DE9E32C ^ -934286778 ^ -459059023;
                  }
                  else
                  {
                     _loc1_ = -1789231651 ^ -872560821 ^ -82009376 ^ -1417132444;
                  }
                  break;
               case 1:
                  this._825cf738e2083a62c588db26.removeEventListener(TimerEvent.TIMER_COMPLETE,this._c6f6356efe8e0ceae51e958d);
                  _loc1_ = 0x22595FA5 ^ 0x1034442B ^ 0x4FC2DA4F ^ 0x739C9FD3;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


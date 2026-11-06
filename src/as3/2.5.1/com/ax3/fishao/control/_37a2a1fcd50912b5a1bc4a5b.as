package com.ax3.fishao.control
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._8365e76620d1837a83b767d1;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils._9ff64702cc7447885dafed5f;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   
   public class _37a2a1fcd50912b5a1bc4a5b
   {
      
      private static var _c09b4ecd4dca0133eedd282c:_37a2a1fcd50912b5a1bc4a5b;
      
      private static var _6077b950abae45bbdc8544b0:IEventDispatcher;
      
      private var _fba99717c598b78ff9e5ceb1:Stage;
      
      private var _5d1f07a4ab0e98d1b58dbd2b:Sprite;
      
      public function _37a2a1fcd50912b5a1bc4a5b()
      {
         super();
         if(_c09b4ecd4dca0133eedd282c != null)
         {
            throw new Error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揝揙捿揟捃挚掞掅揓揥揈掘掞挛掺捥捍捪掓掶掬掍揦捘揂掞揜按捵捫掔掸掮掅揯挾捠挴掛挼挕揾掂捲掻揁捔损掸揾掬掑捜挛捃挵","捙挟捿揾挤捎挨掬捩掗捉换掌捪捼损"));
         }
      }
      
      public static function getInstance() : _37a2a1fcd50912b5a1bc4a5b
      {
         var _loc1_:int = 0x5783BE1C ^ 0x1B9ABA71 ^ 0x68FD945E ^ -1724437113;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1358435418 ^ 0x5F0F987D ^ -1320388533 ^ -57166300))
            {
               case 0:
                  if(_c09b4ecd4dca0133eedd282c == null)
                  {
                     _loc1_ = -1186378223 ^ -2003172934 ^ 0x58172350 ^ -736636595;
                  }
                  else
                  {
                     _loc1_ = -745232255 ^ 0x024002FE ^ 0x0CA11059 ^ 0x60A60793;
                  }
                  break;
               case 1:
                  return _c09b4ecd4dca0133eedd282c;
               case 2:
                  _c09b4ecd4dca0133eedd282c = new _37a2a1fcd50912b5a1bc4a5b();
                  _loc1_ = 0x08265019 ^ 0x38C38077 ^ -175387842 ^ 0x78BDA6E5;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get isFullscreenNow() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._fba99717c598b78ff9e5ceb1 != null)
         {
            _loc1_ = this._fba99717c598b78ff9e5ceb1.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE || this._fba99717c598b78ff9e5ceb1.displayState == StageDisplayState.FULL_SCREEN;
         }
         return _loc1_;
      }
      
      public function init(param1:IEventDispatcher, param2:Stage, param3:Sprite) : void
      {
         this._fba99717c598b78ff9e5ceb1 = param2;
         this._5d1f07a4ab0e98d1b58dbd2b = param3;
         this._fba99717c598b78ff9e5ceb1.addEventListener(Event.RESIZE,this._2e3d4148bfd4cfbadf0d0843);
         _6077b950abae45bbdc8544b0 = param1;
         this._32f4dc355562bd540e64c24c();
      }
      
      private function _2e3d4148bfd4cfbadf0d0843(param1:Event) : void
      {
         this._32f4dc355562bd540e64c24c();
      }
      
      private function _32f4dc355562bd540e64c24c() : void
      {
         this._62d26c1f7bd974744bdcc582();
         this._a728d0d6366c0e1d85b76b36();
         this._4dfb13c22f47451778da6871();
      }
      
      private function _4dfb13c22f47451778da6871() : void
      {
         this._5d1f07a4ab0e98d1b58dbd2b.graphics.clear();
         this._5d1f07a4ab0e98d1b58dbd2b.graphics.beginFill(Config.GAME_BACKGROUND);
         var _temp_2:* = this._5d1f07a4ab0e98d1b58dbd2b.graphics;
         var _temp_1:* = -265116530 ^ -2141469909 ^ 0x6F86E397 ^ 0x1FEF8432;
         _temp_2.drawRect(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._5d1f07a4ab0e98d1b58dbd2b.graphics.endFill();
      }
      
      private function _a728d0d6366c0e1d85b76b36() : void
      {
         _6077b950abae45bbdc8544b0.dispatchEvent(new _8365e76620d1837a83b767d1(Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
      }
      
      public function _62d26c1f7bd974744bdcc582() : void
      {
         Cc.log(this + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掕捫掽揷揕捛捖揤揶揋掳掋揳掩揞揖掌挆挟掶掺捦掗揕揳揌揎掾掩揩挅揷捼措揼捫掱掹捈捶掠掾挼捦捜揭掦揁揵捬挺掹捘揀揶持揙揾掊挗捚按捘接捍捳措措捫掎揨挻掆挧揧掸挎捙掽捵捓揃挩掻掺捍揨挨挙揄掲掰揆掉","捲挔掼掸捪掏揧描捝指挳挈挽揪挬捻") + this._fba99717c598b78ff9e5ceb1.stageWidth + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勵労剓劾剉刼勁勨劷剆刖劚刼劓到勽剝勒劬劸勣剷刀初勶動剉剡勉刿刘刾剑勻剁剽刚勍刃劕勍勼刜劍剟勾勰勤剔刚劓勛","劜劤剹办剂刹刭剢剾勉剑勃勐刔刯剷") + this._fba99717c598b78ff9e5ceb1.stageHeight + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႈ၏႖ၫဈဲჅႂႡၹ","ၩဲၯ၍အၗცၻჸ်ႢჯႦႤဍჸ"));
         Config.SCREEN_WIDTH = this._fba99717c598b78ff9e5ceb1.stageWidth;
         Config.SCREEN_HEIGHT = this._fba99717c598b78ff9e5ceb1.stageHeight;
         Config.FULLSCREEN = this._fba99717c598b78ff9e5ceb1.displayState == StageDisplayState.FULL_SCREEN || this._fba99717c598b78ff9e5ceb1.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
         this._fba99717c598b78ff9e5ceb1.scaleMode = StageScaleMode.NO_SCALE;
      }
      
      public function _3b9886d2f831fd4fd8207ecd() : void
      {
         var flashPlayerVersion:Number = NaN;
         if(this.isFullscreenNow)
         {
            this._fba99717c598b78ff9e5ceb1.displayState = StageDisplayState.NORMAL;
         }
         else
         {
            flashPlayerVersion = _9ff64702cc7447885dafed5f._a839c99929ee89834474d281();
            Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႁ႐ျဧႥ႑ႆ჋ဢေႃჵၗႻၧჃჃბႹჍჰႍვဍ၂ၣ႞Ⴜၷ႟ဴဎၮၷဝჳ၏ၚႧဎ჻၍ჿႤႶၡ","ၿ჏ყ၈႖ႃၪგဂဨႣၹဋႸၛူ") + flashPlayerVersion);
            if(flashPlayerVersion >= _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჷဤုჰၔ၈჌ွီი჌უჷ၌Ⴌၠဏညი႙ငჵဝီ","თၫၗსႧჽရძီ၏ၡნႁဠႽႊ"))
            {
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჋ႈჁဝჷဃ၀ჰၺၐ႙ၰၟဖეၗჸႋဣ၏აၠႱႿჿ႐ႆူၯဲၽ႔ၧဌႌ၎ဨქ၈ცရဉၲၺယေჸႦၨ၄မწჅშႨგဋნჹႈၟღ႓჎ဓဪႝჿဇ႔ၣდၭဣႳႺီ၎ვ၇၏၊ჽသდ္ခსცဍဂၧဩხႳက","ၓအ႘းၕၰၣ႙ჴ၆჈ႶႩီၰჲ"));
               try
               {
                  this._fba99717c598b78ff9e5ceb1.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
               }
               catch(e:Error)
               {
                  Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ံါၹႭ၂၊အ჈ლၠျႀဣႍ჊მჽ႓ၧႂჴၸဪႨ႔ၭხჼნႉႜჿႚဝჃါ။ფီჺဋပჇჶ","ဎ჌ჲာထ့ၿႏჭჄလ႔၊၅ჵၝ") + e);
                  GameSwf._6b2ea987f29b60cd755db2f5();
               }
            }
            else
            {
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၉လၹၜႩ჻ჺူၘဧဆნၦႥၓဧႦႋპჰဖ၇ဗႚိრკႫႺ႕ဧჱ჌჈ႭၳႳႅჴჸႳခႠაၓႽ჏჊ြ၄ჩჃၫႡျလှ၌Ⴗာၙြႜဢ႟ၐၑည႗ჲაႷ","ႾႷჴუ၆჊ၑ჋რ်ဣ၇ჽၦဴၞ"));
               this._fba99717c598b78ff9e5ceb1.displayState = StageDisplayState.FULL_SCREEN;
            }
         }
      }
      
      public function _e1d35b718c26e3d3956ff591() : void
      {
         var _loc1_:int = 0x5907A97A ^ -1484346472 ^ 0x58EA3F45 ^ 0x2B101D12;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1269842127 ^ -1543692823 ^ -586591078 ^ 0x47C0D6F7))
            {
               case 0:
                  if(this.isFullscreenNow)
                  {
                     _loc1_ = 0x6DE6EBFA ^ 0x4DDD3D40 ^ -1148745301 ^ 0x16C77FA6;
                  }
                  else
                  {
                     _loc1_ = -1434912364 ^ -1770357653 ^ 0x21BD7C11 ^ -1866147494;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._fba99717c598b78ff9e5ceb1.displayState = StageDisplayState.NORMAL;
                  _loc1_ = 0x6DF61149 ^ -1022478840 ^ 0x74672A87 ^ 0x57E42D72;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


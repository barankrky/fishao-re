package com.ax3.fishao.display.settings
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.control._37a2a1fcd50912b5a1bc4a5b;
   import com.ax3.fishao.control.managers._546478a0ebe6f447d8faeff7;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.club.club_inside._e9af49bc0716fd8d9302dd14;
   import com.ax3.fishao.view.dialogs.club.club_outside._fb60627e993e6700597a9c2e;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.events.model._fd60b7c666c8e6347c1e1c74;
   import flash.events.DataEvent;
   import flash.events.Event;
   
   public class _7255e5c9eabc6b9827df0e56 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _bec960145a3571f963e74364:_a743682c1543c38af612eb6f = new _a743682c1543c38af612eb6f(this);
      
      private var _fb1cf3f2ffb96d0a7998fa64:Boolean;
      
      public function _7255e5c9eabc6b9827df0e56()
      {
         super(this._bec960145a3571f963e74364);
         this.init();
      }
      
      public function set buttonsIsVisible(param1:Boolean) : void
      {
         this._bec960145a3571f963e74364.buttonSound.source.visible = param1;
         this._bec960145a3571f963e74364.buttonMusic.source.visible = param1;
         this._bec960145a3571f963e74364.buttonSettings.source.visible = param1;
         this._bec960145a3571f963e74364.buttonFullscreen.source.visible = param1;
         this._bec960145a3571f963e74364.buttonPling.source.visible = param1;
         this._bec960145a3571f963e74364.buttonEvents.source.visible = param1 && Boolean(app.user.isEventsAvailable);
         this._bec960145a3571f963e74364.buttonFriends.source.visible = param1 && !app.user.isGuest;
         this._bec960145a3571f963e74364.buttonClubs.source.visible = param1 && !app.user.isGuest;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         var _loc2_:int = 0x451707DA ^ -1852829596 ^ 0x2F298F53 ^ -214463203;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1961871247 ^ 0x584F4F7E ^ -953204579 ^ 0x1CE92260))
            {
               case 0:
                  return;
               case 1:
                  this._fb1cf3f2ffb96d0a7998fa64 = param1;
                  this._07060a44f09fbc2c039c4496();
                  this._ca4acd65062aeb22f5770f99();
                  return;
               case 2:
                  if(this._fb1cf3f2ffb96d0a7998fa64 == param1)
                  {
                     _loc2_ = -327699164 ^ 0x52A4D394 ^ -1742401745 ^ 0x2E6F7C6D;
                  }
                  else
                  {
                     _loc2_ = -879438745 ^ 0x728D840A ^ -691884395 ^ 0x6742EB0B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get viewSettings() : _a743682c1543c38af612eb6f
      {
         return this._bec960145a3571f963e74364;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_518280cac6f3ae016ad4f350 = null;
         var _loc4_:_e9af49bc0716fd8d9302dd14 = null;
         var _loc5_:_fb60627e993e6700597a9c2e = null;
         var _loc6_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!this._fb1cf3f2ffb96d0a7998fa64)
         {
            return _loc6_;
         }
         var _loc7_:_2b7a3cb04ffcd1e3a128f15b = param1 as _2b7a3cb04ffcd1e3a128f15b;
         if(_loc7_ != null)
         {
            _loc7_.isActive = !_loc7_.isActive;
         }
         switch(param1)
         {
            case this._bec960145a3571f963e74364.buttonModerator:
               §§push(0x60AAA382 ^ 0x4DAF580A ^ -1018075919 ^ -296444039);
               break;
            case this._bec960145a3571f963e74364.buttonMusic:
               §§push(-1696190140 ^ -418347495 ^ 0x584383FE ^ 0x25B534A2);
               break;
            case this._bec960145a3571f963e74364.buttonSound:
               §§push(-1870592592 ^ 0x66E65098 ^ 0x760AF078 ^ -2140297902);
               break;
            case this._bec960145a3571f963e74364.buttonFullscreen:
               §§push(0x410FFA65 ^ -356063574 ^ -1553590494 ^ 0x08AF0BEE);
               break;
            case this._bec960145a3571f963e74364.buttonSettings:
               §§push(-1146556210 ^ 0x3F845B9E ^ 0x43768D98 ^ -950393140);
               break;
            case this._bec960145a3571f963e74364.buttonPling:
               §§push(0x376298CF ^ 0x68602630 ^ -1818746911 ^ -862281445);
               break;
            case this._bec960145a3571f963e74364.buttonEvents:
               §§push(0x67174223 ^ -1955764958 ^ -598338354 ^ 0x302C33C9);
               break;
            case this._bec960145a3571f963e74364.buttonFriends:
               §§push(-1646610243 ^ 0x316EDBB1 ^ -882520765 ^ 0x67D1AE48);
               break;
            case this._bec960145a3571f963e74364.buttonClubs:
               §§push(0x5CB38BCF ^ 0x527D8C21 ^ -506684022 ^ -285042068);
               break;
            default:
               §§push(-632788428 ^ 0x1D998909 ^ 0x6BB7C504 ^ -1402591696);
         }
         switch(§§pop())
         {
            case 0:
               app.dialogFactory._71700cb8e34900ff96aa9313().show();
               _loc6_ = true;
               break;
            case 1:
               GameSwf.settings.music = this._bec960145a3571f963e74364.buttonMusic.isActive;
               _loc6_ = true;
               break;
            case 2:
               GameSwf.settings.sfx = this._bec960145a3571f963e74364.buttonSound.isActive;
               _loc6_ = true;
               break;
            case 3:
               _37a2a1fcd50912b5a1bc4a5b.getInstance()._3b9886d2f831fd4fd8207ecd();
               _loc6_ = true;
               break;
            case 4:
               if(!GameSwf._d3e1b275b210647ff7fe10f6())
               {
                  GameSwf.instance._b9427ab1ea172230932fc915();
                  _loc6_ = true;
               }
               break;
            case 5:
               if(!GameSwf._d3e1b275b210647ff7fe10f6())
               {
                  app.dialogFactory._43eef82cbfde434521a66e7e().show();
                  _loc6_ = true;
               }
               break;
            case 6:
               app.dialogFactory._35bb007cf346358de762d4a6().show();
               _loc6_ = true;
               break;
            case 7:
               app.dialogFactory._128535dad3f1dfaf0600eb01().show();
               _loc6_ = true;
               break;
            case 8:
               _loc3_ = GameSwf.instance.managerClubs;
               if(_loc3_.userInClub)
               {
                  _loc4_ = app.dialogFactory._a0d214350fb42da9f32557e6(_e9af49bc0716fd8d9302dd14);
                  _loc4_.entity = _loc3_.userClub;
                  _loc4_.show();
               }
               else
               {
                  _loc5_ = app.dialogFactory._a0d214350fb42da9f32557e6(_fb60627e993e6700597a9c2e);
                  _loc5_.show();
               }
               break;
            default:
               Debug.assert(false);
         }
         return _loc6_;
      }
      
      private function _1c2e9f157639e4d2df1ae160(param1:_720429110fd3cfc01812b5a0) : void
      {
         Debug.assert(app.user.isModerator,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳဂျအႊ႒Ⴜအၝၷრჾၲိ၊၁ჹၛႅ၌ႉჶყ၄ႁႬယခგႿ့ၧჂ႕း჎သჄထေၵ့ჸဳှရႆၵბၦႛვბႳ၃၃ၵ၇ၴႛၨဇჲဉჴဈ႖ဂ႖Ⴥၙခဎခဟဥჿၪთၛ၊ႀႼ၌ဇႃဲထၐၞၔငჵ႖კႬဤြၚၗြႪပიၪဒၫჽႲხႴცဠဏქာၫ၏ფၙ့ၴჩႫါဏႿიဥაဝჹဲယၞေჷ၉ხხႧჶၣွဃၥာၧၽაၹჍვსႥჀၙဒ္႘Ⴋဧ၊ၨၺႹ။ဳჃ჋ჟ႑ဪၳၔၨႺჿფၬႆრဖၩႰှသႏၬႯႃ႖჎။႖ၝၕဒၒခჩႼ၁ბႌၕ","ၟႼ႖ဦႨ၃ჽ჏ၴခჀ့჈ჰ့჌"));
         this._bec960145a3571f963e74364.buttonModerator.amount = app.moderatorModel.amountOfNewReports.value;
      }
      
      private function _d8b492e2902b34d5b0d56979(param1:Event) : void
      {
         this.update(_6b63fd0a4028eb279b227831.ECU_USER_LEVEL);
      }
      
      private function init() : void
      {
         var _loc1_:int = -1638376662 ^ -856759815 ^ -1784788521 ^ -286220369;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-456979950 ^ -1010210088 ^ 0x0606582E ^ 0x08D4544A))
            {
               case 0:
                  this.update(_6b63fd0a4028eb279b227831.ECU_USER_LEVEL);
                  this.update(_6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_SHOWN);
                  if(Debug.DISABLE_MUSIC)
                  {
                     _loc1_ = 0x070CA19E ^ -1698576526 ^ 0x1FDA61A6 ^ -1412469792;
                  }
                  else
                  {
                     _loc1_ = 0x573D2DD4 ^ -454355496 ^ 0x700E90F0 ^ -369048495;
                  }
                  break;
               case 1:
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.moderatorModel.amountOfNewReports,_720429110fd3cfc01812b5a0.CHANGE,this._1c2e9f157639e4d2df1ae160);
                  this._bec960145a3571f963e74364.buttonModerator.source.visible = true;
                  this._bec960145a3571f963e74364.buttonModerator.amount = app.moderatorModel.amountOfNewReports.value;
                  _loc1_ = 0x5825A89F ^ 0x095727FF ^ -716042979 ^ -1376194861;
                  break;
               case 2:
                  this._bec960145a3571f963e74364.buttonModerator.source.visible = false;
                  _loc1_ = -148759347 ^ -734759626 ^ -1027322130 ^ -938849349;
                  break;
               case 3:
                  return;
               case 4:
                  GameSwf.settings.music = false;
                  _loc1_ = -1561810869 ^ -1690386785 ^ 0x44050DCF ^ 0x540B77B6;
                  break;
               case 5:
                  this._fb1cf3f2ffb96d0a7998fa64 = true;
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.settings,_546478a0ebe6f447d8faeff7.MUSIC_VOLUME,this._07060a44f09fbc2c039c4496);
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.settings,_546478a0ebe6f447d8faeff7.SFX_VOLUME,this._ca4acd65062aeb22f5770f99);
                  this._07060a44f09fbc2c039c4496();
                  this._ca4acd65062aeb22f5770f99();
                  app.user._f1f7d7e8bb164ad4b97c63c5(this._d8b492e2902b34d5b0d56979);
                  if(app.user.isModerator)
                  {
                     _loc1_ = 0x38D356BE ^ 0x5D9F622B ^ 0x5E6B8C10 ^ 0x12FFD42A;
                  }
                  else
                  {
                     _loc1_ = 0x691C2248 ^ 0x0F804559 ^ -1899220594 ^ -1048036813;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set activateInTutorial(param1:Boolean) : void
      {
         this._bec960145a3571f963e74364.buttonFullscreen.isEnabled = param1;
         this._bec960145a3571f963e74364.buttonSettings.isEnabled = param1;
         this._bec960145a3571f963e74364.buttonPling.isEnabled = param1;
         this._bec960145a3571f963e74364.buttonFriends.isEnabled = param1;
         this._bec960145a3571f963e74364.buttonClubs.isEnabled = param1;
         this._bec960145a3571f963e74364.buttonEvents.isEnabled = param1;
      }
      
      private function _ca4acd65062aeb22f5770f99(param1:DataEvent = null) : void
      {
         this._bec960145a3571f963e74364.buttonSound.isActive = GameSwf.settings.sfx;
      }
      
      private function _07060a44f09fbc2c039c4496(param1:DataEvent = null) : void
      {
         this._bec960145a3571f963e74364.buttonMusic.isActive = GameSwf.settings.music;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:_fd60b7c666c8e6347c1e1c74 = null;
         var _loc3_:_67f8febc099eaa05c48aa41e = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_END:
               §§push(-1726230268 ^ -614528864 ^ -781723814 ^ -1826418946);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START:
               §§push(0x66CCF9A0 ^ 0x2372CB18 ^ -488629804 ^ -1487000723);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_SHOWN:
               §§push(-493482991 ^ 0x67B52BB0 ^ 0x1C8B13A6 ^ -1717029883);
               break;
            case _6b63fd0a4028eb279b227831.ECU_USER_LEVEL:
               §§push(-1170686291 ^ 0x6D01E515 ^ 0x5186C581 ^ -2034262470);
               break;
            default:
               §§push(0x6EF3C541 ^ -791187255 ^ -1031623086 ^ 0x7CA61BDE);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
               _loc2_ = GameSwf.instance.managerEvents;
               this._bec960145a3571f963e74364.viewArrowEvents.source.visible = _loc2_.eventCurrent != null && Boolean(app.user.isEventsAvailable) && !_loc2_.isFirstEventShown;
               break;
            case 3:
               this._bec960145a3571f963e74364.buttonEvents.source.visible = app.user.isEventsAvailable;
               this._bec960145a3571f963e74364.buttonFriends.source.visible = !app.user.isGuest;
               this._bec960145a3571f963e74364.buttonClubs.source.visible = !app.user.isGuest;
               _loc3_ = GameSwf.currentLocationDialog;
               if(_loc3_ != null)
               {
                  var _temp_4:* = _loc3_.gui;
                  var _temp_3:* = -1518554658 ^ -899379177 ^ -1046471986 ^ -1363657977;
                  _temp_4.centerToRect(_temp_3,_temp_3,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
               }
               break;
            default:
               Debug.assert(false);
         }
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         app.user._d448bc64b43862324feeb1d4(this._d8b492e2902b34d5b0d56979);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,GameSwf.settings,_546478a0ebe6f447d8faeff7.MUSIC_VOLUME,this._07060a44f09fbc2c039c4496);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,GameSwf.settings,_546478a0ebe6f447d8faeff7.SFX_VOLUME,this._ca4acd65062aeb22f5770f99);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.moderatorModel.amountOfNewReports,_720429110fd3cfc01812b5a0.CHANGE,this._1c2e9f157639e4d2df1ae160);
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}


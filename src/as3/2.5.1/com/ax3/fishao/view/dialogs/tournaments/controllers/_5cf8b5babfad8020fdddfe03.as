package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments._9adbacee9e79da53f4cf55bb;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import com.ax3.fishao.view.dialogs.tournaments.models._87c5db8b779e4199260f7152;
   import com.ax3.fishao.view.dialogs.tournaments.models._a1842a5c36511100aec6f1ca;
   import com.ax3.fishao.view.dialogs.tournaments.views._4ea1ddec62b65b6636ab91c8;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protocol.api.base.ResponseError;
   
   public class _5cf8b5babfad8020fdddfe03 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _f5c9bf4e75c2c9facd07498e:_4ea1ddec62b65b6636ab91c8;
      
      private var _ac67e796df9201f47b718c3f:_9adbacee9e79da53f4cf55bb;
      
      private var _f9ed94bb31d8ca5a109909c4:_2a31502166ae419b5332a782;
      
      private var _7d6a632372292df2794c8cb4:_77d470bde5bc742159a33fba;
      
      private var _c856e44c6236c9e6bc0bb188:Timer;
      
      public function _5cf8b5babfad8020fdddfe03(param1:DisplayObjectContainer)
      {
         this._f5c9bf4e75c2c9facd07498e = new _4ea1ddec62b65b6636ab91c8(this,param1);
         super(this._f5c9bf4e75c2c9facd07498e);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:Object = param1;
            switch(this._f5c9bf4e75c2c9facd07498e.buttonReady === _loc4_ ? -676558744 ^ 0x688D3FAA ^ 0x47C1B1FA ^ -119536072 : 0x1B339238 ^ -1465542152 ^ -146360444 ^ 0x44D0BC45)
            {
               case 0:
                  this._3d825c899e7ad1d6ad2eaa13();
                  break;
               default:
                  Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧勏刉劇劻创刧勿努剠勸刼勰別勆勃刉剞刯加剆勅劷刷劼刜删刃劌勡剈劆劗剕分勩勾剒刂刳勉勰劋刪删劏勫劑勠勷励刹剚刐動刪勇助剿勈勠勣剫劎剢勊分刍劎刳勳到剠劉刻勷剔劶刷剛刽勪募劥剹刈刽劑劧剝勛募劦到劗剦削刮刃刎劘勳削勮剎列删勶勗劈则剬劃劮刖刋勴剶制勣判剪募剷剺剳刳剪劐剱刬勋勎勳剢則力劦劔劜刻删刨勽劧勾劰勦则劧刿刜","剱劇勤剪勹勪勠剃劤刑劃勴劖剥劔券") + param1.toString());
            }
         }
         return _loc3_;
      }
      
      private function _3d825c899e7ad1d6ad2eaa13() : void
      {
         this._f5c9bf4e75c2c9facd07498e.buttonReady.disable();
         this._ac67e796df9201f47b718c3f.sendReadyState(this._cb38889cea80480725a009dd);
      }
      
      private function _cb38889cea80480725a009dd(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseError = param1 as ResponseError;
         if(_loc2_ != null)
         {
            this._f5c9bf4e75c2c9facd07498e.buttonReady.enable();
         }
      }
      
      private function _dfd204346c59d99e8d454798(param1:TimerEvent) : void
      {
         this._81a34e046970d196c978a82f();
      }
      
      private function init() : void
      {
         this._ac67e796df9201f47b718c3f = GameSwf.instance.managerTournaments;
         this._f9ed94bb31d8ca5a109909c4 = this._ac67e796df9201f47b718c3f.tournamentCurrent;
         if(this._f9ed94bb31d8ca5a109909c4.state != _87c5db8b779e4199260f7152.ETS_SIGNING || this._f9ed94bb31d8ca5a109909c4.timeLeftStart <= (0x05C8FF36 ^ 0x65328C59 ^ 0x7EBAEDB1 ^ 0x1E409EDE))
         {
            return;
         }
         this._7d6a632372292df2794c8cb4 = new _77d470bde5bc742159a33fba(this._f5c9bf4e75c2c9facd07498e.viewMembers);
         this._67ba527a8a40aa014fdfd158();
         this._38ce4270182e85eb432130bb();
         this._81a34e046970d196c978a82f();
         this.update(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED);
      }
      
      private function _67ba527a8a40aa014fdfd158() : void
      {
         var _loc1_:String = this._f9ed94bb31d8ca5a109909c4.state;
         switch(_87c5db8b779e4199260f7152.ETS_SIGNING === _loc1_ ? 0x64B2A714 ^ 0x2CDAEC1A ^ -1669901262 ^ -736157892 : 0x3A21C8C1 ^ 0x028ED743 ^ 0x3A6ED7E3 ^ 0x02C1C860)
         {
            case 0:
               this._f5c9bf4e75c2c9facd07498e.dialogTitle = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_NAME.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,this._f9ed94bb31d8ca5a109909c4.type));
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဉႏၸხၰ႓ွၦჭဋ჈კဋႿဌၤၞၿდဇဢჷဥၼ႕჊ၪმჀჺჿၴႽႜၸიჀႦႥქၧგှႽ၀၃ႃၲၜႀႊါၶိၜႷ၍ၩႤზჼႵჀ჈ၦრ၍ၨ။ႲႼႳၽთဍႬၓၚၑဠဧႿၑ႟၄ეၤဲძჶ჌ႼဓჟလခၗႫ၍Ⴘ႔ၹე၊ွგႧျၷჍ်ჹမႮၺႆၾႤႇဈჍႣအႡဨႬၨჄၷဦფ჈჎თီ၆းუჶၘ჊ၷညိႃკქထျဒေၘၰၾ","ჁၱႩჀဠსၤဓႮႁဉႧႴဗိဳ") + this._f9ed94bb31d8ca5a109909c4.type);
         }
         this._f5c9bf4e75c2c9facd07498e.dialogTitle = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_TOURNAMENT_NAME.replace(_706c123ff0b2d45829c1bb3e.ESTS_TYPE,this._f9ed94bb31d8ca5a109909c4.type));
      }
      
      private function _81a34e046970d196c978a82f() : void
      {
         var _loc1_:int = this._f9ed94bb31d8ca5a109909c4.timeLeftStart;
         var _loc2_:int = this._f9ed94bb31d8ca5a109909c4.type == _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN ? -1973838402 ^ -1389335516 ^ 0x42C255CD ^ 0x65ABA452 : 0x5A571B56 ^ 0x24D9BD34 ^ -2068822199 ^ -96542421;
         if(_loc1_ <= _loc2_)
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._f687dfac11484f757ff7d8b1(_22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_START).close();
         }
         else
         {
            this._f5c9bf4e75c2c9facd07498e.timeStart = TimeConverter.toHMSString(TimeConverter.fromSeconds(_loc1_));
         }
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED === _loc2_ ? 0x779DBA49 ^ 0x70A66F3D ^ -623926176 ^ -571182828 : 0x35983AC4 ^ -1490725778 ^ 0x2D76AD49 ^ -1077165086)
         {
            case 0:
               this._5aca6e3bb6b8c4b7c30fc01e();
               if(this._7d6a632372292df2794c8cb4 != null)
               {
                  this._7d6a632372292df2794c8cb4.update(param1);
               }
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劼刑勿勑前勴剮剷剀剈剬刡剹勪則刴劲勵刢勍助剓剮勨刎劫劜勀功刼剘剼剖刹劻劻劶刬劜創刖刕劳劊剉剎割劮募劲剀勺劦刿剀劝劳勣剴別刡勬勠劾勾制刵勿勮勛劖则劍剭剬勗剒刵勑勻勹剁勤劎办勻劾切刼劼勣功劰勶勓劼剸刮剭刱剤劶剟刷剒剁刽勽勄創剆刎勒劊勵刜劘劏割剨剨劗別功劬劓剄剛则勘劌勠刊刬劸剌務劮勵劢努劽刦勁剧勂勁劐勾刨勱劖劂勬刂剺勅剆刦効劋刄","劷勦劑勎劘劤副励勐剡刭勑劤劧剽勪") + param1);
         }
      }
      
      private function _5aca6e3bb6b8c4b7c30fc01e() : void
      {
         var _loc1_:_4a26c3e739ada00470a83032 = this._f9ed94bb31d8ca5a109909c4._368600b8e7f2131bf5cf83af(app.user.username);
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.isReady)
         {
            this._f5c9bf4e75c2c9facd07498e.buttonReady.disable();
         }
         else
         {
            this._f5c9bf4e75c2c9facd07498e.buttonReady.enable();
         }
      }
      
      private function _38ce4270182e85eb432130bb() : void
      {
         this._f24c1183f1b7bfbe30ad4d99();
         this._c856e44c6236c9e6bc0bb188 = new Timer(0x6E2D9CE3 ^ -32366972 ^ -1617737849 ^ 0x0FACC414);
         this._c856e44c6236c9e6bc0bb188.addEventListener(TimerEvent.TIMER,this._dfd204346c59d99e8d454798);
         this._c856e44c6236c9e6bc0bb188.start();
      }
      
      private function _f24c1183f1b7bfbe30ad4d99() : void
      {
         var _loc1_:int = 0x7F877DF5 ^ -28371587 ^ 0x059F4CC3 ^ -617175725;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1098590281 ^ 0x1050EE53 ^ -1027697160 ^ 0x330B2D04))
            {
               case 0:
                  if(this._c856e44c6236c9e6bc0bb188 == null)
                  {
                     _loc1_ = -1974739466 ^ -1415591455 ^ 0x2C41F2C7 ^ 0x52F467C9;
                  }
                  else
                  {
                     _loc1_ = -522769998 ^ 0x4B034819 ^ 0x2396B5E1 ^ -685550256;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._c856e44c6236c9e6bc0bb188.removeEventListener(TimerEvent.TIMER,this._dfd204346c59d99e8d454798);
                  this._c856e44c6236c9e6bc0bb188.stop();
                  this._c856e44c6236c9e6bc0bb188 = null;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         var _loc1_:int = -1308354458 ^ 0x62B0FFC9 ^ 0x0E3ACE08 ^ 0x3DF17E5D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6E9BCA1F ^ -871546117 ^ 0x68F2531C ^ 0x291B8C02))
            {
               case 0:
                  this._f24c1183f1b7bfbe30ad4d99();
                  if(this._7d6a632372292df2794c8cb4 != null)
                  {
                     _loc1_ = -1364854066 ^ -1904969586 ^ -1680205611 ^ 0x5874CD6D;
                  }
                  else
                  {
                     _loc1_ = -1748694873 ^ -437876700 ^ 0x30646ADC ^ -1590116956;
                  }
                  break;
               case 1:
                  this._ac67e796df9201f47b718c3f = null;
                  this._f9ed94bb31d8ca5a109909c4 = null;
                  super._90eac9ca552fe54c2ca0299f();
                  return;
               case 2:
                  this._7d6a632372292df2794c8cb4._90eac9ca552fe54c2ca0299f();
                  this._7d6a632372292df2794c8cb4 = null;
                  _loc1_ = 0x22B246C5 ^ -118739921 ^ 0x49DBE47F ^ 0x70FAD96E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


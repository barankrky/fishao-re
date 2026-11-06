package com.ax3.fishao.locations.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations._c664ae58f019f215539f81c5;
   import com.ax3.fishao.locations.chars.commands._b03601562e400e8ab155eadc;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.entries._0d47696161f1136a4c3be130;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.npc._73a1260486a2df0faab5b212;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import com.ax3.fishao.model.*;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.jss.requests.server._e872d2b4bd5992624aff99ce;
   import com.ax3.utils._271c223e62b218917ef50ff1;
   import com.ax3.utils._aa46d9061fb6637c5f30405a;
   import com.junkbyte.console.Cc;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import protocol.api.base.ResponseWithData;
   import protocol.api.miniGameBob.start.ResponseMiniGameBobStart;
   import protocol.api.miniGameBob.stop.ResponseMiniGameBobStop;
   import protocol.api.npc.action.ResponseNpcAction;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.sr.EnterRaftResp;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.LeaveRaftResp;
   import protocol.sr.MvUsrToResp;
   import protocol.sr.MvUsrsToResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.WeatherChangedResp;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class _4039c287ddb4ef46ab65ab0e extends EventDispatcher
   {
      
      public var locationUserByUsername:Dictionary;
      
      public var _infoLocationUserByUsername:Dictionary = new Dictionary();
      
      public var floatInWaterManager:_3e7dee0195ecd6b652b730f1;
      
      protected var _id:int;
      
      protected var _npcMap:Dictionary;
      
      protected var _npcList:Vector.<_810c4ade948afb64e9c7ee25>;
      
      private var _ccea9db6db38d3293e553a62:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a();
      
      public var isSublocation:Boolean = false;
      
      public var isTournament:Boolean = false;
      
      public var shells:Vector.<Point> = new Vector.<Point>();
      
      private var _ff6d32b72ded9dea1d08f0b4:Point;
      
      private var _f7bd3986f3ab1d2551cd9088:_67f8febc099eaa05c48aa41e;
      
      private var _50ecadf8327652f4cb97685e:Dictionary = new Dictionary();
      
      private var _b48c564013fe20dadf49e910:int;
      
      private var _71518b8b8ffa9ff04f48dd8e:Boolean = false;
      
      private var _bda99566facfc90b5fa37d48:int;
      
      protected var _dayCycleEnabled:Boolean;
      
      public function _4039c287ddb4ef46ab65ab0e(param1:int)
      {
         super();
         this.locationUserByUsername = new Dictionary();
         this._npcMap = new Dictionary(true);
         this._npcList = new Vector.<_810c4ade948afb64e9c7ee25>();
         this._id = param1;
         this.floatInWaterManager = new _3e7dee0195ecd6b652b730f1();
         this._ccea9db6db38d3293e553a62.value = _da93b7e4b1cf62dcb698e0bd.DEFAULT;
         this._dayCycleEnabled = true;
      }
      
      public function get dayCycleEnabled() : Boolean
      {
         return this._dayCycleEnabled;
      }
      
      public function get prevLocationID() : int
      {
         return this._bda99566facfc90b5fa37d48;
      }
      
      public function set prevLocationID(param1:int) : void
      {
         this._bda99566facfc90b5fa37d48 = param1;
      }
      
      public function get dialog() : _67f8febc099eaa05c48aa41e
      {
         return this._f7bd3986f3ab1d2551cd9088;
      }
      
      public function set dialog(param1:_67f8febc099eaa05c48aa41e) : void
      {
         this._f7bd3986f3ab1d2551cd9088 = param1;
      }
      
      public function get type() : String
      {
         return _c664ae58f019f215539f81c5.ELT_COMMON;
      }
      
      public function get weather() : _da93b7e4b1cf62dcb698e0bd
      {
         return this._ccea9db6db38d3293e553a62.value;
      }
      
      public function set weather(param1:_da93b7e4b1cf62dcb698e0bd) : void
      {
         this._ccea9db6db38d3293e553a62.value = param1;
      }
      
      public function get weatherVariable() : _aa46d9061fb6637c5f30405a
      {
         return this._ccea9db6db38d3293e553a62;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get npcList() : Vector.<_810c4ade948afb64e9c7ee25>
      {
         return this._npcList;
      }
      
      public function get hasFishbox() : Boolean
      {
         return this._ff6d32b72ded9dea1d08f0b4 != null;
      }
      
      public function get absoluteId() : int
      {
         return this._id;
      }
      
      public function get locationConfig() : _24fc30cfc3c855ea21a231e8
      {
         return _24fc30cfc3c855ea21a231e8._6b751ce98cf8b7017db5d6e6(this.absoluteId);
      }
      
      private function _a5736202aa815ae6d321dc5c(param1:EnterSublocationSuccessResp) : void
      {
         var _loc2_:Object = null;
         if(param1.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘႠီဈာႸტႮႂწზီခထဆფ႘ჇრჂქუხႆႨ႕ကჇ","ဈၮၠဍჰჁჄျ၆ჟႽ၇Ⴙၶႋဧ")))
         {
            _loc2_ = param1.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勴勗刭切劈勽剾剱刾勂剭刕刜剾助労剩剡劾刟劾剓劊励刻勪剋劐","勯勵勽勋剏剅剁剺劽募勄剶勭刳勍剏"));
            this._0a9c9cc4c0e0951ac861db98(_loc2_);
         }
         this._3c21615de368e7a5490d9690(param1);
         if(param1.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏ႧჽႇႯ၎ၜ၌ဌုှჴ၀ჴၖၚငჵဘႽპေၠယ","ჁၿၜၨႸ႞၌Ⴍၞနლးჸၗჶၵ")))
         {
            dispatchEvent(new _cdf2ddc544fee2164a7c8179(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႗ႈႶႊრფრမღၹ႖ၽლဥႇ႕ၼႛၬႋဘჱჷႴ","ၞၴႡႤဣၯაქႼჂါპႈႻჀၣ"),param1.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗勉劥删勻剣劲剹募勲刔劫劶副剬刲刺刀刲勰劲剜劶刔","劮創前剪制劖刯労勸劇剩劎勃勺削剻"))));
         }
      }
      
      public function _3592e9d0ea73ddd76fed836f() : void
      {
      }
      
      public function _13b29a0b45bcfef2fe05674b(param1:ResponseNpcAction) : void
      {
         var _loc2_:_810c4ade948afb64e9c7ee25 = this._npcMap[param1.npcName];
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:_ba120ae720a391732e866217 = _ba120ae720a391732e866217(_loc2_.fieldChar);
         _loc3_._13b29a0b45bcfef2fe05674b(param1.actionType,param1.params);
      }
      
      private function _387066b98c8a7ca8a9582a71(param1:ResponseNpcTalk) : void
      {
         var _loc2_:RegExp = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = -1297998211 ^ -57654185 ^ 0x092B3B89 ^ 0x471961A3;
         var _loc7_:int = -588321579 ^ 0x439CD672 ^ 0x3FA064AA ^ -1596826099;
         var _loc8_:int = 0x1816AF9D ^ -304285109 ^ -924839202 ^ 0x3D2A4708;
         var _loc9_:int = -490167409 ^ 0x15CB2D83 ^ -837301517 ^ 0x391444FF;
         var _loc10_:_810c4ade948afb64e9c7ee25 = this._npcMap[param1.name];
         if(_loc10_ == null)
         {
            return;
         }
         var _loc11_:RegExp = new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬揟捖揃挑捊掳捛振掚掫掜挮挌掮掺掮揯捜揅揵控揦挀捓捈挹挔揻揽掁揎","挦描捷揀描挶挹掐捁掵掇掉捤揉掔揟"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挼掿捫捴捴掜挴揰揚掂","揬挅揩掻挍捙掮揆掬捳捣揊捃捆揂据"));
         var _loc12_:RegExp = new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剱势勜勭剐勊剧刐勮刨勽勞勠動勾刏勂劊劖劆刟劕刿劲勬剳劯勫初劷剠力勜勐勾剈剴刞刧剬","勄刊剥剴勸劋勯加剆労刚劣効劈刭勺"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勝勃刽勡勸勪刔助劎労","剂劉剺刋剰勥勆勈剽劗分劎刅劎勤募"));
         var _loc13_:RegExp = new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挜挈揵捘掜挨掷据挽挅挓振捑掯挍掩掬揗挸揂掟挤揱挤掼捀掾捧掮挱捠掵","挰挷揷掀挓掬挒振揻掊揵挤掳捐挙捫"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ူმოႂჲჄႫၶၙს","ჴဿၒძၳရႉႂ႔ၖႾႰჼ჻Ⴝႁ"));
         var _loc14_:RegExp = new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刲別劝刅剢勩勮劙勅勏劜刍勡勞刏务勿刢劊劦刟勍劵剷加勬勰勑劍勠","剠募勾勵剹剧勀制剩劌勑剼劾刾削勠"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣劲剾刲劵剨剶刹剚勓","勻功刞劖劈募刘勲劰划利剢剔勑剴劾"));
         var _loc15_:RegExp = new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("提捁揜揉揚揝掩揧授揿捰捄掰措捘挊揙捧挕挟捴提挋掌揺揙按揧揪捃揢掾掟掽掹揾","捤揅捃挚揂捤挼捒挒挖挊挅揱採挐挠"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၚႵჲႃဈუၺჸႬႆ","၄კၣႁ႖ჸჶ၆჊၈ဗ႗ဧၺႶီ"));
         var _loc16_:_ba120ae720a391732e866217 = _ba120ae720a391732e866217(_loc10_.fieldChar);
         var _loc17_:String = _c2ad9d37d7be0097d6d2e977.get(param1.message).replace(new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆捷揱挵挩揆挻挗掑掜捊措挼掛挡揎捹掂捆揷挏换挐掏挂揠挠挏","挑揃挍挷挞捁授捥挙描揙掐掇掱挂捔"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨刖動刍勠勾刘勷劥劍","剤办劻勣劸刼刡務勘动劮剏刓勍勴効")),app.user.username);
         if(param1.params)
         {
            _loc3_ = JSON.parse(param1.params);
            for(_loc4_ in _loc3_)
            {
               var _loc20_:String = _loc4_;
               switch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႩဪႱძႌၕჾႁဖშჍးရၑစဣြ႐တნႍၢ၅ၞဴဠ","ჶშဵလ၃ဦႱღშუ჎ဏႏၭဴჅ") === _loc20_ ? 0x58A228B5 ^ 0x4260E902 ^ -777341857 ^ -882346520 : (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၤ၎ဴႁႵဓႫၑ၎Ⴆე၁ႷႤတ႗၇ႈსႺჟၩျჩგჱ","ჰႁစၘသႹႉၞჷჹ჈ဢႏგါထ") === _loc20_ ? 0x6C71AA81 ^ -1124388100 ^ -68528454 ^ 0x2B60CEC6 : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫插揉捂揟掭捻推揤捻挵捰挂挃探挌换指捵接掯掦挺挥掹揻掿揂","揣捡揽揨挸援掰挭挏挣捤据挀揈挆掝") === _loc20_ ? 0x70824C32 ^ -1572168651 ^ 0x0DCF6AD5 ^ -553141552 : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掑捪揋捡挅挅掼指揨揾挚挭捠揶振提掍捜揢掺掤挤掯捳振挫持挍","揠掣捸掀挌掁揼揢据揫採措揶掜捱捾") === _loc20_ ? -1687253300 ^ 0x5BDC5938 ^ 0x1A5D547F ^ -621837432 : (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉刿劬剽剴刺剁刣刋効勾劅動勒劐剑勪劻功勛","勷勨初剅剕剧勫劉劜劽劕勫剫劘剱办") === _loc20_ ? -875491084 ^ -705364335 ^ -594217951 ^ -1028580800 : (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刖刮剨剨剸劬勺刦刐刦劮勑刳勰创刞剀剕剻刻刕删勶劦勢勔","刀加別剃勠刪剎劻劾勱刡勵勊刜勻剰") === _loc20_ ? 0x21084175 ^ -990659681 ^ 0x6FB5B170 ^ -1974580321 : (_433075a5d49397e40222eeae
               ._aa70f30b6c8db4826c832ff5("ၾႠပ၆ၶၷ႞ၮ႖ညႁငჯფჍ჈႐ၜ","჆ဝႹဆၕဗႮၑႥၿჽဉဖႆ႙ხ") === _loc20_ ? -808682461 ^ 0x77B78746 ^ 0x4DB71CB5 ^ -171120682 : 0x29E8D692 ^ -1353887759 ^ -2078863481 ^ 0x02B296E3)))))))
               {
                  case 0:
                     _loc5_ = String(_loc3_[_loc4_]);
                     _loc17_ = _loc17_.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿握掤捣掷揳揳捚授揘揤揪措掵揆掇捼掯挪掅捿捎掤挗揖挨揇挌掫揊","掛挣揆揺掳捭揋捩捎捌掠揌捣握挸捂")).join(_c2ad9d37d7be0097d6d2e977._2f7580a40efdad518a4e9838(_loc5_));
                     break;
                  case 1:
                     _loc6_ = int(_loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捂掅按挗挜捧揪捔捎挜挫捻揘挭掰挩挗掚捊接掔挦捚掰揟换","掇挜挦揞挞挡揙挣指挬提揦揜捋掿換")]);
                     _loc7_ = int(_loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捁挀揃掑捪挮挙据挥挩揦挏掮捎挾挘据掾按揣掜捏挥接揲挡","揔揵援捆採挩揊揻持捙掁掰捡挒挭捲")]);
                     _loc17_ = _loc17_.split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჹၡမဴ၀ၫ၆჈ၠၐგစျჟჅეဈჲჩჟၾႝၗჸყ჆ၿၟႅၤ","ၯာၐႷ၁၎ႉဪတვဪၴၠთხჱ")).join(_loc6_);
                     _loc17_ = _loc17_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗剒刯劅刏劏勤刐分勦勤勒剸刓劵勲劗勎刿剸勚剻副刐劝刌劷勍副刭","勍務勶勗判劾劋剡剘劎剞効刟刡勀刡")).join(_loc7_);
                     break;
                  case 2:
                     _loc8_ = int(_loc3_[_loc4_]);
                     _loc17_ = _loc17_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剔劝労剦労刀効剼剭勗劔刔勥勹劉刽勃勐劯剎剈剜刣勜初劭刃勹勶勤","剸剈勊刀剸勇刟勿办剰刢刃剱剷勆刎")).join(_loc8_);
                     _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_054_UI_Buy_click);
                     break;
                  case 3:
                     _loc5_ = String(_loc3_[_loc4_]);
                     _loc17_ = _loc17_.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揓揥掗掀揢揠挥捪掆揨揳掦挪挚挊捸揇掋损揃控挝掅挘挓捄挃捊挭捲挈掭","捯揚掫捝捯揈揷挥揨捯掌捛捂挈揔挵")).join(_c2ad9d37d7be0097d6d2e977._2f7580a40efdad518a4e9838(_loc5_));
                     break;
                  case 4:
                     _loc17_ = _loc17_.replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღსၵႜၨჃၞၗဉ၎ႆဵჃႦႧႝၱ၏၏ჹဿၠ၉Ⴚ","ႧႧၝထႱၳှ၌ၻၖၺႝႩც႕႕"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掏捅挧掃捘挐掽挸挼捅","挊揢描掣揚挙捷掟掄揊捳揂掋捌捿掐")),_c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(_loc3_[_loc4_]));
                     break;
                  case 5:
                     _loc17_ = _loc17_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("則励劇勴剗办勰券勮劥列刓勩剩劙勖刞勍勮务勮剽勨创勣勤勪别勏助","劀勃勪劗剏勎劸刐剼切勾刈刳则劓劒")).join(_c2ad9d37d7be0097d6d2e977._6b2ea0e14262d2877e7d69e2(_loc3_[_loc4_] as int));
                     break;
                  case 6:
                     _loc17_ = _loc17_.split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၊ჟჼ၍ဩႩႆၣႧဗဣၒါႣუခჃ႟ხၯჳၼ","჉ဧၬცႯႿႨၔႶၴာဗႰუჇၬ")).join(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a._962373ca921e9e68e370b0e0(_loc3_[_loc4_] as int)));
                     break;
                  default:
                     _loc2_ = new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ထဒჽႌ჋႑႐ၔေჹ","ႇၸვჍၜႩုဠცტႇ჈უဟ၍Ⴈ") + _loc4_.toUpperCase() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄၤႿჁჽი჏၃Ⴙၼ","ီ၈ე၆ၥၖဓဤၡဈႬႶၢဘၣ၉"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱掆捉揟揕揥揬揆掖捫","捂握挚捅捆授揗揢捈掺揧掗捂插换挱"));
                     _loc17_ = _loc17_.replace(_loc2_,_loc3_[_loc4_]).replace(_loc12_,this._82e738ace9478d57954e9f44).replace(_loc11_,this._69e0e5ff068744214e8ba132).replace(_loc13_,this._6dba3c06ec3739f0734afda0).replace(_loc14_,this._699792f73af192da46ca8c20).replace(_loc15_,this._7373f9038928ffc49f8e4f0a);
                     if(_loc4_ == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၿჹဝၭ჎ცဃჁူၰჴუბႥრကၝჼႊ၀ჁლႮႷၾညჯႋჼစဂဣႋႉვ၄","၌။ဌც၂Ⴜဏ၉ჵဤჴიႾကၰၑ"))
                     {
                        _loc9_ = int(_loc3_[_loc4_]);
                        _loc17_ = _loc17_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勣刺勜勠则剄劾劸刼勺删劅剳刋划剭功剒刈势劏刼刧初剛勈刵劶办勇勥勆剶刻刢勆劺勩办勥","切劑勀判劬勩剩剰劜劧劐剭勏労剂勑")).join(_c2ad9d37d7be0097d6d2e977._6b2ea0e14262d2877e7d69e2(_loc9_));
                     }
               }
            }
         }
         _loc16_._418df8970de8f29cbeee5a0f(_loc17_,param1.step);
      }
      
      public function _4986d1515b19090817f733bb(param1:String) : void
      {
         if(this._npcList == null)
         {
            return;
         }
         var _loc2_:int = -1074745865 ^ 0x5A5D3B1E ^ 0x366A3D67 ^ -741889138;
         while(_loc2_ < this._npcList.length)
         {
            if(this._npcList[_loc2_] != null && this._npcList[_loc2_].username == param1)
            {
               this._npcList[_loc2_] = null;
               this._npcList.splice(_loc2_,0x6DC67168 ^ 0x75FD2FCE ^ -1540811356 ^ -1139651837);
               delete this._npcMap[param1];
               break;
            }
            _loc2_++;
         }
      }
      
      public function _db484614a71f0398bdc80d31(param1:Boolean = false) : void
      {
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("按掚捚挓挷掖捌揣揌捺捞控掓控掬揹掴指捅揁掰揈挊捡提挃掁捃揼揶捑揸捆捚捖挿","授捒掃挛掇掽掘捸揨捫挑揉掲挌揼捭") + this._id + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勁劚劫勱劔劢务勮勰劗剪勊剩勦勹劏劉劋劒刉勔刕勏勶勃勃列刞劆勳剬劰刮加勊劤剿劭刜刮動勧劫劫刑勧剓劙","勾剂劖剤割剰剠刬力劭利剺勹剃勹刄"));
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(MvUsrsToResp,this._623a8a86a92cebf34c1084ad);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(WeatherChangedResp,this._d2f5108fd64d012ae0595ce4);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseNpcTalk,this._387066b98c8a7ca8a9582a71);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseNpcAction,this._13b29a0b45bcfef2fe05674b);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(EnterSublocationSuccessResp,this._a5736202aa815ae6d321dc5c);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(EnterRaftResp,this._45473fcc89b38c8db669625e);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(LeaveRaftResp,this._bc76a8ae9fd910559027b2c7);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseMiniGameBobStart,this._50b8c9eaadfee60bbe270d26);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseMiniGameBobStop,this._857e9dddebfc2991092a9902);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(_e872d2b4bd5992624aff99ce,this._e67b15e5dad8ccb9c7c83822);
      }
      
      protected function _a160aaaecae13e04f828a15f() : void
      {
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揨挾揜揗挠挺掔捋挎挙揍揃揻捞挋捊揨挺掕揢挲挴掬挻挅掏掊掼捆捯挍持掌捹排振","掽挧捥挝揋掇挍捰换捠掔捺捦捥捈揞") + this._id + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勶劋劍剜劲勝務剘劑劋勫剭刃別到剞努勅剱勘勳剦劜勶剋勈剧劺刷刎势刔勆剦则勬勯勩劚労剟刮刧剪刮劬勯劢勣劷剬前剁刬","剈劤劇劺剉勜剩勲剝勅功制刪劗刕创"));
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(MvUsrsToResp,this._623a8a86a92cebf34c1084ad);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(WeatherChangedResp,this._d2f5108fd64d012ae0595ce4);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(ResponseNpcTalk,this._387066b98c8a7ca8a9582a71);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(ResponseNpcAction,this._13b29a0b45bcfef2fe05674b);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(EnterSublocationSuccessResp,this._a5736202aa815ae6d321dc5c);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(EnterRaftResp,this._45473fcc89b38c8db669625e);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(LeaveRaftResp,this._bc76a8ae9fd910559027b2c7);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(ResponseMiniGameBobStart,this._50b8c9eaadfee60bbe270d26);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(ResponseMiniGameBobStop,this._857e9dddebfc2991092a9902);
         _dfa25706e58a240c1e33e5c6.fscModel._66976e92ca4860923b30ee2a(_e872d2b4bd5992624aff99ce,this._e67b15e5dad8ccb9c7c83822);
      }
      
      private function _e67b15e5dad8ccb9c7c83822(param1:_e872d2b4bd5992624aff99ce) : void
      {
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.START_STEVE_MINIGAME,param1));
      }
      
      private function _bc76a8ae9fd910559027b2c7(param1:LeaveRaftResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:_08c120b706560fce9302bcab = null;
         var _loc4_:Object = JSON.parse(param1.list);
         for(_loc2_ in _loc4_)
         {
            if(this.locationUserByUsername != null && this.locationUserByUsername.hasOwnProperty(_loc2_))
            {
               _loc3_ = _810c4ade948afb64e9c7ee25(this.locationUserByUsername[_loc2_]).fieldChar;
               _loc3_._1617464a9f06d40877921ddc(new _b03601562e400e8ab155eadc(_loc3_,_loc4_[_loc2_].x,_loc4_[_loc2_].y));
            }
         }
      }
      
      public function destroy() : void
      {
         this._a160aaaecae13e04f828a15f();
         this._23802b7f50d51a97990d59c0();
         _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
         this.floatInWaterManager.destroy();
         this.floatInWaterManager = null;
         this._ccea9db6db38d3293e553a62.destroy();
         this._ccea9db6db38d3293e553a62 = null;
         _271c223e62b218917ef50ff1.removeAll(this._infoLocationUserByUsername);
         this.locationUserByUsername = null;
         this._infoLocationUserByUsername = null;
         this._npcList = null;
         this._npcMap = null;
         this.shells = null;
         this._f7bd3986f3ab1d2551cd9088 = null;
         _271c223e62b218917ef50ff1.removeAll(this._50ecadf8327652f4cb97685e);
         this._50ecadf8327652f4cb97685e = null;
      }
      
      private function _23802b7f50d51a97990d59c0() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.locationUserByUsername)
         {
            this._ee50009dcc326d5678dc346f(_loc1_);
         }
         this.locationUserByUsername = new Dictionary();
      }
      
      private function _45473fcc89b38c8db669625e(param1:EnterRaftResp) : void
      {
         if(this.locationUserByUsername != null && this.locationUserByUsername.hasOwnProperty(param1.login))
         {
            _810c4ade948afb64e9c7ee25(this.locationUserByUsername[param1.login]).fieldChar._1720671de72b884278f5266d(param1.x,param1.y);
         }
      }
      
      public function _5bbf4a7dc6de36b8bc7fc61d(param1:String) : _ba120ae720a391732e866217
      {
         var _loc2_:_810c4ade948afb64e9c7ee25 = null;
         var _loc3_:_ba120ae720a391732e866217 = null;
         if(this._npcMap[param1] != null)
         {
            _loc2_ = this._npcMap[param1];
            _loc3_ = _loc2_.fieldChar as _ba120ae720a391732e866217;
         }
         return _loc3_;
      }
      
      private function _82e738ace9478d57954e9f44() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劧刍刅勷効劚勪劵劓剆勫劲剥勡刘勇剒勣労刲勲劥刕勅募初","劦創剌勡勱勦劻剩剋勳劍勁勝勹劶勥") + arguments[-230282054 ^ 0x7BD81977 ^ 0x727D3095 ^ -69008039]);
      }
      
      private function _69e0e5ff068744214e8ba132() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶刂动劵勣勹勫勓勈劬剾劑努剿刃勹効劺","剚勘刴勇勳劣劢刋削勧加刏剞剬勋劒") + arguments[0x138D2A43 ^ -1507049254 ^ 0x09CD1403 ^ -1133740389]);
      }
      
      private function _6dba3c06ec3739f0734afda0() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣捰揌揤捰揃捘掰捔据掳採揩揵掀挦揝揢","掓揞揚挔捝捽捞捆揱挠掚挍揖揰挮挳") + arguments[-1888816686 ^ -1050550939 ^ 0x163BEA9A ^ 0x5830C62C]);
      }
      
      private function _699792f73af192da46ca8c20() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挛捉揓捣挀捋挊捧挽揶掁挀掬捀捧掋","揩捦挀掚挣掕捱掔捰挲挎挻掯掻挝插") + arguments[-654190567 ^ -693617638 ^ -1202157167 ^ -1208914541]);
      }
      
      private function _7373f9038928ffc49f8e4f0a() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶揙据挆捬掣掲揁捏授挸揙捍排挂揖掛挑捝援捹挷","挎掹捠挱捕揁授描挴挍掖揈捗挎挪捰") + arguments[0x5A97A75F ^ -128744352 ^ -571974900 ^ 0x7F2C7832]);
      }
      
      private function _d2f5108fd64d012ae0595ce4(param1:WeatherChangedResp) : void
      {
         this.weather = _da93b7e4b1cf62dcb698e0bd._c38301d6bda7dabbf2cf4906(param1.newWeather);
      }
      
      private function _623a8a86a92cebf34c1084ad(param1:MvUsrsToResp) : void
      {
         var _loc3_:Array = null;
         var _loc2_:MvUsrToResp = null;
         for each(_loc3_ in param1.walks)
         {
            _loc2_ = new MvUsrToResp();
            _loc2_.login = _loc3_[0x238D3F10 ^ 0x06205E9D ^ 0x330C658B ^ 0x16A10406];
            _loc2_.x = _loc2_.cx = _loc3_[0x38B4C4B5 ^ -603005697 ^ 0x556B1EE3 ^ -1311701336];
            _loc2_.y = _loc2_.cy = _loc3_[0x0BC3F465 ^ -48897273 ^ 0x2856C7D9 ^ -561983303];
            _loc2_.r = _loc2_.cr = _loc3_[0x17F8B1E3 ^ 0x2883792C ^ 0x662AAE48 ^ 0x59516684];
            this._385ebea194610867f27f43da(_loc2_);
         }
      }
      
      protected function _385ebea194610867f27f43da(param1:MvUsrToResp) : void
      {
         var _loc2_:int = 0x0ADCF25D ^ 0x51C1441E ^ 0x75A35324 ^ 0x2EBEE567;
         var _loc3_:Boolean = false;
         var _loc4_:int = -1797008191 ^ -86340683 ^ 0x59DE41A3 ^ 0x37E71ED7;
         var _loc5_:_810c4ade948afb64e9c7ee25 = this._9aa9d817a9effb1ee3c32474(param1.login);
         if(Boolean(_loc5_ && _loc5_.fieldChar) && Boolean(!(_loc5_.fieldChar is _c9513c48978d5034cc9ff2f4)) && Boolean(_loc5_.fieldChar.position))
         {
            if(_loc5_ is _ba120ae720a391732e866217)
            {
               _ba120ae720a391732e866217(_loc5_)._37496d81243d975a8f2daa70();
            }
            _loc5_.setPosition(param1.x,param1.y,param1.r);
            if(!(_loc5_.fieldChar is _c9513c48978d5034cc9ff2f4) && _loc5_.fieldChar.onBoat() && !_loc5_.fieldChar.position._daf2fa8369f99a52f288dd32(param1.x,param1.y,param1.r))
            {
               _loc5_.fieldChar._b8c369dbe6dd94d27ff0fb7e();
               _loc5_.fieldChar.position._daf2fa8369f99a52f288dd32(param1.x,param1.y,param1.r);
            }
            _loc2_ = _loc5_.fieldChar._0c96c9b991bea05cd29237cf(param1.cx,param1.cy);
            if(param1.cx > (-54593342 ^ 0x2003DA ^ 0x67C9E75B ^ 0x64A8E3BC) && _loc2_ > (0x7DBF519B ^ -409751285 ^ 0x34D923A7 ^ -1359625467))
            {
               _loc3_ = _loc5_.fieldChar._0cc93dc6a86af66e328f4956();
               _loc4_ = _loc5_.fieldChar._68bb1c90f1aade0755401e6d();
               if(!_loc3_ && _loc4_ > (0x0837CF8E ^ 0x0473F60C ^ -1770164766 ^ -1707515944))
               {
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၠႅႣ၄ဥဓჾသႹ၆ဩ႓ၷဂႹ჆ၶႲၐზ၎ဃဍဣဴჱဦၕაც჻႘ၷჯႠၻရ၉၎ဤၶ჉ဳၹ჆ၗႯှႤႈႉჃၴနးႻგႤၨზბႵ၄႘႐ဒဪ၃ოၯုႧ႙၆჆ၖჃဢ၏မၦစၥჴ჎ၪၪძსჭჅဖ႓ოူၢ","ტრဌခ်ဗႫၧဦძპႲၜ႟ၨၹ") + param1.cx + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜描挠掝掩掣揀挫挓揋捜揟捎损掬捧捺揋掍挿掫捵捦捾揣掵捷揹探捲挨挑挆掎掟挸挱挼","掁捃掗捋掆挨挏揖捲揬振挙挴挊捋捛") + param1.cy + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("换掘捖揨掮挼推挐挞捶","捑掋揤捱掼揔捽挤揭揥掚揍揳掴揯挐"));
                  _loc5_.fieldChar._5b04cf41b6b9c6cbf830da97(param1.cx,param1.cy);
               }
            }
            _loc5_.fieldChar._acfc3c10c0aaf8be3a4b6568(param1.x,param1.y,param1.r);
         }
      }
      
      public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var username:String = null;
         var fishboxPos:Object = null;
         var usersAtLocation:Object = null;
         var usernames:Array = null;
         var shells:Object = null;
         var fishbones:Object = null;
         var removeFishboxPosition:Object = null;
         var removeShellPosition:Object = null;
         var newShellPosition:Object = null;
         var list:Array = null;
         var i:int = -90606087 ^ 0x516E6F4D ^ -105904242 ^ 0x52471D3A;
         var selectedRodInfoId:int = -1683890790 ^ 0x5D908577 ^ -2088411441 ^ 0x45B40622;
         var locationUser:_810c4ade948afb64e9c7ee25 = null;
         try
         {
            if(this._71518b8b8ffa9ff04f48dd8e == false && response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勛労劦別副劾制刀剽刘劢刍劾剥刼分劎到刢勱刌刉勩剜劉劑劁劕","劤刨務劙刄剦勿勜劒勀刲刽剧勓劫勵")) == false)
            {
               return;
            }
            this.wasLoadedFirstResp = true;
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剆剟剭劍勻勜劾剘剚勇刬勾剠刄刌券劥勽勆劐勦勽劓别劉勩剜勁","刜刿刄劈劀剝剩刌劺劰勞剢刳勉則刓")))
            {
               usersAtLocation = response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掗挨换换捹揺捈掲捁捀掛捔捧捧挙揼挓挚捑捜揼按掗挋揁捘捙挵","捂掐掀描掇揦掏揱揨挀捬捘捐捑揘挍"));
               this._0a9c9cc4c0e0951ac861db98(usersAtLocation);
            }
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揃挮捈挂掂揍指掙挜捷挫挨挅揻揪捒挎挖挳揲掀挤掏採掻掦","掀掖捶掹挪掉掔揈掍挑挥挓揦挽挛揩")))
            {
               usersAtLocation = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剃劓别刦刯剅刅剅勮勴助加剱剾刚劕勦务副勞劕剢剢剹剣劤","刕劘勘別剾判刎勹剚劳勋剝勺剳剈劰"));
               this._0a9c9cc4c0e0951ac861db98(usersAtLocation);
            }
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဌႽ၅ှျမဋၨဗႽနူ၀ဵၟဝံჇၠჭႄ႒ჶ႘ႎႦႷဩႣვ","჏မႅဏჃეႣლႼႬၬႣႵစႻႫ")))
            {
               usersAtLocation = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆႃ႟႖ဲ၅Ⴢ်ဗ႙დြჱၥ္၅შჍၞျღၜႠ၃Ⴡხအჱၙၿ","ჯျႡ၉ၵဵႂကဦၙ၌ၠკႰႰჁ"));
               this._5b74b2fc4a7458ff7cc811ce(usersAtLocation);
            }
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挩揕掝捝捎揚挕捞掷捰掋揕揋挗挓挐捁掣揗捰揺捸捫掮掅掂","掚捝挄揖措揟掊挬採挭捽挌捂捠揥掀")))
            {
               usernames = response.getArrayData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("နယၰႈဿၜ၁ქၸၤယჄჩჸႆ၎ဏႪၨညရჳ႔ქ႖ႉ","ო၌ჲၴငၶူၳွჲშღၶရၝဴ"));
               for each(username in usernames)
               {
                  this._ee50009dcc326d5678dc346f(username);
               }
            }
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၪჷჼႴჸჅႯၥზပ჎္Ⴀဧ်ီဧჁႻၩျ။","ဉ၈ႤჅႌ၂ჩဢჽჁ჊၏Ⴀၿჲး")))
            {
               this.weather = _da93b7e4b1cf62dcb698e0bd._c38301d6bda7dabbf2cf4906(response.getIntData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬刳勎勰勁刼剭加勱剰删勎勇勸勖刿劆刵刕勧剦勤","勜勗剡刬刷勤劃劤助刟勽勠勔刭剘勧")));
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刍勍勑勾劦刦劸劵刭勲剂勿刅剻勵剮剩勅劜剭","剢刲刮劺剾剦勌劯剑勔勥功劥劥剀刘")))
            {
               shells = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဏႿႬ႞ႂဝၦჾჽဓေဴტკႊ၄ၽၲၥ၁","၆ႇဝၙ၌ညဨဧၓჲၯၴၲ჻Ⴢဨ"));
               this._7f9ebd92389f877ceeac7549(shells);
            }
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探挋捨挲捹捽掽捻揑捘掦掻捛挻掲揲持掷捿挱揊掴掎挋揉掬掙捥","掜揸挑挝捍挘排挷捬掖揜揟挂揳控捻")) || response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刷剌劐劫勁剋劢勃勉勔勥励剬効删勝勃剙勌剭劳刍勑剐剻剛勹刪劖勘刦勊劵勶勧劯刑刊","剥劑刣则刳刋刡割劒勸刳刈刈劯刎助")))
            {
               if(this._ff6d32b72ded9dea1d08f0b4 != null)
               {
                  dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.DESTROY_FISHBOX,this._ff6d32b72ded9dea1d08f0b4));
               }
               if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წჿႈၼႛၤၝ၎ႭႵბ႖။းသဳၚစႮဌსდဠၗჴႨႴჸ","ဴჽၜၵ჌၃ခ႞ჟၣံျဃႯთၸ")))
               {
                  fishboxPos = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၾპပရၥၤၗ။ၴჀჽ္Ⴧ႑ჲဋႤဧპၐ၎ေႎၘ႐ဎဌပ","ညဆႡႰႠဢဟ၃჋ဪჸစუႤლသ"));
               }
               else
               {
                  fishboxPos = response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捾換挥揪掘掘挵掼掵掔捲揽掼捴挓掳掐揝挀揦挍掃挟捧挃挲掂掊掌按挥掗挝挤捎掷掖揍","挡挍揺捴挄掹捻挺揻掸挫揃捞揯掽捬"));
               }
               this._ff6d32b72ded9dea1d08f0b4 = new Point(fishboxPos[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剂労刌刭則剏勓勂劃勚","剗剓勻勔刔劧勖勑勂勑勷力刉劔劋勵")],fishboxPos[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掗换掛揯揌揗揩掮掘掴","振推捈捡掔揂揂挳捃揉掇換捩授掇掹")]);
               dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ADD_FISHBOX,this._ff6d32b72ded9dea1d08f0b4));
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劁剚創刊劷剐剨刺勝動刡勰剦刘劧勦勯刦劁创剢勡剪剗剔剂","剌刵勗劮切剥刈勇勾刟勉劻勽勏勰勼")))
            {
               fishbones = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勡剰励勻劂労剆劒劫剿勀剝剣刲劑劫勒劽剻勃劃勿刅劶剏劊","劖剼刕劯刄删勜刐剩剦効刏劯剗剢刉"));
               this._372b51c61c99430e27054c34(fishbones);
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劕劀剆刡剤剉剁剞勁勿刖刲初刖助劥勚勦初刵勄勪劬刼剻剋划勈刅劒剦剮刀剏勚劏剺剄剾勨","劇分创划劸勁划勌剞削劏勻劷劢刨刮")))
            {
               removeFishboxPosition = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勯動务到勹剤創勬刓剠剈劚制剱勅刘剁勠勍刬创刷刎劖剎勌勑募删剽勂刁勄剘劧刦利劇刚勛","劁刞勗利刳劤劣剘剄刘勈前剀勷剣別"));
               if(this._ff6d32b72ded9dea1d08f0b4 != null)
               {
                  this._ff6d32b72ded9dea1d08f0b4 = null;
                  dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.REMOVE_FISHBOX,new Point(removeFishboxPosition.x,removeFishboxPosition.y)));
               }
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劚勘劦剏動勋务刚劵刱別劙勩刦勆剏勂势効剃剘利劫刌剷削勱刴刿勆刑剽剌刴刜劢","劇剆剪剚刚剙剃劮功劾前刬劷剨剜剠")))
            {
               removeShellPosition = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈剒剔劜劻勤勍劰勴剀勮勥刎劺剚劄剠勮劆勬勐刪剄券剁删剌勜刏剄勥到前剝剠劕","劢劵勌劳勶券劊剀勄刌刖勴努劋刅剚"));
               dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.REMOVE_SHELL,new Point(removeShellPosition.x,removeShellPosition.y)));
            }
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挘掟揰掋捈捜捴掋掖揷掠挏捐掍挾掶揁揝挆掛揓捖按掮掂排挳推掰揹掘揄揶捝","掕捠掼排挭捈揢掎掳掖挹捴挋挲捩捏")))
            {
               newShellPosition = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劀剒勲剹劒剃則剙刬剮劤劄勑勹勾剭勎剧剰刦剿勋勲劌勇勴剅勌刹勂刨劳刷勥","勆刬剥剾剿勜勂力劧劗劮前勢刕剃剳"));
               dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ADD_SHELL,new Point(newShellPosition.x,newShellPosition.y)));
            }
            this._3c21615de368e7a5490d9690(response);
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶劲勯剽削剒勵刪勞剶則剛勛剦効労剀勌勣刓劢刪剄加","剼剮勄剪劶勛割券判刴労劆刧刴刡勶")))
            {
               list = response.getArrayData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘划加剂勠勍剻勎勿勓剜剭劙劭勋划劌劧勜刪勓务劀剭","劋剔劘剙刉勍刯劖前勍勡劘利功劝势"));
               i = 0x7722D562 ^ 0x661C287B ^ 0x210C6D57 ^ 0x3032904E;
               while(i < this._npcList.length)
               {
                  if(list.indexOf(this._npcList[i].username) != (0x44C28BF2 ^ 0x39FA5E69 ^ 0x770EBEC3 ^ -171338585))
                  {
                     _ba120ae720a391732e866217(this._npcList[i].fieldChar)._90f73c26c30429a55cbbdca7();
                  }
                  i++;
               }
            }
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၯၭာႋ჻ჹც჈ါ၉ၗ႘ჰ႟၃ၨႇ႑ႾჭႱტხ၌ၕှဉဪჿჹဒၙးဠ၃ႆჹႜ჊ထဉჹ","ႈဠႅ၍ၭფၜဌႨညხბ၈ქကႫ")))
            {
               username = response.getStringData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဓၞၧღီဨ႟႑႕ဇდပ္ဌჳဎრဉ","ၴ့၆ၽႋဋ႘ხဴႭ၊ဥဗ႗ჺၚ"));
               selectedRodInfoId = response.getIntData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟勣前勹刊劂勹劔刵劅劓刴勤勸勧劫剅勌劫勛刔劝剥刢劐创劏剒劚勛剆劶劗勩剂剾勘劄劭刀券刢","勽刣剌剮刑劦剠劍剝剹劗勿刿劎剝剂"));
               if(username in this.locationUserByUsername)
               {
                  locationUser = this.locationUserByUsername[username];
                  locationUser._b794e968f5ef011cbfb845ae(selectedRodInfoId,response.getStringData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("务剘勆勇勯刂勠劊劭剓勠刔刹刺勁剙刐勱刌勝勅勦刭删勃剜剴刌劢列勋劐刬勏劙勉刻務劜刎","勺劸动劁劎劔剄刯利剿劖刖勡勳劗劌")));
               }
            }
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႮჄဌჄჰၪႰဠ჉သအမၡဎ჊ႰၥၿႻြႩၩ့ႀჺლ","ႽၩჅ႑ဳၑအၯှခဇဪႀႉძჍ")))
            {
               this._f56918fb71747a826c08669e(response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ခၵဴၓႪၙ჈Ⴤჼზဠးჹၿ၄ფႰၳဤႆ჊ဨဎဌျထ","မၤၐႆႠႭူႯსმစ၍Ⴆၳၼ၉")));
            }
            this._e0aff42ea73a3ec2707771ae(response);
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႇიႨၳႁုჅၶႪჲვၷဳშႺ႙ဏ၁ာမၡჂႍ၀႒ဤ၏ვ၎დႲႦဍ၎ၸმၽხၖုႁၷႸၑၟဪဨ႙၏ყၷ႟Ⴣၟႂိၻჿဵၪၺၶးၜဓც၀პ႒ႉဇწႁဈ","სႉ჊ႬႢဓხထႳႲဖჹაც჻ဝ"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("列勗勇刎別刓劫刪剽刊剪剒勋刏刧劼勌勍勨努勅勡剭勦則勢勞勈","勯剐副劏勈删勜勦到刡劬刼剎刡剔刄"));
         }
      }
      
      private function _e0aff42ea73a3ec2707771ae(param1:UpdateResp) : void
      {
         var _loc2_:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴔ၄გြმၪမჯႛႫဌ်Ⴅဥ၊၄ၛ႙Ⴓၴႚၯၦြၪრდၐဎ၊ကွ႟ჩႹშဥჍჾျჸဖၞჳ","ჳဥ၉ဿၸႡ჆ဘၧၯ႕ဉႿၹყწ");
         if(!param1.hasDataProperty(_loc2_))
         {
            return;
         }
         var _loc3_:String = Debug.assertProperty(param1.data,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽提捋挰捂揎掷掵挨挦挲掞挜掠揋挄揺损","掻揫揧捚揈捭揸掩捣捻捎掽挷捯挷挄"));
         var _loc4_:String = param1.data[_loc2_];
         var _loc5_:_810c4ade948afb64e9c7ee25 = this.locationUserByUsername[_loc3_];
         _loc5_.fishingLineColor = _loc4_;
      }
      
      private function _f56918fb71747a826c08669e(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            this._0e14f22ee508af924eb2e9a0(_loc2_,param1[_loc2_]);
         }
      }
      
      private function _0e14f22ee508af924eb2e9a0(param1:String, param2:Object) : void
      {
         var _loc3_:String = param2.login;
         var _loc4_:_a5c3dbdfbeb709a5bf92d27c = new _a5c3dbdfbeb709a5bf92d27c(param2.pos.x,param2.pos.y,param2.pos.rotation);
         Cc.logch(this,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႓ၴဈ჏Ⴡ၍၌၇ႍၮ၇ჰჭტათ႙ုႬဒႥႄဪႍၩოၶႽ႒თၼჽၦဝဳჽညၳႁၨდၚၕဖდဧႽ၂჎ქჯႰၢ၏၅იႢႻဧႍရၜუၒဗდ႟ტრ၈ႇဠၑၞၨၦყႅၽႅ","ဖးႁბ႑ဳၜႇ჏Ⴝ၊ၪႛფဢჟ") + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掾挡挾挫挐捐振揳挞捒指挔挔捻揪掭捖捸捑掍挨挴挔揭挓揚揼捞挘挍捩捏","揯挼揓挣捸接挼揫挊挻掊握据描捓挸") + _loc3_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劒创刟剢劼剨劜勹労勿勳勦副刚別剁剰刈刌刂劧剝刧勀剾刟剂劈刃剦刂剈刯刽剾刌勉勔刈刀","勠勎券力劶剗勔勄劤刚刯劤勎勵剾劣") + _loc4_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刚刳剛剰刉勧勲划刅劍","勚勅刓刎剏劎勚刋劗剓劮剓刔劾剅劝"));
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.PUT_CHAR_TO_BOAT,{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊劉划劔刵勭勅劭剄刟勹劣刏勬剀剕勜勵剟労","剥勶劽劜劉刡勱初剁刚刡勶刾剞勆刕")):param1,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挡指损揻探按挖揃換挆挌挩捁掔挫捻揷捬掶揖捔掖捉捴","挴揽挂捭捜控掲掑捜挚揋掂挤挔揞捭")):_loc3_,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒთဩ်კဟ჉ဂဢၯჟႁჺႫႳ႒ၓ။၈ၥუဎჀအၵူდၰႴ၁შၔ","ႍဧ္်ႭჼႡ႐ဟ჈ဋჩၡႡႀၨ")):_loc4_
         }));
      }
      
      private function _7f9ebd92389f877ceeac7549(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            this.shells.push(new Point(_loc2_.x,_loc2_.y));
         }
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.UPDATE_SHELLS));
      }
      
      private function _372b51c61c99430e27054c34(param1:Object) : void
      {
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ADD_DAILY_QUEST_FISHBONES,param1));
      }
      
      private function _50b8c9eaadfee60bbe270d26(param1:ResponseMiniGameBobStart) : void
      {
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.START_BOBS_MINIGAME,param1));
      }
      
      private function _857e9dddebfc2991092a9902(param1:ResponseMiniGameBobStop) : void
      {
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.STOP_BOBS_MINIGAME));
      }
      
      protected function _3c21615de368e7a5490d9690(param1:ResponseWithData) : void
      {
         var _loc2_:String = null;
         var _loc3_:_810c4ade948afb64e9c7ee25 = null;
         if(!param1.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ံဋအၖ၎းႅဦႊ၌ႇၰစၣၑၠၼၮჅဿႰၐဃသ၆჈ဆႝ","ေ၈ნ၅႔ၤ်ႾဆႲႵႳფၥအၨ")))
         {
            return;
         }
         var _loc4_:Object = param1.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛၤၕႛრჃျჀႅဌზႌႪၒဿေყ၈Ⴝჱႃၡ჻ဏჾ။Ⴞწ","ၩ့ၓဉဇအညႰအၥჍვၨႋှღ"));
         var _loc5_:Vector.<_810c4ade948afb64e9c7ee25> = new Vector.<_810c4ade948afb64e9c7ee25>(-474634359 ^ -1989947093 ^ -1192196743 ^ -769199141);
         for(_loc2_ in _loc4_)
         {
            if(!(_loc2_ in this.locationUserByUsername))
            {
               _loc3_ = this._b86e073791e56b2bb6e2315e(_loc2_,_loc4_[_loc2_]);
               if(_loc3_ != null)
               {
                  _loc5_.push(_loc3_);
               }
            }
         }
         if(_loc5_.length > (0x4D666933 ^ 0x0F997B3E ^ 0x37473E86 ^ 0x75B82C8B))
         {
            this._e2b933e683234a789fe48bea(_loc5_);
         }
      }
      
      protected function _b86e073791e56b2bb6e2315e(param1:String, param2:Object) : _810c4ade948afb64e9c7ee25
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = new _810c4ade948afb64e9c7ee25();
         _loc3_.username = param1;
         _loc3_.positionPoint.name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၺႱဪႸႛႭႶၥჃ႗ဒလၗထဢႉ","ბႱჁ၃ဤაၥဧၔဓၺအၮႦ၉၅") + param1;
         _loc3_.positionPoint.label.text = param1;
         _loc3_.boatTransPositionPoint.label.text = param1;
         _loc3_._165898847e1b857d5aa8a938(param2);
         var _loc4_:_ba120ae720a391732e866217 = _73a1260486a2df0faab5b212._ac63334daf6aee83b062b715(param1,_loc3_,this.floatInWaterManager);
         _loc3_.fieldChar = _loc4_;
         _loc3_._cb25cfff109a720fc827119d();
         this._npcList.push(_loc3_);
         this._npcMap[_loc4_.npcName] = _loc3_;
         return _loc3_;
      }
      
      private function _0a9c9cc4c0e0951ac861db98(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<_810c4ade948afb64e9c7ee25> = new Vector.<_810c4ade948afb64e9c7ee25>();
         for(_loc2_ in param1)
         {
            this._4faa611eb981716f3dd1053a(_loc2_,param1[_loc2_],_loc3_,true);
         }
         this._e2b933e683234a789fe48bea(_loc3_);
      }
      
      private function _5b74b2fc4a7458ff7cc811ce(param1:Object) : void
      {
         var _loc2_:String = null;
         for(_loc2_ in param1)
         {
            if(_loc2_ in this.locationUserByUsername)
            {
               this._4faa611eb981716f3dd1053a(_loc2_,param1[_loc2_],null,false);
            }
         }
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.UPDATE_CHARS));
      }
      
      protected function _4faa611eb981716f3dd1053a(param1:String, param2:Object, param3:Vector.<_810c4ade948afb64e9c7ee25> = null, param4:Boolean = true) : void
      {
         var _loc5_:_810c4ade948afb64e9c7ee25 = null;
         if(param1 in this.locationUserByUsername == false)
         {
            _loc5_ = new _810c4ade948afb64e9c7ee25();
            _loc5_.username = param1;
            _loc5_.positionPoint.name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚挆掰挖指捍挢捸揅挫挀授捻挃挺捦","捍掉揓挼揃捛捙捨捺捭揫捀揅捇掜掜") + param1;
            _loc5_.positionPoint.label.text = param1;
            _loc5_.boatTransPositionPoint.label.text = param1;
            _loc5_._165898847e1b857d5aa8a938(param2);
            if(_loc5_.viewConfig == null)
            {
               Cc.warnch(this,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捗揻採掉掟挚挜掙挶捧挘挌掿捏掔揂掮挖掘揾挚揫捀挴捼捚挣掲掶掶掌揥捴掌挊揪掹掅挈掁揨挐捝掑掋捐挼採捣掙接揆掆掌揿挛挵捕掋揻捜揔挦挞挻揘捕揈掜掦掘掽揷掁挖揄捾捋捎捺掅揍","提捫掙挍挈捬挌挶掽接挕捊掑揀损挠"),String(_loc5_.viewConfig));
               return;
            }
            if(param1 == app.user.username)
            {
               app.user._bb1d6c3a8bcfb8ddcf396978(_loc5_.level);
               if(param2[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("တဆ჈ၠဨჯჭႎႲခ၂ိငၿငပ","ဴှၲჼ၊ေႋၝლဿငဉႃႯဩႤ")] != null)
               {
                  app.char = CharViewConfig.fromObject(param2.view);
                  app.char = CharViewConfig.reviewCharForModeratorSuit(app.char,app.char.isModerator);
               }
            }
            this._004999b5468528ea9da10937(_loc5_);
            _loc5_.fieldChar._8606e2a8d94f637089fc8480(_loc5_.viewConfig.shoes.type);
            if(param2.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၠბ်ဵဖတံဓသႴ჉၎႔ၕთ჈ငႬႾဖ჏ႁႣႬჺာႵ႔႔း჊ုჟჷ","ა၎ხံჍၙု႔ဂ၃Ⴟ၀ღသტႴ")) && param2.actFishingPos != null)
            {
               _loc5_.initialFishingPos = new Point(param2.actFishingPos.x,param2.actFishingPos.y);
            }
            if(param2.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探挏揳挖揘捊掊挤掠捞掮揝掤掛捘挍挭挛掗揞挒捕挲控捑挃掐挍捕授","捝捉掉捏揀掏捞挻捂掳掭掓挝揾换损")) && Boolean(param2.isAtVihicle))
            {
               if(GameSwf.currentLocationDialog.raft != null)
               {
                  _loc5_.fieldChar.setPosition(param2.pos.x,param2.pos.y);
                  GameSwf.currentLocationDialog.raft._92d6baab4102395a7951d68b(_loc5_.fieldChar,true);
                  _loc5_.setPosition(_loc5_.fieldChar.position.x,_loc5_.fieldChar.position.y);
               }
            }
            if(param4)
            {
               _loc5_._cb25cfff109a720fc827119d();
            }
            if(param3 != null)
            {
               param3.push(_loc5_);
            }
         }
         else
         {
            _loc5_ = this.locationUserByUsername[param1];
            _loc5_._165898847e1b857d5aa8a938(param2);
            if(param4)
            {
               _loc5_._cb25cfff109a720fc827119d();
            }
         }
      }
      
      private function _004999b5468528ea9da10937(param1:_810c4ade948afb64e9c7ee25) : void
      {
         var _loc2_:_08c120b706560fce9302bcab = null;
         if(param1.username == app.user.username)
         {
            if(GameSwf.instance.managerTutorial.isTutorialCommonComplete)
            {
               _loc2_ = new _c9513c48978d5034cc9ff2f4(param1,this,this.floatInWaterManager);
            }
            else
            {
               _loc2_ = new _0d47696161f1136a4c3be130(param1,this,this.floatInWaterManager);
            }
         }
         else
         {
            _loc2_ = new _08c120b706560fce9302bcab(param1,this.floatInWaterManager);
         }
         param1.fieldChar = _loc2_;
      }
      
      public function _ee50009dcc326d5678dc346f(param1:String) : void
      {
         var _loc2_:_810c4ade948afb64e9c7ee25 = this.locationUserByUsername[param1];
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.REMOVE_CHAR,_loc2_));
         this.locationUserByUsername[param1] = null;
         delete this.locationUserByUsername[param1];
      }
      
      protected function _e2b933e683234a789fe48bea(param1:Vector.<_810c4ade948afb64e9c7ee25>) : void
      {
         var _loc2_:_810c4ade948afb64e9c7ee25 = null;
         for each(_loc2_ in param1)
         {
            this.locationUserByUsername[_loc2_.username] = _loc2_;
            dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ADD_NEW_CHAR,_loc2_));
         }
      }
      
      protected function _c8fe96675c5b2ff9c16e1284(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         GameSwf.instance.managerMaintanence._22bc15aea605f70091d1f36a(param1);
         dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.UPDATE_MAINTENANCE_TIME));
      }
      
      public function _9aa9d817a9effb1ee3c32474(param1:String) : _810c4ade948afb64e9c7ee25
      {
         var _loc2_:int = -644154274 ^ 0x2CBD2E9F ^ 0x585F00A5 ^ 0x5CB9D34F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-594636681 ^ 0x4E410394 ^ -1708765825 ^ -114761803))
            {
               case 0:
                  if(param1 in this._infoLocationUserByUsername)
                  {
                     _loc2_ = 0x7B9C43F7 ^ 0x27D51C18 ^ -480323799 ^ 0x4ED689EC;
                  }
                  else
                  {
                     _loc2_ = -305797099 ^ 0x357F2CEF ^ -1278723543 ^ -1699479554;
                  }
                  break;
               case 1:
                  return this.locationUserByUsername[param1];
               case 2:
                  if(this.locationUserByUsername[param1] != null)
                  {
                     _loc2_ = -1584319294 ^ -1293445799 ^ 0x46915B2E ^ -1540949091;
                  }
                  else
                  {
                     _loc2_ = 0x0F8DF5D2 ^ -2119608495 ^ 0x62AF8725 ^ 0x1D4A248F;
                  }
                  break;
               case 3:
                  return this._infoLocationUserByUsername[param1];
               case 4:
                  return null;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _a71dddef56aa5c9ec7fa4a93() : Vector.<_810c4ade948afb64e9c7ee25>
      {
         var _loc1_:String = null;
         var _loc2_:Vector.<_810c4ade948afb64e9c7ee25> = new Vector.<_810c4ade948afb64e9c7ee25>();
         for(_loc1_ in this.locationUserByUsername)
         {
            _loc2_.push(this.locationUserByUsername[_loc1_]);
         }
         return _loc2_;
      }
      
      public function _400615e47876a0c274786f37(param1:String, param2:CharViewConfig) : void
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = null;
         if(param1 in this.locationUserByUsername)
         {
            _loc3_ = this.locationUserByUsername[param1];
            _loc3_.viewConfig = param2;
         }
      }
      
      public function _80557ec7c85c6def233bada4() : void
      {
         var _loc1_:int = 0x60A67005 ^ 0x2FBC0B19 ^ 0x7800CE6C ^ -608145174;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5F92A497 ^ 0x39B2B1F0 ^ 0x30FB0F10 ^ -1174282259))
            {
               case 0:
                  app.char.isFreeze = false;
                  this._db484614a71f0398bdc80d31();
                  if(this.isSublocation)
                  {
                     _loc1_ = -84359158 ^ -1281941464 ^ -1300149086 ^ 0x17346119;
                  }
                  else
                  {
                     _loc1_ = 0x3954FA01 ^ 0x72C757BA ^ 0x7FE2FDA7 ^ -659843705;
                  }
                  break;
               case 1:
                  _dfa25706e58a240c1e33e5c6.locationExtension.enterToLocation(this._id,GameSwf.instance.lastLocationId,GameSwf.instance.lastVirtualLocationID,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._c8fe96675c5b2ff9c16e1284));
                  GameSwf.instance.lastLocationId = this._id;
                  _loc1_ = -2040157737 ^ -422901303 ^ -1696246914 ^ 0x169136F8;
                  break;
               case 2:
                  dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.ENTER_TO_LOCATION));
                  return;
               case 3:
                  _dfa25706e58a240c1e33e5c6.locationExtension._8baab790e59e91e8d64bc4d2(this._id,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._c8fe96675c5b2ff9c16e1284));
                  _loc1_ = 0x5B2B10F4 ^ 0x2702DD98 ^ -71411509 ^ 0x6B4D503F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _23c3b6f92a3e3c08391f2110() : void
      {
         this._a160aaaecae13e04f828a15f();
         this._23802b7f50d51a97990d59c0();
      }
      
      public function _cbd9890092484ccef108425b() : void
      {
         this._db484614a71f0398bdc80d31();
      }
      
      public function deactivate() : void
      {
         this.wasLoadedFirstResp = false;
         this.shells = new Vector.<Point>();
      }
      
      public function _8a6045407265211773eaad2e(param1:String, param2:ProfileUserInfoResp) : void
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = null;
         if(param1 in this.locationUserByUsername)
         {
            _loc3_ = this.locationUserByUsername[param1];
         }
         else
         {
            if(!(param1 in this._infoLocationUserByUsername))
            {
               this._infoLocationUserByUsername[param1] = new _810c4ade948afb64e9c7ee25();
            }
            _loc3_ = this._infoLocationUserByUsername[param1];
         }
         _loc3_._59bb65cc0c23cc40d9283b3f(param1,param2);
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         ++this._b48c564013fe20dadf49e910;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         --this._b48c564013fe20dadf49e910;
         super.removeEventListener(param1,param2,param3);
      }
      
      public function set wasLoadedFirstResp(param1:Boolean) : void
      {
         this._71518b8b8ffa9ff04f48dd8e = param1;
      }
   }
}


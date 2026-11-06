package com.ax3.fishao.locations.privateHouse
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug._9b189a790efd59581443eb40;
   import com.ax3.fishao.display.dialogs._311b59f59bb124cdc61b9bda;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.chars._2e5b3522a164ee588f85e4b1;
   import com.ax3.fishao.locations.decorationMarket._08482ab86896c1348bb9eecb;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.items.controller._b4e9a07262330690b635623c;
   import com.ax3.fishao.locations.items.model._4aa243954966c493c452eb64;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.locations.objects._6161ec218a1fd90e33925f86;
   import com.ax3.fishao.locations.objects._8e55d069d3b23302aff25778;
   import com.ax3.fishao.locations.privateHouse.interior.controller._afb131a8b7579a7c44d03bf8;
   import com.ax3.fishao.locations.privateHouse.interior.model._b96ff5cb658b59458748ed64;
   import com.ax3.fishao.locations.privateHouse.model._2713ec585daceb8ad62e2797;
   import com.ax3.fishao.locations.privateHouse.model._7722187ec3b04ac1b3714952;
   import com.ax3.fishao.model._5c61816df588994ab1b4dbe4;
   import com.ax3.fishao.model.info._d1ac35bdca78006e84f51a32;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._3810c68698c1b61dede7885f;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._1c5bb71733a87b9f41a9aeb5;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.breeding._f2b1c613b43475620da0eb28;
   import com.ax3.fishao.view.dialogs.interior._6a8967ac4d1067e2adb0979a;
   import com.ax3.fishao.view.dialogs.location._a0004c868e522c1510193b5f;
   import com.ax3.fishao.view.dialogs.moneyTree.model._ed07e6b604e8c0a96f258168;
   import com.ax3.fishao.view.wrappers._ca27b8d2ca815ae75d3ef02d;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.math.limit;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.setTimeout;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.sr.UpdateResp;
   
   public class _c24229eda44b942058106fae extends _67f8febc099eaa05c48aa41e
   {
      
      private static const _e60c507d646ca6029b24869f:Point = new Point(0x5A057861 ^ -1417351247 ^ -171830444 ^ 0x044385A8,0x38CE55D4 ^ 0x6836D91C ^ 0x566F14FE ^ 0x06979D22);
      
      private static const _231f3c1ddd91e28d2e4fa072:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揂捷揋挂掬揰掙揿揼捔捽援挘掷揸捽揙捊控挨揂振掾挥","揆掮捺捄掵捨捖掹挲挠揚挬挓揝揧掞");
      
      private var _57d48a815837b6af4ab8a07d:Boolean = false;
      
      protected var _controllerInterior:_afb131a8b7579a7c44d03bf8;
      
      protected var _furnitureMap:Array;
      
      protected var blackRectangle:Sprite;
      
      private var _0d21d58c127f896d14ce504b:_b7721b56782b7cbf756127e2;
      
      private var _835a340797e31f049aca2449:Sprite;
      
      private var _537b1d49707fc334ecca1d5c:Vector.<_810c4ade948afb64e9c7ee25> = new Vector.<_810c4ade948afb64e9c7ee25>();
      
      private var _d215bb120883f9e87704de1b:Boolean = false;
      
      private var _64ae906c40425db51679588c:String;
      
      private var _d9a9a6af4e256d5ee1427878:String;
      
      private var _5677a59e963e4a2287fdf8fe:_87a2b64ec17c6fb7cbdd79f4;
      
      private var _deb774372afbef68d2a0710b:Boolean = false;
      
      private var _22a57845b2c9eb43f1e8cfaf:int;
      
      private var _7a25304e902b528db0432672:uint = 0;
      
      private var _4b0dc3c5614d0f16e7921a91:Boolean = false;
      
      private var _f235d82216f3fe7273764603:_5c61816df588994ab1b4dbe4;
      
      private var _34a1175a3c21c1bbfdf4add3:_283b592e1b144e604db439f2;
      
      private var _ae604491eb2df04a96f038ca:_f2b1c613b43475620da0eb28;
      
      private var _f31eef11fcc5892230a8c522:_6a8967ac4d1067e2adb0979a;
      
      private var _56f5da38edd22b2ef2627f3c:_a0004c868e522c1510193b5f;
      
      private var _6d3857b199ace5b30240ee95:Function;
      
      private var _c832b2f30237fc9e9d397395:Function;
      
      private var _eb84ff67766704b2cbbaf019:Boolean;
      
      private var _745c114d13acd9debaa890c3:Boolean;
      
      private var _0bd36a0a7d5de68b82505f22:Boolean;
      
      public function _c24229eda44b942058106fae(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super(param1);
         this.init();
      }
      
      private static function _316e718da3bf12d890aecd96(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:String = _7722187ec3b04ac1b3714952._fc21c6fcb1fe49a9d7b25112(param1.roomPrevious,param1.roomCurrent);
         param1.moveStrategy.stop();
         switch(_loc2_)
         {
            case _7722187ec3b04ac1b3714952.EPHDP_LEFT:
               §§push(-411744206 ^ -1968341944 ^ 0x28B94620 ^ 0x4561725A);
               break;
            case _7722187ec3b04ac1b3714952.EPHDP_CENTER:
               §§push(0x47E5D8ED ^ -397220670 ^ -805840990 ^ 0x6040EB8C);
               break;
            default:
               §§push(-142849087 ^ -1165078387 ^ -1038770135 ^ -1880638617);
         }
         switch(§§pop())
         {
            case 0:
               param1._015441cff5b379e5b657f935(-490110946 ^ 0x1530DC7B ^ -1759313687 ^ 0x60DA5C1A,PRIVATE_HOUSE_GARDEN_HEIGHT - (0x7C672D1C ^ -1007374901 ^ 0x31293701 ^ -1900365835),-223350784 ^ 0x3C7AF4D2 ^ 0x29F6C1A2 ^ -417086166);
               param1._d920697e2d07908f09509e8e(0x533F0E39 ^ 0x197080E3 ^ -1929470687 ^ -961473683,PRIVATE_HOUSE_GARDEN_HEIGHT - (0x1B129BF0 ^ 0x09D9E154 ^ -1487488599 ^ -1247952100));
               break;
            case 1:
               switch(param1.roomCurrent)
               {
                  case _2713ec585daceb8ad62e2797.EPP_GARDEN:
                     §§push(0x5CBAD847 ^ 0x107A7A83 ^ -467134395 ^ -1461142911);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
                     §§push(-747562385 ^ -1379086586 ^ 0x44944943 ^ 0x3A299C2B);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
                     §§push(0x43FB343A ^ 0x673506D8 ^ 0x1E6A01B5 ^ 0x3AA43355);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
                     §§push(0x07E73E11 ^ 0x5987DA0E ^ 0x17657E49 ^ 0x49059A55);
                     break;
                  default:
                     §§push(0x3E9BFF0E ^ -2105740588 ^ 0x39DD681B ^ -2059770427);
               }
               switch(§§pop())
               {
                  case 0:
                     param1._015441cff5b379e5b657f935(0x4DD7D808 ^ 0x69797879 ^ 0x481D6356 ^ 0x6CB3C20B,PRIVATE_HOUSE_GARDEN_HEIGHT,0x0A36E9AA ^ -1759969113 ^ 0x1C3F1073 ^ 0x7EEF06D8);
                     break;
                  case 1:
                     param1._015441cff5b379e5b657f935(0x405F13EA ^ -61635185 ^ -271153865 ^ 0x53DA127E,PRIVATE_HOUSE_GARDEN_HEIGHT,-1957262738 ^ 0x6ADD95D0 ^ 0x7E70F6F8 ^ -1610880740);
                     break;
                  case 2:
                  case 3:
                     param1._015441cff5b379e5b657f935(0x51603D41 ^ 0x54E099EB ^ -1997425172 ^ -1921970070,PRIVATE_HOUSE_GARDEN_HEIGHT - (0x793CE228 ^ -1418122815 ^ 0x3A68BCEB ^ -399673581),-805920454 ^ 0x5A535C8B ^ -1982403706 ^ -477304431);
                     param1._d920697e2d07908f09509e8e(-1250073762 ^ 0x08699582 ^ 0x04EDB3DF ^ -1174846417,PRIVATE_HOUSE_GARDEN_HEIGHT - (-1001847288 ^ -475033102 ^ 0x61BBFC0C ^ 0x465D6BE7));
               }
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("划剠劝副刂劜刱勇剔剮劬剟劏勉刱剑刬勘刂劫剒勐勦剷劣刀剆勶劀剣勨剋劃刐勼勍剹剏劻刾努判劔剽剣剱剰刱勐刋剑剟勗刻剒剜别动勱剞勼務勜勥刃刢勐剷勩劭劜券刪勢劼刣勓剔劍劧勩勘勭勴剮劇刵劾勰勢动剑剱删券剋劝勇刲勿剾刈剖剃","勪刧剔剠劙勁勉力劬剕劰劈剢剳勬勿"));
         }
      }
      
      private static function _a4228dae579f1f529a3fd4ae(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:String = _7722187ec3b04ac1b3714952._fc21c6fcb1fe49a9d7b25112(param1.roomPrevious,param1.roomCurrent);
         param1.moveStrategy.stop();
         switch(_loc2_)
         {
            case _7722187ec3b04ac1b3714952.EPHDP_LEFT:
               §§push(-1385242481 ^ -1713209760 ^ -823494541 ^ -93919588);
               break;
            case _7722187ec3b04ac1b3714952.EPHDP_CENTER:
               §§push(0x383E8D6F ^ 0x69E43E6F ^ -1826648813 ^ -1027260910);
               break;
            default:
               §§push(-250969467 ^ 0x3536E0B6 ^ -1800340414 ^ 0x508C9E73);
         }
         switch(§§pop())
         {
            case 0:
               param1._d920697e2d07908f09509e8e(0x4F902E62 ^ -55893462 ^ 0x2302EED7 ^ -1875254775,PRIVATE_HOUSE_GARDEN_HEIGHT - (0x322C69D1 ^ -1545854673 ^ -1138034823 ^ 0x2DDABFA4));
               break;
            case 1:
               switch(param1.roomCurrent)
               {
                  case _2713ec585daceb8ad62e2797.EPP_GARDEN:
                     §§push(0x444D7F90 ^ 0x2EBD99F7 ^ -220918418 ^ -1742345463);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
                     §§push(-257101256 ^ -2027546343 ^ -1335307451 ^ -941475739);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
                     §§push(-900089606 ^ -1962658865 ^ -1712640840 ^ -659118193);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
                     §§push(0x14569F5E ^ 0x21A643E2 ^ -1192561950 ^ -1927664035);
                     break;
                  default:
                     §§push(-837828356 ^ 0x60D93698 ^ -725513255 ^ 0x7A177DB9);
               }
               switch(§§pop())
               {
                  case 0:
                     param1._d920697e2d07908f09509e8e(-1548109478 ^ 0x301209A5 ^ -1726250670 ^ 0x0AB03081,PRIVATE_HOUSE_GARDEN_HEIGHT);
                     break;
                  case 1:
                     param1._d920697e2d07908f09509e8e(-1082221847 ^ 0x74F6CAB1 ^ -1486981651 ^ 0x6CD62499,PRIVATE_HOUSE_GARDEN_HEIGHT);
                     break;
                  case 2:
                  case 3:
                     param1._d920697e2d07908f09509e8e(-1034987578 ^ -1214954203 ^ 0x5B98186E ^ 0x2E420BA1,PRIVATE_HOUSE_GARDEN_HEIGHT - (0x9540E0 ^ 0x31AB4AF2 ^ 0x47A0BEB6 ^ 0x769EB487));
               }
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣捴挺掻挱掲揹掹揳揳揯挄挝揑换捛捱掏捉挸捓捪挅掀挒掷捬挠挢揣揢捿挝挂捆掹捁揶揜捫揙掯捔挘捋揰挺捭掮掏揽挣挨捃挔掦捳捶掂揙揦捔损捇揫揭揳揊揰揮掴挮揲捥挛损揓揘揆挒捽挗揝揀挼揾捧据捍揆捠挽捭掅按捦掳揽掚挰捀揳挩挝","挱掾揈探揪挟挂捇挴掔掟提捗揸捯掠"));
         }
      }
      
      public function set isOnObstacleTrap(param1:Boolean) : void
      {
         this._0bd36a0a7d5de68b82505f22 = param1;
      }
      
      public function get furnitureMap() : Array
      {
         return this._furnitureMap;
      }
      
      public function get controllerInterior() : _afb131a8b7579a7c44d03bf8
      {
         return this._controllerInterior;
      }
      
      public function set playerPositionCurrent(param1:String) : void
      {
         var _loc2_:int = 0x483D1C2C ^ 0x0E7ABA7A ^ 0x75AEC1D7 ^ 0x695C873D;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5AB344D4 ^ -729099254 ^ 0x685ED185 ^ -1127046683))
            {
               case 0:
                  return;
               case 1:
                  this._d9a9a6af4e256d5ee1427878 = param1;
                  this._73a617962953000a53142178();
                  return;
               case 2:
                  if(this._64ae906c40425db51679588c == param1)
                  {
                     _loc2_ = 0x4A239F3B ^ -1315139791 ^ 0x595E07F2 ^ -128649402;
                  }
                  else
                  {
                     _loc2_ = 0x4335B5FF ^ 0x30324EB8 ^ 0x405FABAF ^ 0x69EDB057;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get playerPositionCurrent() : String
      {
         return this._64ae906c40425db51679588c;
      }
      
      public function get isOwnHouse() : Boolean
      {
         return this._0d21d58c127f896d14ce504b.isOwnHouse;
      }
      
      public function get locationLayers() : _87a2b64ec17c6fb7cbdd79f4
      {
         return this._5677a59e963e4a2287fdf8fe;
      }
      
      override protected function get dynamicGraphicsProgress() : Number
      {
         return this._controllerInterior.dynamicGraphicsProgress;
      }
      
      public function get buildMode() : Boolean
      {
         return this._57d48a815837b6af4ab8a07d;
      }
      
      public function set buildMode(param1:Boolean) : void
      {
         this._57d48a815837b6af4ab8a07d = param1;
         this._0c761ef14388092d63092e4c();
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.privateHouseWall,!this._57d48a815837b6af4ab8a07d);
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.viewDoorCenter.zOrderDoor,!this._57d48a815837b6af4ab8a07d);
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.viewDoorCenter.zOrderShadow,!this._57d48a815837b6af4ab8a07d);
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.viewDoorCenter.zOrderFrame,!this._57d48a815837b6af4ab8a07d);
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.viewDoorLeft.zOrderDoor,!this._57d48a815837b6af4ab8a07d);
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.viewDoorLeft.zOrderShadow,!this._57d48a815837b6af4ab8a07d);
         this._5677a59e963e4a2287fdf8fe._d0d46faffd25649ffc40c9c4(this._5677a59e963e4a2287fdf8fe.viewDoorLeft.zOrderFrame,!this._57d48a815837b6af4ab8a07d);
      }
      
      public function get obstacleMap() : BitmapData
      {
         var _loc1_:int = 0x17FB9720 ^ 0x7DE05E34 ^ -2094737203 ^ -585089765;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2B761B94 ^ 0x472930A2 ^ -915427786 ^ -1859147326))
            {
               case 0:
                  if(this._5677a59e963e4a2287fdf8fe == null)
                  {
                     _loc1_ = -983578795 ^ 0x724FF6DC ^ -1455681696 ^ 0x2A33122A;
                  }
                  else
                  {
                     _loc1_ = -62041004 ^ -245072656 ^ -2000990769 ^ -1316140629;
                  }
                  break;
               case 1:
                  return null;
               case 2:
                  return this._5677a59e963e4a2287fdf8fe._698bb584b5b0ca8d2e60ce08();
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._5677a59e963e4a2287fdf8fe.viewDoorCenter != null && param3.roomCurrent != _2713ec585daceb8ad62e2797.EPP_GARDEN && this._5677a59e963e4a2287fdf8fe.viewDoorCenter.hitTest(param1,param2,false) || this._5677a59e963e4a2287fdf8fe.viewDoorLeft != null && this._5677a59e963e4a2287fdf8fe.viewDoorLeft.hitTest(param1,param2,false) || !this._57d48a815837b6af4ab8a07d && this._controllerInterior._9fc09ec9cd14fd5e825e7028(param1,param2);
      }
      
      public function get interiorItemsLocation() : String
      {
         var _loc1_:String = null;
         switch(locationModel.absoluteId)
         {
            case _24fc30cfc3c855ea21a231e8.FRIENDS_PRIVATE_HOUSE.id:
               §§push(-396848150 ^ 0x2E611289 ^ -456082510 ^ 0x22E93AD1);
               break;
            case _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE.id:
               §§push(0x266BB9F9 ^ 0x53E1964B ^ 0x5BDDACC9 ^ 0x2E57837A);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_1_DECORMARKET.id:
               §§push(0x71373159 ^ -473183436 ^ 0x50815E4B ^ -1031953372);
               break;
            default:
               §§push(-738593457 ^ -1768502894 ^ 0x428AC8D9 ^ 0x07E5F407);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = _b96ff5cb658b59458748ed64.EIIL_FRIENDS_HOUSE;
               break;
            case 1:
               _loc1_ = _b96ff5cb658b59458748ed64.EIIL_PRIVATE_HOUSE;
               break;
            case 2:
               _loc1_ = _b96ff5cb658b59458748ed64.EIIL_DECORATION_SHOP;
         }
         return _loc1_;
      }
      
      public function get isEnterAnyDoor() : Boolean
      {
         var _loc1_:Boolean = true;
         if(_playerChar != null && _playerChar.position != null)
         {
            _loc1_ = _playerChar.position.y <= PRIVATE_HOUSE_GARDEN_HEIGHT;
         }
         return _loc1_;
      }
      
      public function get isEnterCenterDoor() : Boolean
      {
         var _loc1_:Boolean = true;
         if(_playerChar != null && _playerChar.position != null)
         {
            _loc1_ = _playerChar.position.x >= PRIVATE_HOUSE_CENTER_DOOR_X_MIN;
         }
         return _loc1_;
      }
      
      protected function _debeb0e5fad676445283f257() : void
      {
         this._5677a59e963e4a2287fdf8fe.viewDoorCenter.isEnabled = true;
         this._5677a59e963e4a2287fdf8fe.viewDoorLeft.isEnabled = true;
         switch(this._64ae906c40425db51679588c)
         {
            case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
               §§push(-38739249 ^ 0x46452D1E ^ 0x02F3E920 ^ -1190779151);
               break;
            case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
               §§push(0x4EF7618C ^ -160291505 ^ 0x5E822D02 ^ -435721792);
               break;
            case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
               §§push(-67896144 ^ -1493519256 ^ 0x1A7D9FCA ^ 0x4774D710);
               break;
            case _2713ec585daceb8ad62e2797.EPP_GARDEN:
               §§push(-627059506 ^ -1049516158 ^ 0x4BB1D4BB ^ 0x505FA7F4);
               break;
            default:
               §§push(0x44396AC1 ^ 0x2E4D07F1 ^ -430506067 ^ -1943891303);
         }
         switch(§§pop())
         {
            case 0:
               this._5677a59e963e4a2287fdf8fe.viewDoorCenter.viewType = _8e55d069d3b23302aff25778.VIEW_TYPE_GARDEN;
               this._5677a59e963e4a2287fdf8fe.viewDoorLeft.viewType = _8e55d069d3b23302aff25778.VIEW_TYPE_STAIRS_UP;
               this._5677a59e963e4a2287fdf8fe.viewDoorLeft.isEnabled = this._controllerInterior._d319f27f99778c23887a2a42(-1276877420 ^ -413618281 ^ -515838948 ^ -1241766371);
               break;
            case 1:
               this._5677a59e963e4a2287fdf8fe.viewDoorCenter.viewType = _8e55d069d3b23302aff25778.VIEW_TYPE_STAIRS_UP;
               this._5677a59e963e4a2287fdf8fe.viewDoorLeft.viewType = _8e55d069d3b23302aff25778.VIEW_TYPE_STAIRS_DOWN;
               this._5677a59e963e4a2287fdf8fe.viewDoorCenter.isEnabled = this._controllerInterior._d319f27f99778c23887a2a42(0x02A26E38 ^ -752532741 ^ 0x715542EA ^ -1596821974);
               break;
            case 2:
               this._5677a59e963e4a2287fdf8fe.viewDoorLeft.isEnabled = false;
               this._5677a59e963e4a2287fdf8fe.viewDoorCenter.viewType = _8e55d069d3b23302aff25778.VIEW_TYPE_STAIRS_DOWN;
               break;
            case 3:
               this._5677a59e963e4a2287fdf8fe.viewDoorCenter.itemsVisibility = false;
               this._5677a59e963e4a2287fdf8fe.viewDoorLeft.isEnabled = false;
         }
      }
      
      protected function _0c761ef14388092d63092e4c() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         if(this._57d48a815837b6af4ab8a07d)
         {
            player._1963d0a948fa760e5dca0769();
            gui.deactivate();
         }
         else
         {
            player._e0fa1409bf0227106cc53a79();
            gui.activate();
         }
         this._3ac86702d8be456a4baac300();
         this._5677a59e963e4a2287fdf8fe.viewBuildingGrid.visible = this._57d48a815837b6af4ab8a07d;
         this._5677a59e963e4a2287fdf8fe.privateHouseEntrance.visible = !this._57d48a815837b6af4ab8a07d && this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR;
         gui.visible = !this._57d48a815837b6af4ab8a07d;
         this._32c8b99662eae5b4b945b1a4(!this._57d48a815837b6af4ab8a07d);
         for each(_loc1_ in _charList)
         {
            _loc1_.visible = !this._57d48a815837b6af4ab8a07d;
         }
      }
      
      protected function _73a617962953000a53142178() : void
      {
         this._4b0dc3c5614d0f16e7921a91 = true;
         this._eb84ff67766704b2cbbaf019 = true;
         switch(this._64ae906c40425db51679588c)
         {
            case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
               §§push(-2068414495 ^ 0x5B5C1B96 ^ 0x156ED00A ^ -897272707);
               break;
            case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
               §§push(-784510626 ^ -481886623 ^ -1956430176 ^ -1189572194);
               break;
            case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
               §§push(-1593249396 ^ -1549072078 ^ 0x3CEF8885 ^ 0x3E4C7039);
               break;
            case _2713ec585daceb8ad62e2797.EPP_GARDEN:
               §§push(0x140DCB9C ^ 0x0103A9D7 ^ 0x168B871C ^ 0x0385E554);
               break;
            default:
               §§push(-521047216 ^ 0x1F7F49A2 ^ -1652469923 ^ 0x620F75AB);
         }
         switch(§§pop())
         {
            case 0:
               switch(this._d9a9a6af4e256d5ee1427878)
               {
                  case _2713ec585daceb8ad62e2797.EPP_GARDEN:
                     §§push(0x5D1FBD10 ^ 0x5FF3E328 ^ 0x4E604285 ^ 0x4C8C1CBD);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
                     §§push(-1869276612 ^ -1275389744 ^ -1954113957 ^ -1461152586);
                     break;
                  default:
                     §§push(0x16101444 ^ 0x4C114FA8 ^ 0x59528D11 ^ 0x0353D6FF);
               }
               switch(§§pop())
               {
                  case 0:
                     _playerChar._1963d0a948fa760e5dca0769();
                     this._e5c85f8c2d76f36b5987dbef(this._236f605b180eda0099c14965);
                     break;
                  case 1:
                     this._03511db01493ff3d355d66b7(this._67769c56f3e1fe225ca80572);
               }
               break;
            case 1:
               switch(this._d9a9a6af4e256d5ee1427878)
               {
                  case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
                     §§push(0x13DCFFC8 ^ 0x5C08A351 ^ 0x311E8494 ^ 0x7ECAD80D);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
                     §§push(-1930236098 ^ 0x2A0F7044 ^ 0x2422F615 ^ -2099287698);
                     break;
                  default:
                     §§push(0x7FA27DB8 ^ -72751099 ^ -1386430881 ^ 0x29572BE0);
               }
               switch(§§pop())
               {
                  case 0:
                     this._03511db01493ff3d355d66b7(this._67769c56f3e1fe225ca80572);
                     break;
                  case 1:
                     this._03511db01493ff3d355d66b7(this._67769c56f3e1fe225ca80572);
               }
               break;
            case 2:
               var _loc1_:String = this._d9a9a6af4e256d5ee1427878;
               switch(_2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR === _loc1_ ? -442621247 ^ -2005084915 ^ 0x6F4CEF14 ^ 0x02AE18D8 : 0x28C34773 ^ 0x69F26603 ^ 0x18D39C01 ^ 0x59E2BD70)
               {
                  case 0:
                     this._03511db01493ff3d355d66b7(this._67769c56f3e1fe225ca80572);
               }
               break;
            case 3:
               _loc1_ = this._d9a9a6af4e256d5ee1427878;
               switch(_2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR === _loc1_ ? 0x3E8CE0BE ^ 0x38D87EC5 ^ 0x66CB5C03 ^ 0x609FC278 : 0x190343EA ^ -1364100052 ^ -1155376129 ^ 0x0C906438)
               {
                  case 0:
                     _playerChar._1963d0a948fa760e5dca0769();
                     this._e5c85f8c2d76f36b5987dbef(this._177ede1da7a8841a4cb1c08c);
               }
         }
      }
      
      private function _ce1646aee2833474a6e81ed9(param1:Event) : void
      {
         if(breederDialog != null && breederDialog.hasEventListener(_1c5bb71733a87b9f41a9aeb5.BREEDER_DIALOG_CLOSED))
         {
            breederDialog.removeEventListener(_1c5bb71733a87b9f41a9aeb5.BREEDER_DIALOG_CLOSED,this._ce1646aee2833474a6e81ed9);
         }
         breederDialog = null;
         (locationModel as _b7721b56782b7cbf756127e2).breederRexNPC._616dc7206bab3b3a6c1ec937();
      }
      
      private function _093ab7d3ade771064a6189e3(param1:Event) : void
      {
         var _loc2_:_311b59f59bb124cdc61b9bda = app.dialogFactory._e767ece6653e3db98d71f3fe();
         if(_loc2_.hasEventListener(_311b59f59bb124cdc61b9bda.BREEDING_STATUS_DIALOG_CLOSED))
         {
            _loc2_.removeEventListener(_311b59f59bb124cdc61b9bda.BREEDING_STATUS_DIALOG_CLOSED,this._093ab7d3ade771064a6189e3);
         }
         (locationModel as _b7721b56782b7cbf756127e2).breederRexNPC._6c5474d9cc6afed3662f0c94();
         breederDialog = null;
      }
      
      private function _5c1996551330f1eb3dd48407(param1:MouseEvent) : void
      {
         var _loc2_:Number = param1.localX;
         var _loc3_:int = param1.localY;
         this._ae604491eb2df04a96f038ca.breedFish(_loc2_,Boolean(_loc3_));
         (locationModel as _b7721b56782b7cbf756127e2).breederRexNPC._cadbdb6713825aaec171f902(_loc2_,_loc3_);
         breederDialog = null;
      }
      
      override protected function _382676b04b2c0983e96eb2da() : void
      {
         super._382676b04b2c0983e96eb2da();
         _2a0f34975fb1d4e797ed0b1a(null);
         this._c047644bcf874f1a67d20ce2();
      }
      
      private function _88d798a197eeb0f6a895aa24(param1:MouseEvent) : void
      {
         this._22a57845b2c9eb43f1e8cfaf = param1.stageY;
         this._deb774372afbef68d2a0710b = true;
      }
      
      private function _5f23a09db6ed138a95fa1ad7(param1:MouseEvent) : void
      {
         this._deb774372afbef68d2a0710b = false;
      }
      
      private function _b6f910bb6f9336c21a0e89c3(param1:MouseEvent) : void
      {
         var _loc2_:int = -2085262387 ^ 0x1F852C08 ^ -1846053332 ^ 0x0DC731E9;
         var _loc3_:Number = NaN;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this._deb774372afbef68d2a0710b)
         {
            _loc2_ = (param1.stageY - this._22a57845b2c9eb43f1e8cfaf) * (-879002723 ^ 0x36E1A52E ^ 0x63BCB487 ^ 0x613995C9);
            this._22a57845b2c9eb43f1e8cfaf = param1.stageY;
            _loc3_ = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剭効勗勎刻勓剘勱勒劁勆劓勔勁勲动劂判副切劦勲劀剪","务剚力努刎劲勽剹勽剌剂剟务剦删劗");
            if(this._5677a59e963e4a2287fdf8fe != null)
            {
               _loc4_ = this._5677a59e963e4a2287fdf8fe.scrollRect;
            }
            if(_playerChar != null && _loc4_ != null)
            {
               _loc5_ = 0x103CB4FB ^ -2003424347 ^ -599556762 ^ 0x44E9E238;
               _loc6_ = _loc2_;
               if(_loc5_ * _loc5_ + _loc6_ * _loc6_ > (0x13B4D7A4 ^ -1076163821 ^ -180230776 ^ 0x592E38CB) * (-287801941 ^ 0x3F0E9F39 ^ 0x34AD5D93 ^ -444875019))
               {
                  if(_playerChar != null && _loc4_ != null)
                  {
                     _loc4_.x = Math.round(limit(_playerChar.graphic.x - scrollRect.width / (0x459A0908 ^ -1059495853 ^ 0x6DB115FB ^ -386761566),0x425F44FF ^ -230731338 ^ -987280572 ^ 0x75475E0D,this._5677a59e963e4a2287fdf8fe.fullWidth - scrollRect.width));
                     _loc4_.y = Math.round(limit(_playerChar.graphic.y - scrollRect.height / (-644437314 ^ 0x13FBEB4F ^ -941732158 ^ 0x0DB30F31),0x7428B443 ^ 0x48ABDDB2 ^ 0x653CC739 ^ 0x59BFAEC8,this._5677a59e963e4a2287fdf8fe.fullHeight - scrollRect.height));
                     _loc4_.width = scrollRect.width;
                     _loc4_.height = scrollRect.height;
                     _loc4_ = this.inspectRectByLocationLayersSize(_loc4_);
                     this._5677a59e963e4a2287fdf8fe.scrollRect = _loc4_;
                  }
               }
               else
               {
                  _loc6_ = int(_loc6_ * (_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剩勺勸劝刈刼勺勮剎勿勤勊劢剑勋剳剐刾勄剖加剱剖剬","剛剪勀勤劧勭勗劆刚副删勻勏劆刧剖") * _loc3_));
                  if(_loc6_ != (-41506081 ^ -224604036 ^ -82652579 ^ -200759042))
                  {
                     _loc4_.y += _loc6_;
                     _loc4_.y = Math.round(limit(_loc4_.y,-1856277369 ^ -60063377 ^ -792492355 ^ -1108119283,this._5677a59e963e4a2287fdf8fe.fullHeight - scrollRect.height + (0x1FE80CE3 ^ -1806539074 ^ -1290535666 ^ 0x38A99737)));
                     _loc4_ = this.inspectRectByLocationLayersSize(_loc4_);
                     this._5677a59e963e4a2287fdf8fe.scrollRect = _loc4_;
                  }
               }
            }
         }
         param1.stopPropagation();
      }
      
      override protected function onClick(param1:MouseEvent) : void
      {
         var _loc2_:int = -1012006425 ^ -1977526695 ^ 0x2B77E167 ^ -19435648;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1396816240 ^ 0x3BF4C49F ^ -486821701 ^ -375460881))
            {
               case 0:
                  super.onClick(param1);
                  _loc2_ = -1415038093 ^ 0x73EF1D2A ^ -2141221604 ^ -1002999265;
                  break;
               case 1:
                  return;
               case 2:
                  if(!this._57d48a815837b6af4ab8a07d)
                  {
                     _loc2_ = -512566618 ^ 0x7DD72E2E ^ -267157638 ^ -258387287;
                  }
                  else
                  {
                     _loc2_ = 0x7FC6ADE5 ^ -976460640 ^ 0x6C89CD8C ^ 0x4AACDD93;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _fc86f5b236d37b4635944a87(param1:ResponseNpcTalk) : void
      {
         var _loc2_:int = -1529936632 ^ 0x277D7D08 ^ -1792317635 ^ 0x236770CE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6B043FF6 ^ -1792486902 ^ 0x5E5A98FA ^ -1786242313))
            {
               case 0:
                  return;
               case 1:
                  this._f9e3332f7f18f6de69cb5977(param1);
                  _loc2_ = 0x7F30FBE7 ^ 0x240A9D93 ^ 0x756DCA5B ^ 0x1BA9C3DE;
                  break;
               case 2:
                  if(param1.name == _e42949745420bb5a55035b31.ENN_REX)
                  {
                     _loc2_ = 0x43B145F9 ^ 0x172BD812 ^ 0x796B4900 ^ 0x180FBB1B;
                  }
                  else
                  {
                     _loc2_ = 0x44CD88F7 ^ -1637211867 ^ -91984820 ^ 0x15DDAA6F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f9e3332f7f18f6de69cb5977(param1:ResponseNpcTalk) : void
      {
         var _loc2_:_311b59f59bb124cdc61b9bda = null;
         if(param1.message == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("်჈჉၏ႥჺဠႄႜဋၓႺႱၸ၃ႍჲႱჵဍ჻ၷ၁ဈდၗၢဥႤဋბၤႺၱჩაწၼဳႭှႰၘါ႐၉","ဋြဢဌႩႺႰრ჆Ⴄြၮဎၑ္ზ"))
         {
            if(GameSwf._d3e1b275b210647ff7fe10f6())
            {
               this._0d21d58c127f896d14ce504b.breederRexNPC.dialogStep = 0x1A9B108C ^ -1601897095 ^ 0x7CC164F9 ^ -958494452;
               this._0d21d58c127f896d14ce504b.breederRexNPC._37496d81243d975a8f2daa70();
               return;
            }
            breederDialog = app.dialogFactory._6483254e82773c9b84fc221c();
            breederDialog.addEventListener(_1c5bb71733a87b9f41a9aeb5.BREEDER_DIALOG_CLOSED,this._ce1646aee2833474a6e81ed9);
            breederDialog.addEventListener(_ca27b8d2ca815ae75d3ef02d.BREEDER_BUTTON_CLICK,this._5c1996551330f1eb3dd48407);
            breederDialog._3ab9ee943b31041ea986182e();
            breederDialog.show();
         }
         else if(param1.message == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠刋到剳勋効到删勯勸剂剪剟剎剰剸勳劻刬刺刟刖劃劮剭勦刵刑剛办募劔刮剭削勉剄勨刣勂刲剎刣勗劖勅劍勏剪劍募勔刈刳剻刑勥勓刌務効初","励则剹剭初劥勾勚刨刐削刢务刄剚勀"))
         {
            this._0d21d58c127f896d14ce504b.breederRexNPC.dialogStep = -915071426 ^ -2043552040 ^ 0x21CB88A0 ^ 0x6E8F4846;
            _loc2_ = app.dialogFactory._e767ece6653e3db98d71f3fe();
            _loc2_.addEventListener(_311b59f59bb124cdc61b9bda.BREEDING_STATUS_DIALOG_CLOSED,this._093ab7d3ade771064a6189e3);
            _loc2_.show();
         }
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         var _loc2_:int = 0x372CFE7B ^ 0x35F418C5 ^ -994347121 ^ -2023973208;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-666257593 ^ 0x7DB40669 ^ -1858724379 ^ 0x75F4A350))
            {
               case 0:
                  this._0d21d58c127f896d14ce504b._6b66eebfa60e655ef2108e62();
                  this._0d21d58c127f896d14ce504b._076c30ed1ae4d50b047c6cf6();
                  _loc2_ = 0x0AF529B9 ^ 0x0E877A4F ^ 0x7B94A7A5 ^ 0x3ED9FBC9;
                  break;
               case 1:
                  this._5677a59e963e4a2287fdf8fe.viewMoneyTree.isEnabled = this.isOwnHouse;
                  return;
               case 2:
                  super.onLocationLayersParsingComplete(param1);
                  _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this.blackRectangle);
                  _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this._835a340797e31f049aca2449);
                  if(!(this is _08482ab86896c1348bb9eecb))
                  {
                     _loc2_ = -245056139 ^ 0x06292AE9 ^ -741848868 ^ 0x65BAD0DB;
                  }
                  else
                  {
                     _loc2_ = -1355522069 ^ -1381716459 ^ -1613731230 ^ -595618810;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _5e952acaba820e0cc6990e8b() : void
      {
         var _loc1_:int = 0x1EF533D8 ^ 0x61AE3596 ^ -1340198565 ^ -2017474925;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-641432003 ^ -2051140657 ^ -406217117 ^ -213255659))
            {
               case 0:
                  return;
               case 1:
                  _2818e8e11814ef0ec6a953cc();
                  _loc1_ = -606605261 ^ 0x6B254C71 ^ 0x1F7DE6D6 ^ -411718896;
                  break;
               case 2:
                  this._controllerInterior.interiorData = this._f31eef11fcc5892230a8c522.currentLocationItems;
                  this._controllerInterior.load();
                  if(this._controllerInterior.interiorDataToLoadLength == (0x7A1CC02E ^ -1349855503 ^ -354205112 ^ 0x3F755497))
                  {
                     _loc1_ = -1716214493 ^ 0x051ECF99 ^ -2117755578 ^ 0x55950679;
                  }
                  else
                  {
                     _loc1_ = -1427164224 ^ 0x013B9594 ^ -1607470632 ^ 0x4301A608;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _fb49b418a5e92a0306b107b8() : void
      {
         this._controllerInterior.interiorData = this._f31eef11fcc5892230a8c522.currentLocationItems;
         this._controllerInterior._ba028639e855921d13a59b42();
      }
      
      protected function _78750676c5fbe6f73e04bc13() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = this._0d21d58c127f896d14ce504b._9aa9d817a9effb1ee3c32474(this._56f5da38edd22b2ef2627f3c.userChangedPositionLogin);
         if(_loc1_ != null)
         {
            _loc1_.fieldChar.roomCurrent = this._56f5da38edd22b2ef2627f3c.userChangedPositionPosition;
            if(_loc1_.fieldChar.roomCurrent == this._64ae906c40425db51679588c)
            {
               _316e718da3bf12d890aecd96(_loc1_.fieldChar);
            }
            else if(_loc1_.fieldChar.roomPrevious == this._64ae906c40425db51679588c)
            {
               _a4228dae579f1f529a3fd4ae(_loc1_.fieldChar);
            }
         }
      }
      
      override protected function _dbf22fe5130730391ec889be() : void
      {
         var _loc1_:int = -960515331 ^ -561517288 ^ -1195874645 ^ -874893989;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4AE5C24E ^ -427783922 ^ 0x70F009F3 ^ -1211148636))
            {
               case 0:
                  this._c832b2f30237fc9e9d397395();
                  _loc1_ = -1366814635 ^ -695343271 ^ -1812736971 ^ -2136197334;
                  break;
               case 1:
                  _playerChar._1963d0a948fa760e5dca0769();
                  this._e5c85f8c2d76f36b5987dbef(this._6d3857b199ace5b30240ee95);
                  _loc1_ = -2017671278 ^ -178323196 ^ 0x699E2DB6 ^ 0x7027FF34;
                  break;
               case 2:
                  super._dbf22fe5130730391ec889be();
                  if(this._6d3857b199ace5b30240ee95 != null)
                  {
                     _loc1_ = -6999015 ^ 0x298141CB ^ -887404975 ^ 0x76552795;
                  }
                  else
                  {
                     _loc1_ = 0x50278FDE ^ 0x4B08FF09 ^ 0x7DEA9239 ^ 0x0D9FF6FA;
                  }
                  break;
               case 3:
                  if(this._c832b2f30237fc9e9d397395 != null)
                  {
                     _loc1_ = 0x39745845 ^ 0x3A82C914 ^ -1302543188 ^ -621788694;
                  }
                  else
                  {
                     _loc1_ = 0x2DA7CFF5 ^ 0x1A7157EE ^ 0x216EBF3C ^ 0x7DE23334;
                  }
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _7f8989624a1f7994494a1acf() : void
      {
         this._4b0dc3c5614d0f16e7921a91 = false;
         this._c832b2f30237fc9e9d397395 = null;
      }
      
      private function _c705540b8e9e33cc212b8230() : void
      {
         this._835a340797e31f049aca2449.visible = false;
         _16bdb56d599c22bb9eebc6e3(new Point(_playerChar.position.x,PRIVATE_HOUSE_GARDEN_HEIGHT - (-357474107 ^ -201551514 ^ 0x3803DD27 ^ 0x214E2C95)));
      }
      
      private function _64849f5ac1b10cc5f3c2e329() : void
      {
         this._b56d66c278309504492cc35c();
         this._4b0dc3c5614d0f16e7921a91 = false;
         this._835a340797e31f049aca2449.visible = false;
      }
      
      private function init() : void
      {
         this._34a1175a3c21c1bbfdf4add3 = GameSwf.instance.managerTutorial;
         this._ae604491eb2df04a96f038ca = GameSwf.instance.managerBreeding;
         this._f31eef11fcc5892230a8c522 = GameSwf.instance.managerInterior;
         this._56f5da38edd22b2ef2627f3c = GameSwf.instance.managerLocation;
         this._controllerInterior = new _afb131a8b7579a7c44d03bf8();
         this._controllerInterior.locationDialog = this;
         this._controllerInterior.interiorItemsPlace = this.interiorItemsLocation;
         this._f235d82216f3fe7273764603 = app.user.inventory;
         this._0d21d58c127f896d14ce504b = locationModel as _b7721b56782b7cbf756127e2;
         this._64ae906c40425db51679588c = _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR;
         this._furnitureMap = [];
         this._furnitureMap.push(_b7721b56782b7cbf756127e2._504069c79de6f40c22f781b0());
         this._furnitureMap.push(_b7721b56782b7cbf756127e2._1cc1dd4be4594fcb554c6422());
         this._furnitureMap.push(_b7721b56782b7cbf756127e2._abf5b4e2c9a3c3c456df85e0());
         this.blackRectangle = new Sprite();
         this.blackRectangle.graphics.beginFill(0x1E70F4FC ^ -902992636 ^ 0x01F7A77B ^ -710263165);
         var _temp_2:* = this.blackRectangle.graphics;
         var _temp_1:* = 0x7E0B54F9 ^ -839501524 ^ 0x464FC46A ^ -172840513;
         _temp_2.drawRect(_temp_1,_temp_1,0x04C92F43 ^ 0x7468391C ^ 0x051BCD19 ^ 0x75BAD924,0x5F606C89 ^ 0x014ABBBA ^ 0x34C25509 ^ 0x6AE8811A);
         this.blackRectangle.graphics.endFill();
         this.blackRectangle.x = 0x7EE2AB06 ^ 0x6668ACCA ^ -630999060 ^ -1024872416;
         this.blackRectangle.y = -1865012976 ^ -762766983 ^ 0x2E346C93 ^ -1818975294;
         this._835a340797e31f049aca2449 = new Sprite();
         this._835a340797e31f049aca2449.graphics.beginFill(0x0F9EA6D6 ^ -532785860 ^ -735186182 ^ 0x3B8D0110);
         var _temp_4:* = this._835a340797e31f049aca2449.graphics;
         var _temp_3:* = -2006719905 ^ -1964155402 ^ 0x01E541DF ^ 0x036BFE76;
         _temp_4.drawRect(_temp_3,_temp_3,-2114670661 ^ 0x3D4AC98E ^ 0x041110E1 ^ -1196460874,-837312226 ^ -1677578789 ^ 0x0A27C456 ^ 0x58324DE9);
         this._835a340797e31f049aca2449.graphics.endFill();
         this._835a340797e31f049aca2449.x = 0x721C2904 ^ 0x1679128A ^ 0x37590BFE ^ 0x533C3070;
         this._835a340797e31f049aca2449.y = 0x08E8B8E3 ^ -1807988771 ^ -2135577231 ^ 0x1C61524F;
         this._835a340797e31f049aca2449.alpha = -95351960 ^ 0x6913DE05 ^ -1827344245 ^ 0x5625E6;
         this._835a340797e31f049aca2449.visible = false;
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._5677a59e963e4a2287fdf8fe = super._3536e00a076cf84463e9eaaa() as _87a2b64ec17c6fb7cbdd79f4;
         this._controllerInterior.locationLayers = this._5677a59e963e4a2287fdf8fe;
         return this._5677a59e963e4a2287fdf8fe;
      }
      
      override public function update(param1:uint, param2:uint) : void
      {
         if(this._5677a59e963e4a2287fdf8fe != null)
         {
            super.update(param1,param2);
         }
         if(this is _c24229eda44b942058106fae && _playerChar != null)
         {
            this.inspectPlayerPosition();
         }
      }
      
      override protected function _e4cea8a1320d9934c03a35f6() : void
      {
         var _loc1_:int = 0x3458AC97 ^ 0x7AA73073 ^ -392692557 ^ -677891450;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1931468275 ^ 0x147149C1 ^ 0x3A243629 ^ -750448844))
            {
               case 0:
                  if(this._4b0dc3c5614d0f16e7921a91)
                  {
                     _loc1_ = 0x7FB2D9E2 ^ 0x12CA7D86 ^ 0x6293BBF5 ^ 0x7E1B4D42;
                  }
                  else
                  {
                     _loc1_ = -562837969 ^ -19290506 ^ -732153736 ^ -2063201551;
                  }
                  break;
               case 1:
                  super._e4cea8a1320d9934c03a35f6();
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8c89fd5cdb37dfb1bd5c8204() : void
      {
         this._5677a59e963e4a2287fdf8fe.privateGardenGrass.visible = this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN;
         this._5677a59e963e4a2287fdf8fe.privateGardenBush_1.visible = this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN;
         this._5677a59e963e4a2287fdf8fe.privateGardenBush_2.visible = this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN;
         this._5677a59e963e4a2287fdf8fe.privateHouseWall.visible = this._64ae906c40425db51679588c != _2713ec585daceb8ad62e2797.EPP_GARDEN;
         this._5677a59e963e4a2287fdf8fe.privateHouseFloor.visible = this._64ae906c40425db51679588c != _2713ec585daceb8ad62e2797.EPP_GARDEN;
         this._c2f3fcaf5c798d638a949703();
         this._controllerInterior._db2cb6e22f5706ec2599449a();
         this._debeb0e5fad676445283f257();
      }
      
      private function _3ac86702d8be456a4baac300() : void
      {
         switch(this._64ae906c40425db51679588c)
         {
            case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
               §§push(0x615CEB3F ^ -395781407 ^ 0x501ABF3C ^ -651260190);
               break;
            case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
               §§push(-664166006 ^ -1027048365 ^ 0x300535E2 ^ 0x2AA4E83A);
               break;
            case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
               §§push(0x5BF29B2C ^ -1063165649 ^ -1578597503 ^ 0x3ABB7980);
               break;
            default:
               §§push(-1153032722 ^ 0x4A04A9EF ^ -1475736666 ^ 0x5948BFA4);
         }
         switch(§§pop())
         {
            case 0:
               this._5677a59e963e4a2287fdf8fe.viewBuildingGrid.viewType = _6161ec218a1fd90e33925f86.TYPE_DEFAULT;
               break;
            case 1:
            case 2:
               this._5677a59e963e4a2287fdf8fe.viewBuildingGrid.viewType = _6161ec218a1fd90e33925f86.TYPE_EMPTY;
         }
      }
      
      private function _22c67d4f119cc423816421ee() : void
      {
         switch(this._64ae906c40425db51679588c)
         {
            case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
               §§push(-98223117 ^ -1560358471 ^ 0x66C68B47 ^ 0x3E1D610D);
               break;
            case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
               §§push(0x36A4E408 ^ -1713961963 ^ -1368741651 ^ 0x011948F1);
               break;
            case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
               §§push(0x419132C7 ^ -84394420 ^ -1562277482 ^ 0x1988851F);
               break;
            default:
               §§push(-35690613 ^ -405187993 ^ -1354305753 ^ -1254040888);
         }
         switch(§§pop())
         {
            case 0:
               this._5677a59e963e4a2287fdf8fe.locationExit = true;
               break;
            case 1:
               this._5677a59e963e4a2287fdf8fe.locationExit = false;
               break;
            case 2:
               this._5677a59e963e4a2287fdf8fe.locationExit = false;
         }
      }
      
      private function _03511db01493ff3d355d66b7(param1:Function) : void
      {
         _16bdb56d599c22bb9eebc6e3(new Point(_playerChar.position.x,PRIVATE_HOUSE_GARDEN_HEIGHT - (0x1C8BEB0E ^ 0x0964ABC4 ^ 0x5593DDF6 ^ 0x407C9D1F)));
         this._6d3857b199ace5b30240ee95 = param1;
      }
      
      private function _236f605b180eda0099c14965() : void
      {
         this._02814efe73eb1de4c2520ff7();
         this._5677a59e963e4a2287fdf8fe.viewMoneyTree.show();
         this._8c89fd5cdb37dfb1bd5c8204();
         this._8492141b7fc9b9a2038d0e44();
         this._eb84ff67766704b2cbbaf019 = false;
         this.blackRectangle.y = PRIVATE_HOUSE_HEIGHT_WITH_WALL;
         _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown);
         TweenCube.to(this._835a340797e31f049aca2449,_231f3c1ddd91e28d2e4fa072,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("据换挫掄捗插捊掼挓捑捘揆挄揧揠提捬掹","挀捐挡掷揭揱掀捆挞掝採揨掱捗挧揚")):-1637773893 ^ -1821182547 ^ -284988384 ^ -502262730},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别初勥刐加劣创剩切刞判剿勘勱刭刺剆制刷刍刘勔剣剼劾勶劁利","刣劉勜剙勌勑刌劬剷勫勪劸剴勂刜勀")):this._64849f5ac1b10cc5f3c2e329});
      }
      
      private function _177ede1da7a8841a4cb1c08c() : void
      {
         this._02814efe73eb1de4c2520ff7();
         this._5677a59e963e4a2287fdf8fe.viewMoneyTree.hide();
         this._8c89fd5cdb37dfb1bd5c8204();
         this._8492141b7fc9b9a2038d0e44();
         this._eb84ff67766704b2cbbaf019 = false;
         this.blackRectangle.y = (0x1D0AFB83 ^ -2126396124 ^ 0x78E16BBB ^ -458599146) - this._5677a59e963e4a2287fdf8fe.privateHouseWall.height;
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown);
         TweenCube.to(this._835a340797e31f049aca2449,_231f3c1ddd91e28d2e4fa072,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掉揿揯捖掩揕揾挺挚掔掆捧掦揇揓捅捈揧","捰掟掟挫掛揠挩挊掞掊掙揎掖捇掣挰")):0x4B602BA1 ^ -143422622 ^ -1225854742 ^ 0x0AFD5029},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻揌揪捏掔揈掮捓捨揭挺挃捫掇捚挒揈挖挜捻揾捅捻捒掼揺掔掓","揀捂捿揪揉揠掖揪措按揄捘揈捞挲掦")):this._64849f5ac1b10cc5f3c2e329});
      }
      
      private function _b56d66c278309504492cc35c() : void
      {
         _playerChar._e0fa1409bf0227106cc53a79();
         var _loc1_:_2e5b3522a164ee588f85e4b1 = _playerChar.moveStrategy as _2e5b3522a164ee588f85e4b1;
         if(_loc1_ != null)
         {
            _loc1_.stop();
         }
      }
      
      private function _67769c56f3e1fe225ca80572() : void
      {
         this._02814efe73eb1de4c2520ff7();
         this._b56d66c278309504492cc35c();
         this._6d3857b199ace5b30240ee95 = null;
         this._c832b2f30237fc9e9d397395 = this._7f8989624a1f7994494a1acf;
         this._eb84ff67766704b2cbbaf019 = false;
         this._745c114d13acd9debaa890c3 = true;
         _playerChar.position.rotation = -1687380629 ^ -617258476 ^ 0x6010B4A6 ^ 0x20494B83;
         this._8c89fd5cdb37dfb1bd5c8204();
         this._22c67d4f119cc423816421ee();
         TweenCube.to(this._835a340797e31f049aca2449,_231f3c1ddd91e28d2e4fa072,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽挢捼捡捵挞掟掱捀捱掘揎揮捨挲授揰換","捾捦揪捓揝捧捋掼振捥捘採控掴捨揕")):0x782BCEF8 ^ -476517045 ^ -1035934271 ^ 0x59F3C672},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挏挢捣捭捨掜捗挃挠掊揺提振捻挦揈捩捙挱挠掜掱挏掉挛掶捴揗","掺捋挟按揯掶掔揎揑掳捅掏捂挊揆握")):this._c705540b8e9e33cc212b8230});
      }
      
      private function _02814efe73eb1de4c2520ff7() : void
      {
         this._64ae906c40425db51679588c = this._d9a9a6af4e256d5ee1427878;
         _playerChar.roomCurrent = this._64ae906c40425db51679588c;
         this._56f5da38edd22b2ef2627f3c.changePosition(this._64ae906c40425db51679588c);
      }
      
      override protected function inspectPlayerPosition() : void
      {
         var _loc1_:int = -568087922 ^ -57845673 ^ -861323695 ^ 0x32FD638A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-781798608 ^ -1989149495 ^ -1243628917 ^ 0x312C5A72))
            {
               case 0:
                  return;
               case 1:
                  this._9c26bebdd6cbcfa3faf2034b();
                  return;
               case 2:
                  super.inspectPlayerPosition();
                  this._338f7c104e5c6230e4039076();
                  this._a12a1e6cadedf3acd77e6ac1();
                  if(this._eb84ff67766704b2cbbaf019)
                  {
                     _loc1_ = 0x78F610F4 ^ -2042945492 ^ 0x3EFD9301 ^ 0x1CCA0CD9;
                  }
                  else
                  {
                     _loc1_ = 0x46ED7DF0 ^ -18995993 ^ 0x651C2584 ^ 0x01D5D392;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _9c26bebdd6cbcfa3faf2034b() : void
      {
         var _loc1_:String = null;
         var _loc2_:_08c120b706560fce9302bcab = null;
         if(locationModel != null && locationModel.locationUserByUsername != null)
         {
            for(_loc1_ in locationModel.locationUserByUsername)
            {
               if(_loc1_ != app.user.username)
               {
                  _loc2_ = _0d82238986438e23b653c2b8(_loc1_);
                  if(_loc2_ != null && _playerChar != null)
                  {
                     if(!_loc2_.isOnForceMove)
                     {
                        _loc2_.graphic.visible = this._64ae906c40425db51679588c == _loc2_.roomCurrent;
                        if(_loc2_.visible != true)
                        {
                           _loc2_.chat.visible = false;
                           if(_loc2_.controllerUserPopup.view.source.visible)
                           {
                              _loc2_.controllerUserPopup.hide();
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function _338f7c104e5c6230e4039076() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         if(_playerChar == null || _playerChar.programmedMove || this._4b0dc3c5614d0f16e7921a91)
         {
            return;
         }
         if(this._0bd36a0a7d5de68b82505f22)
         {
            this._0bd36a0a7d5de68b82505f22 = _playerChar._c499c42f6332219f0ae96de9() || _playerChar.isFreezed;
            this._745c114d13acd9debaa890c3 = true;
            return;
         }
         if(this._745c114d13acd9debaa890c3)
         {
            _loc1_ = _playerChar.position.y > PRIVATE_HOUSE_GARDEN_HEIGHT;
            _loc2_ = _playerChar.position.y < PRIVATE_HOUSE_GARDEN_HEIGHT - (0x395A42C5 ^ 0x0A647F35 ^ 0x01820D59 ^ 0x32BC30BD);
            this._745c114d13acd9debaa890c3 = !_loc1_ && !_loc2_;
            return;
         }
         if(this.isEnterAnyDoor && this._64ae906c40425db51679588c != _2713ec585daceb8ad62e2797.EPP_GARDEN)
         {
            switch(this._64ae906c40425db51679588c)
            {
               case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
                  §§push(0x15844A78 ^ -1358355548 ^ -1515474107 ^ 0x1F26DA99);
                  break;
               case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
                  §§push(0x60945653 ^ -109238355 ^ -1040772625 ^ 0x581E6010);
                  break;
               case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
                  §§push(0x4B63A51F ^ 0x6916CFC5 ^ -1942693053 ^ -1371426405);
                  break;
               default:
                  §§push(-2020407836 ^ 0x2A18BB27 ^ 0x3C8013F9 ^ -1861505735);
            }
            switch(§§pop())
            {
               case 0:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = _2713ec585daceb8ad62e2797.EPP_GARDEN;
                  }
                  else
                  {
                     this.playerPositionCurrent = _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR;
                  }
                  break;
               case 1:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR;
                  }
                  else
                  {
                     this.playerPositionCurrent = _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR;
                  }
                  break;
               case 2:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR;
                  }
            }
         }
         else if(!this.isEnterAnyDoor)
         {
            var _loc3_:String = this._64ae906c40425db51679588c;
            switch(_2713ec585daceb8ad62e2797.EPP_GARDEN === _loc3_ ? 0x2C9281D8 ^ 0x1B0355AE ^ -1738855394 ^ -1345652632 : -1449886096 ^ -1321654806 ^ 0x776B3482 ^ 0x6FC66F19)
            {
               case 0:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR;
                  }
            }
         }
      }
      
      protected function _e5c85f8c2d76f36b5987dbef(param1:Function) : void
      {
         this._835a340797e31f049aca2449.visible = true;
         TweenCube.to(this._835a340797e31f049aca2449,_231f3c1ddd91e28d2e4fa072,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဢზဏၓ႗။ၧၮိბ၄ნ჈ႝღၘၰႈ","ဘაႿფြဘჾ၇ჷ႕အဵႳႳ჆ၖ")):-1685390687 ^ 0x58483122 ^ -819890832 ^ 0x0CE3BEF2},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႊဲჍညႮၻჹဋႪძၛၯ჈ႄ၇ဉჯფ჈ႄၭၯၲၦစლ။ဏ","ဲფჺႾၷიဉႢ჎ზၨလၬၤ၂႖")):param1});
      }
      
      override protected function inspectRectByLocationLayersSize(param1:Rectangle) : Rectangle
      {
         var _loc2_:Number = NaN;
         if(height >= PRIVATE_HOUSE_HEIGHT_WITH_WALL)
         {
            _loc2_ = PRIVATE_HOUSE_HEIGHT_WITH_WALL;
         }
         if(this._5677a59e963e4a2287fdf8fe.fullWidth <= scrollRect.width)
         {
            this._5677a59e963e4a2287fdf8fe.x = Math.round(scrollRect.width / (0x03809873 ^ -1453226984 ^ 0x6B109BC2 ^ -1041135701) - this._5677a59e963e4a2287fdf8fe.fullWidth / (0x62D98DA9 ^ -429633569 ^ -1091566676 ^ 0x3A4DC1D8));
            param1.x = 0x60788036 ^ -547351370 ^ 0x037F3858 ^ -1134056232;
            param1.width = this._5677a59e963e4a2287fdf8fe.fullWidth;
         }
         else
         {
            this._5677a59e963e4a2287fdf8fe.x = -776331140 ^ -580381993 ^ -919329973 ^ -974777888;
         }
         if(_loc2_ <= scrollRect.height)
         {
            this._5677a59e963e4a2287fdf8fe.y = Math.round(scrollRect.height / (-2025602453 ^ 0x067398E6 ^ -433248426 ^ 0x671D7DD9) - _loc2_ / (0x2E952995 ^ 0x6CC421EE ^ -1312176027 ^ -208093156));
            if(_playerChar != null && this._64ae906c40425db51679588c != _2713ec585daceb8ad62e2797.EPP_GARDEN && height >= PRIVATE_HOUSE_HEIGHT_WITH_WALL)
            {
               param1.y = PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
            }
            else if(_playerChar == null)
            {
               param1.y = PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
            }
            else
            {
               param1.y = -1068479180 ^ -258339925 ^ 0x11636B02 ^ 0x21A92D9D;
            }
            param1.height = _loc2_;
         }
         else if(_playerChar == null)
         {
            param1.y = this._5677a59e963e4a2287fdf8fe.fullHeight - height;
         }
         else
         {
            this._5677a59e963e4a2287fdf8fe.y = 0x08A8A152 ^ 0x05C5B176 ^ 0x7840FA2B ^ 0x752DEA0F;
         }
         return param1;
      }
      
      override public function moveCameraToChar(param1:Number) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0x2F5FE1A8 ^ -997959517 ^ -622801308 ^ 0x313B776F;
         var _loc4_:int = 0x73828B7E ^ -1220155841 ^ -710783988 ^ 0x1165214D;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Rectangle = null;
         if(this._57d48a815837b6af4ab8a07d || this._4b0dc3c5614d0f16e7921a91)
         {
            return;
         }
         if(this._5677a59e963e4a2287fdf8fe != null)
         {
            _loc2_ = this._5677a59e963e4a2287fdf8fe.scrollRect;
         }
         if(_playerChar != null && _loc2_ != null)
         {
            _loc3_ = scrollRect.width / (0x35D6B9AA ^ 0x26E8D345 ^ 0x7E914F62 ^ 0x6DAF258F);
            _loc4_ = scrollRect.height / (0x12626754 ^ -504018034 ^ -881549300 ^ 0x38E38CD4);
            _loc5_ = 0x54DAD9DB ^ 0x78533316 ^ -424897208 ^ -903512187;
            if(_playerChar.position.x > _loc3_ && _playerChar.position.x < this._5677a59e963e4a2287fdf8fe.fullWidth - _loc3_)
            {
               _loc5_ = _playerChar.position.x - (_loc2_.x + scrollRect.width / (-1903343045 ^ -332445666 ^ -99096221 ^ -1732908220));
            }
            else if(_loc2_.x > (0x64A08B99 ^ 0x343079BD ^ -1816713266 ^ -1020799510) && _loc2_.x + _loc2_.width < this._5677a59e963e4a2287fdf8fe.fullWidth)
            {
               _loc5_ = _playerChar.position.x - (_loc2_.x + scrollRect.width / (0x526AE07E ^ 0x05D3B4DD ^ -595198524 ^ -1958958747));
            }
            _loc6_ = 0x3F3CAE86 ^ 0x44816650 ^ -747267301 ^ -1463266355;
            _loc7_ = _playerChar.position.y;
            _loc8_ = _gui.mainMenu.height;
            if(_loc2_.y >= (-1620460598 ^ 0x6C333695 ^ -521782666 ^ 0x13BCB729) && _loc2_.y + _loc2_.height <= this._5677a59e963e4a2287fdf8fe.fullHeight + _loc8_)
            {
               if(this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN && _loc7_ <= PRIVATE_HOUSE_GARDEN_HEIGHT)
               {
                  _loc6_ = _loc7_ - (_loc2_.y + _loc4_);
               }
               else if(this._64ae906c40425db51679588c != _2713ec585daceb8ad62e2797.EPP_GARDEN && _loc7_ > PRIVATE_HOUSE_GARDEN_HEIGHT - PRIVATE_HOUSE_WALL_HEIGHT)
               {
                  _loc6_ = _loc7_ - (_loc2_.y + _loc4_);
               }
            }
            _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წვူႮုჭဴဍႯဖႺၭ","ၵრ၇ၔვဿႊႉၫდဖოႱ၇Ⴉံ"),_loc6_);
            if(_loc5_ * _loc5_ + _loc6_ * _loc6_ > (0x6C80A53E ^ -1919154741 ^ 0x523AAF10 ^ -1289351663) * (-271054904 ^ -1678286337 ^ -223917082 ^ -2037896155))
            {
               if(_playerChar != null && _loc2_ != null)
               {
                  _loc2_.x = limit(_playerChar.graphic.x - scrollRect.width / (-962892464 ^ -595942920 ^ -458987990 ^ -28988800),0x56F7B17F ^ 0x7E105808 ^ 0x5DE235E3 ^ 0x7505DC94,this._5677a59e963e4a2287fdf8fe.fullWidth - scrollRect.width);
                  _loc2_.y = limit(_playerChar.graphic.y - scrollRect.height / (-835456615 ^ -861631137 ^ -113143842 ^ -69799142),-1746919671 ^ -1084349636 ^ 0x0866F5BD ^ 0x20D8C988,this._5677a59e963e4a2287fdf8fe.fullHeight + _gui.mainMenu.height - scrollRect.height);
                  _loc2_.width = scrollRect.width;
                  _loc2_.height = scrollRect.height;
               }
            }
            else
            {
               _loc5_ = int(_loc5_ * (_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴇဟ႟რဦဧၛၢ့ဵსဴႶაၵ၃ၛ႘Ⴜწ჌ၤၔႺ","ၴႧဝჃဳွူု႓ဢ၂Ⴡ჋ႂႴႸ") * param1));
               _loc6_ = int(_loc6_ * (_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挣捗揘掿捷揷挧捎掁捎掃接掚挋揣挭提挨揀揱捃挋掔掵","換挫揞揚挌捦掁挘插揽挪掚揹掁揗揝") * param1));
               if(_loc5_ != (-536221914 ^ -1619496359 ^ -550471209 ^ -1606292312) || _loc6_ != (-1044008741 ^ 0x7D1F6A44 ^ 0x41DC5ED1 ^ -49904562))
               {
                  _loc2_.x += _loc5_;
                  _loc2_.y += _loc6_;
                  _loc2_.x = limit(_loc2_.x,-109412848 ^ -1453290375 ^ -1604811944 ^ -264081103,this._5677a59e963e4a2287fdf8fe.fullWidth - scrollRect.width);
                  if(this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN)
                  {
                     _loc2_.y = limit(_loc2_.y,0x0222C535 ^ 0x5F10B09F ^ -1748866300 ^ -890233170,PRIVATE_HOUSE_GARDEN_HEIGHT + _gui.mainMenu.height - scrollRect.height);
                  }
                  else
                  {
                     _loc2_.y = limit(_loc2_.y,PRIVATE_HOUSE_GARDEN_HEIGHT - PRIVATE_HOUSE_WALL_HEIGHT,this._5677a59e963e4a2287fdf8fe.fullHeight + _gui.mainMenu.height - scrollRect.height);
                  }
                  _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
                  this._5677a59e963e4a2287fdf8fe.scrollRect = _loc2_;
                  _08c120b706560fce9302bcab.mapOffset.x = _loc2_.x;
                  _08c120b706560fce9302bcab.mapOffset.y = _loc2_.y;
               }
            }
            _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
            this._5677a59e963e4a2287fdf8fe.scrollRect = _loc2_;
            _08c120b706560fce9302bcab.mapOffset.x = _loc2_.x;
            _08c120b706560fce9302bcab.mapOffset.y = _loc2_.y;
         }
         if(this._5677a59e963e4a2287fdf8fe != null && this._5677a59e963e4a2287fdf8fe.scrollRect != null)
         {
            _loc9_ = this._5677a59e963e4a2287fdf8fe.scrollRect;
            _08c120b706560fce9302bcab.mapOffset.x = _loc9_.x;
            _08c120b706560fce9302bcab.mapOffset.y = _loc9_.y;
         }
         _tutorialHelpers.helperMask.updateMask();
      }
      
      override protected function _ac21ca7c692b5eefc26980e8() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         for each(_loc1_ in _charList)
         {
            if(!(_loc1_ is _ba120ae720a391732e866217 && (_loc1_ as _ba120ae720a391732e866217).npcName == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揳挌挔揟揄掆揨挾揀捤掯挃捕捽掦揦挚揶揌掀揄挷揿掘掶掠捆捭揘掫","揧捓掹捚揺揭揰揹挔掏掞捿挩掺挕挤") && this.isOwnHouse))
            {
               _2c3f217f52bd240efa532b5d(_loc1_);
            }
         }
      }
      
      override protected function _0b905154637e928500b2f706(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var response:_5e1bab759fcaea6d1f84faa7 = param1;
         var resp:UpdateResp = null;
         try
         {
            resp = response as UpdateResp;
            if(resp.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("利勇勵勖刏劊則剔劉创刵剾勂剪剧力務勻刂労勳勎剕勬劬勥劜剂労劻劣刪创募勛刪劔利力刵","刹刪勜励剢勻勦刡剫刼勍勿剃刪勤勀")))
            {
               this._5677a59e963e4a2287fdf8fe.viewMoneyTree.level = resp.getIntData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揷揵掷挢捧握挢揀捀捕挵换捇掕掔揍掞捘捄揣挒挘挠揽捫挤掓挐揝揅挋挀捽捑捼挋捎揳挲揗","挳揱挪揯揾揝揹捉捨捤挴揙捜捷捚掴"));
            }
            this._f31eef11fcc5892230a8c522._d9ed651d0ce75eca3b6b49e9(this._0d21d58c127f896d14ce504b._d37c5041e20b55b245fc8af7());
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掊揀捅捂捛挑揭捳掊掁挓揺掵挖挓掟描掃捈推挈提挧換挀換揊揖掤捄捖揘捈挰挝揱挊揯揺挙按挔捠揀捑捴揉捊捭掟捄掜捤捵捘掌捰掏掬挶挎掀掯揓揫掹挦掙捀挎揣挂挕掤換捑挜掆揋提揑揵捪挔掮揓捳揮掩揖挍捤控挧挰掾揥捙捎捁挸挞掌掑揱揧捋挪揊掐捐揢","掗揶捯振挼捏挘捫揤掾掆掂掍掭挅揭"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴐၷယ႘ဋ႑ုသႚცလ့Ⴧ၀ၥ၎ႁდၰႜႦႨ႙ႹႫ၃Ⴙწ","Ⴥီ်မၿယწღၞ၍Ⴜဥျဲ႘ၞ"));
         }
      }
      
      public function _c047644bcf874f1a67d20ce2() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = null;
         this._613eb83c28344259810a6cc4();
         this._8c89fd5cdb37dfb1bd5c8204();
         this._22c67d4f119cc423816421ee();
         this._d215bb120883f9e87704de1b = true;
         this._eb84ff67766704b2cbbaf019 = false;
         _gui.mainMenu.tournamentIcon.disable();
         for each(_loc1_ in this._537b1d49707fc334ecca1d5c)
         {
            this._0d63b9c68914abac77f5fe5c(_loc1_);
         }
         this._537b1d49707fc334ecca1d5c = new Vector.<_810c4ade948afb64e9c7ee25>();
         _660799e0f434d28e99321254();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._5677a59e963e4a2287fdf8fe,MouseEvent.CLICK,this.onClick);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._5677a59e963e4a2287fdf8fe,MouseEvent.MOUSE_MOVE,_2f7021a59bd95754b393a0be);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._5677a59e963e4a2287fdf8fe,MouseEvent.DOUBLE_CLICK,_40cfc46185c9c16faa96dbce);
         _95223275024345738660ad36();
         if(this.locationModel.id == _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE.id)
         {
            GameSwf.instance.managerTutorial._86a74eb7e4a5c697cea6f526(_3810c68698c1b61dede7885f.ETT_DECORATION);
         }
         if(this._34a1175a3c21c1bbfdf4add3._67bcf66f1f44b32e336d33f1(_3810c68698c1b61dede7885f.ETT_DECORATION).isComplete || !this.isOwnHouse)
         {
            _programmedCharMoveTarget = _e60c507d646ca6029b24869f;
            if(_playerChar != null)
            {
               _playerChar.programmedMove = true;
               _playerChar.onMouseClick(_programmedCharMoveTarget.x,_programmedCharMoveTarget.y);
            }
         }
         if(Debug.AUTO_SELECT_BACKYARD)
         {
         }
      }
      
      override protected function create() : void
      {
         var _loc1_:String = null;
         this._ac21ca7c692b5eefc26980e8();
         if(_scrollRect != null)
         {
            _scrollRect = this.inspectRectByLocationLayersSize(_scrollRect);
            this._5677a59e963e4a2287fdf8fe.scrollRect = _scrollRect;
         }
         TweenCube.to(_gui,0x3E521D9D ^ -927312370 ^ 0x132FD8E0 ^ -439905422,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჽႊ႘ႻႮႽဨჃუၷီဗ၇჈င။იჟ","Ⴄႉဤၮფဃဎფხუြျ၏Ⴈဃွ")):0x2C3F0471 ^ 0x34E5ED6E ^ 0x520B278E ^ 0x4AD1CE90});
         _scrollRect = null;
         if(_waitForViewLoadUsernames != null && _waitForViewLoadUsernames.length > (0x37769B35 ^ 0x1373EB01 ^ 0x42831977 ^ 0x66866943))
         {
            for each(_loc1_ in _waitForViewLoadUsernames)
            {
               GameSwf.charsManager._87e1e0ccde8111cbbc2c65af(_loc1_,updateCharView,_loc1_);
            }
            _waitForViewLoadUsernames = [];
         }
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,locationModel,_4986c362bed569a2ffb299b4.ENTER_TO_LOCATION,_2a0f34975fb1d4e797ed0b1a);
         if(this._5677a59e963e4a2287fdf8fe)
         {
            _3b294245f08760a0082cd317();
         }
         _playerMakeAnyMove = true;
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_001_AMB_Laketown);
         locationModel._80557ec7c85c6def233bada4();
      }
      
      override public function _cbd9890092484ccef108425b() : void
      {
      }
      
      public function _5a0c488ad8daf63849d99757() : void
      {
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this._88d798a197eeb0f6a895aa24);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this._b6f910bb6f9336c21a0e89c3);
         stage.addEventListener(MouseEvent.MOUSE_UP,this._5f23a09db6ed138a95fa1ad7);
      }
      
      public function _3e9e33e3b84308df062d9743() : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this._88d798a197eeb0f6a895aa24);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._b6f910bb6f9336c21a0e89c3);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this._5f23a09db6ed138a95fa1ad7);
      }
      
      private function _32c8b99662eae5b4b945b1a4(param1:Boolean) : void
      {
         var _loc2_:int = 0x57F6507C ^ 0x28844319 ^ -1010852021 ^ -96956653;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1008956480 ^ -108230583 ^ -1521671205 ^ -639098003))
            {
               case 0:
                  _gui._3a6a9660456e7623c0f998d0(param1);
                  return;
               case 1:
                  return;
               case 2:
                  if(!this.isOwnHouse)
                  {
                     _loc2_ = 0x71F3D3FA ^ 0x6C282CB0 ^ 0x3297F7D0 ^ 0x69B90BA4;
                  }
                  else
                  {
                     _loc2_ = 0x1419DDC5 ^ 0x27EFDD47 ^ 0x5B5C6B4E ^ 0x2E5F68F3;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _92d6baab4102395a7951d68b(param1:_08c120b706560fce9302bcab, param2:String) : void
      {
         if(param1 is _ba120ae720a391732e866217 && (param1 as _ba120ae720a391732e866217).npcName == _e42949745420bb5a55035b31.ENN_REX)
         {
            if(!this.isOwnHouse)
            {
               return;
            }
         }
         super._92d6baab4102395a7951d68b(param1,param2);
         if(this._57d48a815837b6af4ab8a07d)
         {
            param1.visible = false;
         }
      }
      
      public function _961bb8a95560edd96762e6bf() : void
      {
         this._0d21d58c127f896d14ce504b.breederRexNPC._ff8800a8e4fa5f743ba4f0f7();
      }
      
      public function _613eb83c28344259810a6cc4() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:_4aa243954966c493c452eb64 = null;
         var _loc4_:Array = null;
         if(!this.isOwnHouse)
         {
            return;
         }
         if(this._5677a59e963e4a2287fdf8fe == null || this._5677a59e963e4a2287fdf8fe.viewMoneyTree == null)
         {
            this._7a25304e902b528db0432672 = setTimeout(this._613eb83c28344259810a6cc4,0x4A88C558 ^ -466964688 ^ 0x26148900 ^ -2001280356);
            return;
         }
         var _loc5_:_ed07e6b604e8c0a96f258168 = GameSwf.instance.managerMoneyTree;
         var _loc6_:Array = _loc5_.fishcoinsPositions;
         for each(_loc1_ in _loc6_)
         {
            _loc2_ = new Point(_loc1_.x,_loc1_.y);
            _loc2_.x += this._5677a59e963e4a2287fdf8fe.viewMoneyTree.source.x;
            _loc2_.y += this._5677a59e963e4a2287fdf8fe.viewMoneyTree.source.y;
            _loc3_ = new _4aa243954966c493c452eb64(_67282af25befe9778e5c8dd1.FISHCOINS.id,0x7FB90408 ^ -888961445 ^ 0x286CB531 ^ -1663682718,_loc2_,_loc1_);
            _locationItems.addItem(_loc3_);
         }
         _loc4_ = _loc5_.fishbucksPositions;
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = new Point(_loc1_.x,_loc1_.y);
            _loc2_.x += this._5677a59e963e4a2287fdf8fe.viewMoneyTree.source.x;
            _loc2_.y += this._5677a59e963e4a2287fdf8fe.viewMoneyTree.source.y;
            _loc3_ = new _4aa243954966c493c452eb64(_67282af25befe9778e5c8dd1.FISHBUCKS.id,0x03C5B8EE ^ -384492148 ^ 0x7BB240D8 ^ -1855789638,_loc2_,_loc1_);
            _locationItems.addItem(_loc3_);
         }
         this._c2f3fcaf5c798d638a949703();
      }
      
      private function _a12a1e6cadedf3acd77e6ac1() : void
      {
         if(this._5677a59e963e4a2287fdf8fe == null || _playerChar == null)
         {
            return;
         }
         _locationItems._1aa92192e9ddb1aa40cc5563(_playerChar.graphic.x,_playerChar.graphic.y,0x2D7B1D4B ^ -315444345 ^ 0x0E7CA73C ^ -835384840);
      }
      
      public function _6f2c5ad50cdf46d9f856c5f3(param1:int, param2:int) : void
      {
         var _loc3_:int = -205526294 ^ -1431718220 ^ 0x2475411D ^ -1681761036;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1419171423 ^ -1699156218 ^ 0x32055F6F ^ -445261697))
            {
               case 0:
                  if(!this.isOwnHouse)
                  {
                     _loc3_ = 0x49BFF3BB ^ -1530290090 ^ 0x2BE748AE ^ 0x20305AF6;
                  }
                  else
                  {
                     _loc3_ = 0x45480EDF ^ 0x7DA8A5B6 ^ 0x56B2F5BB ^ -1997332636;
                  }
                  break;
               case 1:
                  this._controllerInterior._6f2c5ad50cdf46d9f856c5f3(param1,param2);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ad9519c29236cd31c462b4b9(param1:int, param2:int) : void
      {
         var _loc3_:_d1ac35bdca78006e84f51a32 = new _d1ac35bdca78006e84f51a32(null);
         _loc3_.id = param1;
         _loc3_.decoId = param2;
         _loc3_.infoId = param2;
         _loc3_.type = _67282af25befe9778e5c8dd1.DECORATION.id;
         _loc3_.quantity = -1560903949 ^ 0x22DCE794 ^ -1532292532 ^ 0x24818B2A;
         _loc3_.worth = 0x5A9B3892 ^ -1911187989 ^ 0x6726C82B ^ -1280809646;
         this._f235d82216f3fe7273764603.decoration.push(_loc3_);
      }
      
      public function _95483d0b726b08333bf33628(param1:int) : void
      {
         var _loc2_:_d1ac35bdca78006e84f51a32 = this._f235d82216f3fe7273764603._f994fb3e7bb1cf109d5d4fb8(param1,_67282af25befe9778e5c8dd1.DECORATION.id) as _d1ac35bdca78006e84f51a32;
         this._f235d82216f3fe7273764603._e2f68d744b0ec311d822fe2e(_loc2_);
      }
      
      override protected function _0d63b9c68914abac77f5fe5c(param1:_810c4ade948afb64e9c7ee25) : void
      {
         var _loc2_:int = 0x2E5A1FE0 ^ -1981330799 ^ -1640030802 ^ -74315199;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x089C53A6 ^ -266570534 ^ -1923439497 ^ -1211448937))
            {
               case 0:
                  super._0d63b9c68914abac77f5fe5c(param1);
                  return;
               case 1:
                  this._537b1d49707fc334ecca1d5c.push(param1);
                  return;
               case 2:
                  if(!this._d215bb120883f9e87704de1b)
                  {
                     _loc2_ = 0x54140BD1 ^ 0x1ECDB350 ^ -395445792 ^ 0x60A403FC;
                  }
                  else
                  {
                     _loc2_ = -1361465514 ^ -642229572 ^ 0x7FF53010 ^ -897284250;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _8baab790e59e91e8d64bc4d2(param1:int) : void
      {
         var _loc2_:int = 0x42A7EBE7 ^ 0x32D73296 ^ -550963781 ^ 0x04A88524;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-805617910 ^ -408068899 ^ 0x2506AEB3 ^ -1499437944))
            {
               case 0:
                  GameSwf.instance._e4c0a8256604a3984faf9862(_24fc30cfc3c855ea21a231e8.LOCATION_2_RIO.id);
                  _loc2_ = 0x7D1BAE21 ^ -256738997 ^ -1994821902 ^ -1354755977;
                  break;
               case 1:
                  super._8baab790e59e91e8d64bc4d2(param1);
                  _loc2_ = -1545703339 ^ -1426197839 ^ 0x4D411F51 ^ -275631014;
                  break;
               case 2:
                  if(param1 == (0x0ABD0D2F ^ -1637275121 ^ -1988428242 ^ 0x1DAED822))
                  {
                     _loc2_ = -1121863178 ^ -1686985987 ^ -1500132023 ^ 0x2B367FAE;
                  }
                  else
                  {
                     _loc2_ = -1971768663 ^ -1580898053 ^ -1418232060 ^ 0x2B3B8CBB;
                  }
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8492141b7fc9b9a2038d0e44() : void
      {
         this._4b0dc3c5614d0f16e7921a91 = false;
         this.moveCameraToChar(0x79853B3D ^ -982544594 ^ -1695285450 ^ 0x26194B24);
         this._4b0dc3c5614d0f16e7921a91 = true;
      }
      
      private function _c2f3fcaf5c798d638a949703() : void
      {
         var _loc1_:_b4e9a07262330690b635623c = null;
         var _loc2_:Array = null;
         if(!this.isOwnHouse)
         {
            return;
         }
         var _loc3_:Array = _locationItems._868c102f90bae516e4788ba1(_67282af25befe9778e5c8dd1.FISHCOINS.id);
         for each(_loc1_ in _loc3_)
         {
            _loc1_.view.source.visible = this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN;
         }
         _loc2_ = _locationItems._868c102f90bae516e4788ba1(_67282af25befe9778e5c8dd1.FISHBUCKS.id);
         for each(_loc1_ in _loc2_)
         {
            _loc1_.view.source.visible = this._64ae906c40425db51679588c == _2713ec585daceb8ad62e2797.EPP_GARDEN;
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_INTERIOR_GET_DATA:
               §§push(-649096327 ^ 0x70AB001B ^ 0x02E4461E ^ -1426008708);
               break;
            case _6b63fd0a4028eb279b227831.ECU_INTERIOR_UPDATE:
               §§push(0x2D517B41 ^ -251713819 ^ -2060435995 ^ 0x589E6040);
               break;
            case _6b63fd0a4028eb279b227831.ECU_LOCATION_USER_CHANGE_POSITION:
               §§push(-325268302 ^ 0x66D2656C ^ 0x7E7D3EAD ^ -197945487);
               break;
            default:
               §§push(-1887754747 ^ -1166901673 ^ 0x3794A353 ^ 0x029DFB02);
         }
         switch(§§pop())
         {
            case 0:
               this._5e952acaba820e0cc6990e8b();
               break;
            case 1:
               this._fb49b418a5e92a0306b107b8();
               this._debeb0e5fad676445283f257();
               break;
            case 2:
               this._78750676c5fbe6f73e04bc13();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}


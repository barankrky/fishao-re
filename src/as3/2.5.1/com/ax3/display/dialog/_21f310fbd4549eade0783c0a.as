package com.ax3.display.dialog
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._420ce372288abcd3f4c3e522;
   import com.ax3.fishao.view.wrappers.impl._e63cfaa74949a39494ed2b0b;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.sr.WorldMapDataResp;
   
   public class _21f310fbd4549eade0783c0a extends _420ce372288abcd3f4c3e522
   {
      
      private static var _e727d4d04499805c702aedc1:int = -205867545 ^ 0x7C56331F ^ 0x1D52A9B4 ^ -1833029812;
      
      private var _912d58d459441630a0a63634:uint;
      
      protected var _locationById:Object = {};
      
      private var _e6665b5d6d1e759338366e78:Array;
      
      private var _7c38245f02574ad05ff307fb:_f11f4587bdf083a8dd45aa84 = new _f11f4587bdf083a8dd45aa84(_141a5f7d84a4cfae1680515b.TYPE_SIMPLE);
      
      private var _dab54ee0623d41337f809929:Boolean = false;
      
      protected var _isAssetsComplete:Boolean = false;
      
      protected var _isDataComplete:Boolean = false;
      
      private var _93392cc967e7d04352bf74eb:_5e1bab759fcaea6d1f84faa7;
      
      private var _3f74438ff6eb474cdc928537:int = -1;
      
      public function _21f310fbd4549eade0783c0a()
      {
         super();
         tabChildren = false;
         this._3f74438ff6eb474cdc928537 = _e727d4d04499805c702aedc1++;
      }
      
      public function get isAssetsComplete() : Boolean
      {
         return this._isAssetsComplete;
      }
      
      public function get isDataComplete() : Boolean
      {
         return this._isDataComplete;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:int = 0x1466A30A ^ 0x3EF94E84 ^ 0x03579FDB ^ -308466784;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-135180145 ^ -1766550360 ^ 0x51A91D47 ^ -189169507))
            {
               case 0:
                  _filters.lockedFilters = this._46c2c03fe43fac6374d63f73(lockedFilters);
                  if(lockedFilters.parent != null)
                  {
                     _loc1_ = 0x3A716D87 ^ -590152729 ^ 0x518E2814 ^ 0x7378E784;
                  }
                  else
                  {
                     _loc1_ = 0x7F347A37 ^ 0x0B0DB3CE ^ 0x576F75BB ^ -419174984;
                  }
                  break;
               case 1:
                  unlockedOverFilters.parent.removeChild(unlockedOverFilters);
                  _loc1_ = -1301607480 ^ -1933336582 ^ -1632246169 ^ 0x64482BAD;
                  break;
               case 2:
                  _filters.lockedOverFilters = this._46c2c03fe43fac6374d63f73(lockedOverFilters);
                  if(lockedOverFilters.parent != null)
                  {
                     _loc1_ = -1065410331 ^ 0x434D4207 ^ -1879869470 ^ -929805058;
                  }
                  else
                  {
                     _loc1_ = -1935952041 ^ 0x63763BF4 ^ -1260927735 ^ -1620111268;
                  }
                  break;
               case 3:
                  lockedOverFilters.parent.removeChild(lockedOverFilters);
                  _loc1_ = 0x2607B64C ^ -1948586516 ^ 0x4091B402 ^ 0x2919B654;
                  break;
               case 4:
                  _filters.unlockedFilters = this._46c2c03fe43fac6374d63f73(unlockedFilters);
                  if(unlockedFilters.parent != null)
                  {
                     _loc1_ = 0x62BBAC92 ^ -9214133 ^ -1486514570 ^ -17300388;
                  }
                  else
                  {
                     _loc1_ = 0x2906E055 ^ -1833241105 ^ -1534000721 ^ -612872729;
                  }
                  break;
               case 5:
                  rainforest.init(_24fc30cfc3c855ea21a231e8.LOCATION_2_RIO,this._d65391439aa79cda1f72fbae,_filters);
                  tropicalBeach.init(_24fc30cfc3c855ea21a231e8.LOCATION_3_PINHEIRA_BEACH,this._d65391439aa79cda1f72fbae,_filters);
                  grass.init(_24fc30cfc3c855ea21a231e8.LOCATION_1_LAKETOWN,this._d65391439aa79cda1f72fbae,_filters);
                  port.init(_24fc30cfc3c855ea21a231e8.LOCATION_8_SEAGULL_HARBOR,this._d65391439aa79cda1f72fbae,_filters);
                  nordic.init(_24fc30cfc3c855ea21a231e8.LOCATION_4_COOL_MOUNTAIN,this._d65391439aa79cda1f72fbae,_filters);
                  pole.init(_24fc30cfc3c855ea21a231e8.LOCATION_6_SIBIRI_CITY,this._d65391439aa79cda1f72fbae,_filters);
                  desert.init(_24fc30cfc3c855ea21a231e8.LOCATION_5_MYSTIC_DESERT,this._d65391439aa79cda1f72fbae,_filters);
                  africa.init(_24fc30cfc3c855ea21a231e8.LOCATION_9_THOMBANI_TOWN,this._d65391439aa79cda1f72fbae,_filters);
                  asia.init(_24fc30cfc3c855ea21a231e8.LOCATION_7_AQUAYAMA,this._d65391439aa79cda1f72fbae,_filters);
                  marsh.init(_24fc30cfc3c855ea21a231e8.LOCATION_10_MARSHVILLE,this._d65391439aa79cda1f72fbae,_filters);
                  palmIsland.init(_24fc30cfc3c855ea21a231e8.LOCATION_11_PALM_ISLAND,this._d65391439aa79cda1f72fbae,_filters);
                  luckyRaft.init(_24fc30cfc3c855ea21a231e8.LOCATION_12_LUCKY_RAFT,this._d65391439aa79cda1f72fbae,_filters);
                  this._e6665b5d6d1e759338366e78 = [];
                  this._locationById[grass.locationId] = grass;
                  this._e6665b5d6d1e759338366e78.push(grass);
                  this._locationById[rainforest.locationId] = rainforest;
                  this._e6665b5d6d1e759338366e78.push(rainforest);
                  this._locationById[tropicalBeach.locationId] = tropicalBeach;
                  this._e6665b5d6d1e759338366e78.push(tropicalBeach);
                  this._locationById[nordic.locationId] = nordic;
                  this._e6665b5d6d1e759338366e78.push(nordic);
                  this._locationById[desert.locationId] = desert;
                  this._e6665b5d6d1e759338366e78.push(desert);
                  this._locationById[pole.locationId] = pole;
                  this._e6665b5d6d1e759338366e78.push(pole);
                  this._locationById[asia.locationId] = asia;
                  this._e6665b5d6d1e759338366e78.push(asia);
                  this._locationById[port.locationId] = port;
                  this._e6665b5d6d1e759338366e78.push(port);
                  this._locationById[africa.locationId] = africa;
                  this._e6665b5d6d1e759338366e78.push(africa);
                  this._locationById[marsh.locationId] = marsh;
                  this._e6665b5d6d1e759338366e78.push(marsh);
                  this._locationById[palmIsland.locationId] = palmIsland;
                  this._e6665b5d6d1e759338366e78.push(palmIsland);
                  this._locationById[luckyRaft.locationId] = luckyRaft;
                  this._e6665b5d6d1e759338366e78.push(luckyRaft);
                  this._isAssetsComplete = true;
                  if(this._isDataComplete)
                  {
                     _loc1_ = -1501293052 ^ -930892361 ^ 0x41FD1F02 ^ -340794038;
                  }
                  else
                  {
                     _loc1_ = -1801283515 ^ -922328619 ^ -1399083617 ^ 0x356A0DFE;
                  }
                  break;
               case 6:
                  this._607377c21c536ba8e2f92d86(this._93392cc967e7d04352bf74eb);
                  _loc1_ = -75791532 ^ -929955615 ^ 0x2F0C5B44 ^ -659521280;
                  break;
               case 7:
                  if(unlockedFilters != null)
                  {
                     _loc1_ = -552050012 ^ -1480769611 ^ 0x626B28B5 ^ -560255907;
                  }
                  else
                  {
                     _loc1_ = -1331793000 ^ -1091745599 ^ 0x5DDAF4FC ^ -1745054121;
                  }
                  break;
               case 8:
                  super._935ac2966ddad68dfc449202();
                  if(lockedFilters != null)
                  {
                     _loc1_ = -621952807 ^ 0x6EF50A3F ^ -542079886 ^ -1342367895;
                  }
                  else
                  {
                     _loc1_ = -1450753373 ^ -668668489 ^ -1449639512 ^ 0x1C6EB746;
                  }
                  break;
               case 9:
                  _filters.unlockedOverFilters = this._46c2c03fe43fac6374d63f73(unlockedOverFilters);
                  if(unlockedOverFilters.parent != null)
                  {
                     _loc1_ = 0x4BDB1D12 ^ 0x450648FE ^ 0x741CD3F6 ^ -1097539610;
                  }
                  else
                  {
                     _loc1_ = -1725069522 ^ 0x542047C2 ^ 0x3E7CCCE9 ^ 0x372455FD;
                  }
                  break;
               case 10:
                  return;
               case 11:
                  if(unlockedOverFilters != null)
                  {
                     _loc1_ = 0x41096D2E ^ -2103117863 ^ 0x1D5ACF23 ^ 0x1AA20C20;
                  }
                  else
                  {
                     _loc1_ = 0x4AD6D23C ^ -403310293 ^ -1956320266 ^ -502097639;
                  }
                  break;
               case 12:
                  if(Debug.AUTO_SELECT_LOCATION)
                  {
                     _loc1_ = -878795782 ^ -2030023607 ^ 0x59F3EB9A ^ -784835106;
                  }
                  else
                  {
                     _loc1_ = -963764277 ^ 0x5CB7B7C8 ^ 0x26FC4E3B ^ 0x7890BFCF;
                  }
                  break;
               case 13:
                  lockedFilters.parent.removeChild(lockedFilters);
                  _loc1_ = 0x590735B9 ^ 0x05D17AD0 ^ 0x6C95B80C ^ -199840097;
                  break;
               case 14:
                  unlockedFilters.parent.removeChild(unlockedFilters);
                  _loc1_ = -2103407253 ^ -1043545914 ^ -1281414862 ^ 0x34A63D6D;
                  break;
               case 15:
                  if(lockedOverFilters != null)
                  {
                     _loc1_ = -1039480949 ^ -58183045 ^ -1283968292 ^ 0x49AF9ED3;
                  }
                  else
                  {
                     _loc1_ = 0x1D8F138B ^ -375374055 ^ 0x6141B8A4 ^ 0x513BCDC0;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _ec9e8fded1f21e9a06d314c7() : void
      {
         _app.dialogManager.showAt(_0737efdbd5337ba3fbc64b2e.GAME_FIELD_LAYER,this);
      }
      
      protected function _d65391439aa79cda1f72fbae(param1:MouseEvent) : void
      {
         Cc.log(this.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳刄分刳劄勶剷刡割勞别刁势刳剪创剱勾刪剤删勅効勥劳剂勼勣剳剋勏力勍勗别勻剂初勒刯刺劅勎助勻剤","剼勻勇劙劙剩刽助刈刟剴勰利刾刦剋"));
         if(!this._isAssetsComplete && !this._isDataComplete)
         {
            return;
         }
         this._207528d4fc40762666b055eb();
         this._515f5e7e0c304cc8e6b2647c();
         _3a8a2602dcf9bf49b62e62af._8b33debefada217571cd2f44();
         var _loc2_:_e63cfaa74949a39494ed2b0b = _e63cfaa74949a39494ed2b0b(param1.currentTarget);
         this._1b15d856c9f2c400caff681a(_loc2_.locationId);
         this.deactivate();
      }
      
      private function _207528d4fc40762666b055eb() : void
      {
         var _loc1_:_e63cfaa74949a39494ed2b0b = null;
         for each(_loc1_ in this._e6665b5d6d1e759338366e78)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
         }
      }
      
      public function _9783e5fda61af136a4bdf178(param1:int) : void
      {
         if(!this._isAssetsComplete && !this._isDataComplete)
         {
            return;
         }
         this._515f5e7e0c304cc8e6b2647c();
         _3a8a2602dcf9bf49b62e62af._8b33debefada217571cd2f44();
         this._1b15d856c9f2c400caff681a(param1);
         this.deactivate();
      }
      
      private function _1b15d856c9f2c400caff681a(param1:int) : void
      {
         Cc.log(this.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刻前刯剹制劙剎劽剾剅剿勼剏列到剑刢劰刧刊剪刔剔刼削删劫劳勻删勐刣刱募劉剔判募剠判","剛勝劃劙劳剖剭副剚剧剗刨勿剐刎剱") + param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勮刹劉劷刚劋勪劶劶勽","剾劼劲加初剩割勴刟劀刍剘劜剕剣劲"));
         GameSwf.instance.enterToLocation(param1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0x463EAD57 ^ 0x7D6487AF ^ -551608250 ^ 0x3420F9E5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-490429432 ^ -1131993173 ^ -1558451074 ^ 0x2D3D9C86))
            {
               case 0:
                  super.activate();
                  if(this._dab54ee0623d41337f809929)
                  {
                     _loc1_ = -1323290850 ^ 0x7C813798 ^ -537447858 ^ -1036789358;
                  }
                  else
                  {
                     _loc1_ = -1322118016 ^ 0x4250B57E ^ 0xA99D64 ^ 0x23AECFC3;
                  }
                  break;
               case 1:
                  this._dab54ee0623d41337f809929 = false;
                  this._6dd6b884c121a2ab0d61af74(_asset);
                  _loc1_ = 0x50AE7C22 ^ -1244861773 ^ 0x4E12992F ^ 0x7B15FCE7;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function deactivate() : void
      {
         var _loc1_:int = 0x5177DADD ^ -26948263 ^ -1097083977 ^ -872008109;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-958795247 ^ -1401724828 ^ 0x2468FE45 ^ -1823695277))
            {
               case 0:
                  this._50be90bf80db94da9dbad254(_asset);
                  _loc1_ = 0x70ACE363 ^ 0x0D7B2078 ^ -2025357011 ^ 0x271EB057;
                  break;
               case 1:
                  this._dab54ee0623d41337f809929 = true;
                  if(_asset != null)
                  {
                     _loc1_ = 0x4820DC72 ^ 0x1DAE57DC ^ 0x60F303D7 ^ -386696678;
                  }
                  else
                  {
                     _loc1_ = 0x29D6626D ^ 0x5AB3B27B ^ 0x1D52C76D ^ -1279662822;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  super.deactivate();
                  this._7b5429a372e9042281993e89();
                  if(this._dab54ee0623d41337f809929 == false)
                  {
                     _loc1_ = -2133223909 ^ 0x683A901A ^ 0x6E7C0E1C ^ 0x5B11FA7F;
                  }
                  else
                  {
                     _loc1_ = 0x1BBEBAA6 ^ 0x34C8D02E ^ 0x748D44B0 ^ -2039096231;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _7b5429a372e9042281993e89() : void
      {
         var _loc1_:String = null;
         var _loc2_:_e63cfaa74949a39494ed2b0b = null;
         for(_loc1_ in this._locationById)
         {
            _loc2_ = this._locationById[_loc1_];
            _loc2_.hide(-1767915062 ^ 0x1BC19C8B ^ 0x2A85CE3D ^ -1478782084);
         }
      }
      
      private function _50be90bf80db94da9dbad254(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:uint = uint(param1.numChildren);
         var _loc4_:int = -11387815 ^ -940823332 ^ 0x1CF23F4A ^ 0x244C2FCF;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(_loc2_ is MovieClip)
            {
               MovieClip(_loc2_).stop();
            }
            if(_loc2_ is DisplayObjectContainer)
            {
               this._50be90bf80db94da9dbad254(DisplayObjectContainer(_loc2_));
            }
            _loc4_++;
         }
      }
      
      private function _6dd6b884c121a2ab0d61af74(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:uint = uint(param1.numChildren);
         var _loc4_:int = -1024326904 ^ -696289206 ^ 0x59F0BE34 ^ 0x4D7DC576;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(_loc2_ is MovieClip)
            {
               MovieClip(_loc2_).play();
            }
            if(_loc2_ is DisplayObjectContainer)
            {
               this._6dd6b884c121a2ab0d61af74(DisplayObjectContainer(_loc2_));
            }
            _loc4_++;
         }
      }
      
      public function _607377c21c536ba8e2f92d86(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:WorldMapDataResp = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         this._isDataComplete = true;
         this._93392cc967e7d04352bf74eb = param1;
         if(!this._isAssetsComplete)
         {
            return;
         }
         if(param1 is WorldMapDataResp)
         {
            this._7c38245f02574ad05ff307fb.stop();
            _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._7c38245f02574ad05ff307fb);
            _loc2_ = WorldMapDataResp(param1);
            if(_loc2_.userLocations != null)
            {
               _loc3_ = JSON.parse(_loc2_.userLocations);
               for(_loc4_ in _loc3_)
               {
                  if(this._locationById.hasOwnProperty(_loc4_))
                  {
                     _e63cfaa74949a39494ed2b0b(this._locationById[_loc4_]).update(_loc3_[_loc4_]);
                  }
               }
            }
            if(parent != null)
            {
               this._912d58d459441630a0a63634 = setTimeout(this._25fe407c5c9cd046130063e8,0x26F00634 ^ -1318262418 ^ 0x53478A43 ^ -992263671);
            }
         }
      }
      
      public function _dd567f2dc6062b728de1617c() : void
      {
         var _loc1_:int = -132522325 ^ 0x6065E953 ^ -700657151 ^ 0x62898036;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x537DEB73 ^ -1520318358 ^ 0x2AF23854 ^ -265847168))
            {
               case 0:
                  _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(this._7c38245f02574ad05ff307fb);
                  _loc1_ = -941272063 ^ -183919510 ^ 0x482ACEC4 ^ 0x560F6363;
                  break;
               case 1:
                  _3a8a2602dcf9bf49b62e62af._928d8ef94957d397f6c2888a(_24fc30cfc3c855ea21a231e8.WORLD_MAP_999.id);
                  this._25fe407c5c9cd046130063e8();
                  return;
               case 2:
                  Cc.log(this.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုჅ჌ီဋဏဿၹ჌ၹၠည჋Ⴊႃထ႐ၼႤၵဩထဘဖვဃწႲျႢ႐ႦႬဥ့ၲჴၳၧ၌ၡჯ","ဂჿၺဉၝႚဠႺဴၭၫხဇဲံၿ"));
                  this._7c38245f02574ad05ff307fb.start();
                  if(GameSwf.currentLocationDialog == null)
                  {
                     _loc1_ = -1856898683 ^ 0x39D67902 ^ 0xBC7C06 ^ -2064475828;
                  }
                  else
                  {
                     _loc1_ = -1324275725 ^ -88593680 ^ 0x326D2037 ^ 0x550D48F8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _25fe407c5c9cd046130063e8() : void
      {
         Cc.log(this.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဆ႑ၮႎ჌ႦႆჂჩ႗ဤსႿၤ჉჋ခႂთၼဌၬၹႁဓჀჴႍဟၡၓဖ","ၗ၆ჺၸုჍံჱိီနၲႵၗႇႁ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勽勋刧勾勬勭勥刜刎剸勞剌勜剨劢别劒劓劍剻剎則力刦剺剈刂刘効勑劤剐刋勶刴勆勹力剏剑劽刱刱刨剼勼","努剺劊刺勈劙劙剮勨初剛劶刟剿劧剆"),this._912d58d459441630a0a63634);
         this._515f5e7e0c304cc8e6b2647c();
         _dfa25706e58a240c1e33e5c6.locationExtension._a5e396b6f65ca2cc7b6b3cec(this._607377c21c536ba8e2f92d86);
      }
      
      public function _515f5e7e0c304cc8e6b2647c() : void
      {
         Cc.log(this.toString() + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫捞掍捐挨挼挆掫接挖掺捎掴揾揩挊掯揉挛揚捓掁挵挏掏握捤挈揵挥揎捙挝捦捩控掠採挿捫","挴揞探挎捜揵捉揧掜捊挺掘挮捅揠掓"));
         clearTimeout(this._912d58d459441630a0a63634);
      }
      
      override public function show() : void
      {
         var _loc1_:int = 0x0DCA881F ^ 0x327BC7A5 ^ -1115621449 ^ 0x1BEEB04A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5E57DC7E ^ -263841747 ^ 0x10530848 ^ 0x279DC45D))
            {
               case 0:
                  return;
               case 1:
                  if(parent == null)
                  {
                     _loc1_ = 0x78C50EEB ^ -1412075589 ^ 0x76179CE6 ^ 0x3CD8F5F3;
                  }
                  else
                  {
                     _loc1_ = 0x2AAAA776 ^ 0x36D4986A ^ -634821434 ^ 0x5F88539C;
                  }
                  break;
               case 2:
                  _asset.alpha = -1085170755 ^ 0x3973B37B ^ 0x0EB401D2 ^ -2003425004;
                  super.show();
                  TweenCube.to(_asset,-874121658 ^ 0x554A9BEB ^ -525775976 ^ 0x7E062634,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挏掗揶掄推挼捔捘捭挚挴掼挱挼挱掿掟揲","揫揻揻挕掘掖掱捌捘挋挀挳掟捂掃掊")):0xF27921 ^ -226605531 ^ 0x3F3B1BF6 ^ -843635469});
                  _loc1_ = -573846452 ^ 0x59803C21 ^ -651000155 ^ -995721586;
                  break;
               case 3:
                  if(_asset != null)
                  {
                     _loc1_ = -74079598 ^ 0x685F1F53 ^ 0x41C17023 ^ 0x4BD4C5A6;
                  }
                  else
                  {
                     _loc1_ = 0x57710D2F ^ 0x52EC2268 ^ 0x3AAECDA3 ^ -1494422874;
                  }
                  break;
               case 4:
                  super.show();
                  _loc1_ = 0x2419ACE3 ^ -355095806 ^ -461351755 ^ -1282188526;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _46c2c03fe43fac6374d63f73(param1:DisplayObject) : Array
      {
         var _loc2_:ColorMatrix = null;
         var _loc3_:Array = null;
         var _loc4_:Boolean = ColorMatrix.isColorTransformNotEmpty(param1.transform.colorTransform);
         if(_loc4_)
         {
            if(_loc3_ == null)
            {
               _loc3_ = [];
            }
            _loc2_ = new ColorMatrix();
            _loc2_.readFromColorTransform(param1.transform.colorTransform);
            _loc3_.push(_loc2_.filter);
         }
         var _loc5_:Array = param1.filters;
         if(_loc5_ != null && _loc5_.length > (0x473927F0 ^ 0xC252B8 ^ 0x252BCAB8 ^ 0x62D0BFF0))
         {
            if(_loc3_ == null)
            {
               _loc3_ = [];
            }
            _loc3_ = _loc3_.concat(_loc5_);
         }
         return _loc3_;
      }
      
      override public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握挈挑挗掌掲捒捝揚揁掏挖捇捘揙掏揁振掻捵掕捆揗探掋掄揳捣掖挟揘挆捍挽掶挕揫挪捴捬挥揻掐挗掭挶揕捬掋挒捀掹挡掿揜捲掻挅揆挟掵掛揥捺捄捅","挽挖掄挼捳捧揎揶捣掕挺推挗掗換挖") + this._3f74438ff6eb474cdc928537 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙挄挃揿揕挆揸捕掠揍","掿捳揨挈挛揣揤挄掚揘揁挈捫捈挐揫");
      }
   }
}


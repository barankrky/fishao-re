package com.ax3.fishao.view.dialogs.trade.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.info._0760ce29bdab6fd5166927ab;
   import com.ax3.fishao.model.info._6885cfef3fe835f143ab6295;
   import com.ax3.fishao.model.info._69796f101fc3fc2b4b8665e9;
   import com.ax3.fishao.model.info._c4d45de32d45523b37ad0cdf;
   import com.ax3.fishao.model.info._d1ac35bdca78006e84f51a32;
   import com.ax3.fishao.model.types._8614be6026d395694b456730;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._3810c68698c1b61dede7885f;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._a2b4c9c0c53649d11f95d839;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.trade.FscExtensionTrade;
   import protocol.api.trade.accept.ResponseTradeAccept;
   import protocol.api.trade.cancel.ResponseTradeCancel;
   import protocol.api.trade.offerConfirm.ResponseTradeOfferConfirm;
   import protocol.api.trade.offerReset.ResponseTradeOfferReset;
   import protocol.api.trade.offerReview.ResponseTradeOfferReview;
   import protocol.api.trade.offerUpdate.ResponseTradeOfferUpdate;
   import protocol.api.trade.start.ResponseTradeStart;
   import protocol.api.trade.success.ResponseTradeSuccess;
   
   public class _a993f8fe111a8a19b03eba0a extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _7eb85f42b2e37785aa86b3e8:_f3cf344e3850578c3978a02c;
      
      private var _097d167fec30c34df46d25f3:FscExtensionTrade;
      
      private var _69760680ee2467760f9f61f4:_f11f4587bdf083a8dd45aa84;
      
      private var _8e28df255fc04cd322689eeb:_283b592e1b144e604db439f2;
      
      public function _a993f8fe111a8a19b03eba0a()
      {
         super();
         this._097d167fec30c34df46d25f3 = _dfa25706e58a240c1e33e5c6.fscModel.extensionTrade;
         _4575c3ec15103b43cbf2be04(ResponseTradeStart,this._11bd3643a2a6e5d481cdb58b);
         _4575c3ec15103b43cbf2be04(ResponseTradeAccept,this._2eb83df06656047df40f2afb);
         _4575c3ec15103b43cbf2be04(ResponseTradeOfferUpdate,this._984d875fa80bba061651b77c);
         _4575c3ec15103b43cbf2be04(ResponseTradeOfferConfirm,this._31d6279525e65c75c2a7998e);
         _4575c3ec15103b43cbf2be04(ResponseTradeOfferReview,this._464c1b7676a62d6ff623e759);
         _4575c3ec15103b43cbf2be04(ResponseTradeOfferReset,this._f7fb69bf7ee43f83860ddb26);
         _4575c3ec15103b43cbf2be04(ResponseTradeCancel,this._414a8bd8970b4523d574361b);
         _4575c3ec15103b43cbf2be04(ResponseTradeSuccess,this._d5a35c6c2645a0465da73f40);
         this._69760680ee2467760f9f61f4 = new _f11f4587bdf083a8dd45aa84(_141a5f7d84a4cfae1680515b.TYPE_SIMPLE);
      }
      
      private static function get _c650f38aee2342956326fdcb() : Array
      {
         var _loc1_:_69796f101fc3fc2b4b8665e9 = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_69796f101fc3fc2b4b8665e9> = app.user.inventory.baits;
         for each(_loc1_ in _loc4_)
         {
            if(_69796f101fc3fc2b4b8665e9._056928f133d4ea22440521ad(_loc1_))
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.BAIT;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get _7cdc15cc418c7f1c544aafef() : Array
      {
         var _loc1_:_6885cfef3fe835f143ab6295 = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_6885cfef3fe835f143ab6295> = app.user.inventory.looks;
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = new _664206d546fdcb718f944b31();
            _loc2_.id = _loc1_.id;
            _loc2_.type = _67282af25befe9778e5c8dd1.CLOTHE;
            _loc2_.quantity = _loc1_.quantity;
            _loc2_.update();
            _loc3_.push(_loc2_);
         }
         return _loc3_;
      }
      
      private static function get _ced75c67d85abb808e004b58() : Array
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_c4d45de32d45523b37ad0cdf> = app.user.inventory.other;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == _67282af25befe9778e5c8dd1.FISH_RADAR.id || _loc1_.type == _67282af25befe9778e5c8dd1.FLOAT.id || _loc1_.type == _67282af25befe9778e5c8dd1.LUCK_POTION.id || _loc1_.type == _67282af25befe9778e5c8dd1.MAGIC_WATCH.id || _loc1_.type == _67282af25befe9778e5c8dd1.EXP_BOOSTER.id || _loc1_.type == _67282af25befe9778e5c8dd1.SHINY_POTION.id || _loc1_.type == _67282af25befe9778e5c8dd1.POWER_BOOSTER.id)
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1._6b751ce98cf8b7017db5d6e6(_loc1_.type);
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get _8aba0e097708a76840da93ad() : Array
      {
         var _loc1_:_0760ce29bdab6fd5166927ab = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_0760ce29bdab6fd5166927ab> = app.user.inventory.rods;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.infoId != _0760ce29bdab6fd5166927ab.BAMBOO_ID)
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.ROD;
               _loc2_.infoId = _loc1_.infoId;
               _loc2_.color = _91aad973ddd3030366bf3e1f._1b0e8010b91a2c317d9e2641(_loc1_.color);
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get _e109119368c801b274d8e8c6() : Array
      {
         var _loc1_:_664206d546fdcb718f944b31 = null;
         var _loc2_:Array = [];
         var _loc3_:int = int(app.user.fishbucks);
         if(_loc3_ > (-1519054504 ^ -916017486 ^ -301306380 ^ -2112237026))
         {
            _loc1_ = new _664206d546fdcb718f944b31();
            _loc1_.id = 0x17EEC3F2 ^ -1074722719 ^ 0x72FCF3D9 ^ -622643125;
            _loc1_.type = _67282af25befe9778e5c8dd1.FISHBUCKS;
            _loc1_.quantity = _loc3_;
            _loc1_.update();
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
      
      private static function get _a5f5c2caaf18cc7e2ca6c7c9() : Array
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_c4d45de32d45523b37ad0cdf> = app.user.inventory.fish;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.quantity > (0x4674F112 ^ 0x038848B4 ^ -350654175 ^ -1360672633) && (_loc1_.type == _67282af25befe9778e5c8dd1.FISH.id || _loc1_.type == _67282af25befe9778e5c8dd1.FISH_SHINY.id))
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1._6b751ce98cf8b7017db5d6e6(_loc1_.type);
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get _d884b4b4e3962cb097737a2c() : Array
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_c4d45de32d45523b37ad0cdf> = app.user.inventory.fossils;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == _67282af25befe9778e5c8dd1.FOSSIL.id)
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.FOSSIL;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get _92049d6e0e8f1b7f00a6e4ad() : Array
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_c4d45de32d45523b37ad0cdf> = app.user.inventory.other;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == _67282af25befe9778e5c8dd1.FRUIT.id)
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.FRUIT;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function get _223ba83526d31728edef2265() : Array
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_c4d45de32d45523b37ad0cdf> = app.user.inventory.other;
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.type == _67282af25befe9778e5c8dd1.OTHER.id && _loc1_.id == _67282af25befe9778e5c8dd1.ID_SHELL)
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.id;
               _loc2_.type = _67282af25befe9778e5c8dd1.OTHER;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private static function _3eee7049992e865ba69f9744(param1:Array) : Array
      {
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            _loc3_.push(_loc2_._2efe8d67ce84f35b037ec96c());
         }
         return _loc3_;
      }
      
      private function get _e5c51daddbd405f7e7a3022f() : Array
      {
         var _loc1_:_d1ac35bdca78006e84f51a32 = null;
         var _loc2_:_664206d546fdcb718f944b31 = null;
         var _loc3_:Array = [];
         var _loc4_:Vector.<_d1ac35bdca78006e84f51a32> = _a2b4c9c0c53649d11f95d839._7117c3f1ac99b8634c5ba23b(app.user.inventory.decoration);
         for each(_loc1_ in _loc4_)
         {
            if(_loc1_.quantity > (0x44AC3A38 ^ -1934395016 ^ -352770106 ^ 0x22E66486) && _loc1_.type == _67282af25befe9778e5c8dd1.DECORATION.id && !this._6499d1738c01ec1fea1fa0e5(_loc1_.type,_loc1_.decoId))
            {
               _loc2_ = new _664206d546fdcb718f944b31();
               _loc2_.id = _loc1_.decoId;
               _loc2_.type = _67282af25befe9778e5c8dd1.DECORATION;
               _loc2_.quantity = _loc1_.quantity;
               _loc2_.update();
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      private function _6499d1738c01ec1fea1fa0e5(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:_9b5482b3978b7abe1547abb8 = this._8e28df255fc04cd322689eeb._67bcf66f1f44b32e336d33f1(_3810c68698c1b61dede7885f.ETT_DECORATION);
         if(!_loc4_.isComplete)
         {
            _loc3_ = param1 == _67282af25befe9778e5c8dd1.DECORATION.id && (param2 == (0x468B8CDD ^ 0x2A7B7B2F ^ -1156354991 ^ -672949342) || param2 == (0x6006A8B1 ^ 0x0EC447C2 ^ -1326436256 ^ -567091439) || param2 == (-618033916 ^ -1701189551 ^ 0x57DA5258 ^ 0x166A3708) || param2 == (0x40588993 ^ -739278364 ^ -205121386 ^ 0x607110E6) || param2 == (-453301552 ^ -619468290 ^ -1973587627 ^ -1246367117));
         }
         return _loc3_;
      }
      
      public function get tradeModel() : _f3cf344e3850578c3978a02c
      {
         return this._7eb85f42b2e37785aa86b3e8;
      }
      
      private function set _ece08c161a1aa90a997a2fda(param1:Boolean) : void
      {
         var _loc2_:int = -2075936947 ^ 0x1F0D4CB4 ^ 0x496466B1 ^ -722320654;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1477325216 ^ -582512387 ^ -958471374 ^ -1162845676))
            {
               case 0:
                  this._69760680ee2467760f9f61f4.stop();
                  _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._69760680ee2467760f9f61f4);
                  _loc2_ = 0x03420B92 ^ 0x29302D59 ^ -288522533 ^ -1033402455;
                  break;
               case 1:
                  if(param1)
                  {
                     _loc2_ = 0x5D86BE3B ^ 0x581E6A4A ^ -1009089941 ^ -1063614046;
                  }
                  else
                  {
                     _loc2_ = -1643537797 ^ -1723740782 ^ 0x7961F131 ^ 0x78F17963;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  this._69760680ee2467760f9f61f4.start();
                  _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(this._69760680ee2467760f9f61f4);
                  _loc2_ = 0x614308C6 ^ -1443811159 ^ -2094192521 ^ 0x4D47CFA1;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _11bd3643a2a6e5d481cdb58b(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_4351b8ab79e2546483fbcaab = null;
         this._ece08c161a1aa90a997a2fda = false;
         var _loc3_:ResponseTradeStart = param1 as ResponseTradeStart;
         var _loc4_:String = _loc3_.loginOwner == app.user.username ? _loc3_.loginTarget : _loc3_.loginOwner;
         this._7eb85f42b2e37785aa86b3e8 = new _f3cf344e3850578c3978a02c();
         this._7eb85f42b2e37785aa86b3e8.tradeId = _loc3_.tradeId;
         this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer = new _394d2d1e72d06151d1adc157(app.user.username,_3f231537217a2498942b645b.ETT_PLAYER,_loc3_.loginOwner == app.user.username);
         this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer.status = _8614be6026d395694b456730.MAKE_OFFER;
         this._7eb85f42b2e37785aa86b3e8.tradeSideTarget = new _394d2d1e72d06151d1adc157(_loc4_,_loc3_.tradeType,_loc3_.loginOwner == _loc4_);
         this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.status = this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.isInitiator ? _8614be6026d395694b456730.MAKE_OFFER : _8614be6026d395694b456730.RECEIVE_INCOME_OFFER;
         var _loc5_:Dictionary = new Dictionary(true);
         var _loc6_:Array = [];
         switch(this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.type)
         {
            case _3f231537217a2498942b645b.ETT_NPC:
               §§push(0x1CCCC6B6 ^ -647857569 ^ -384958195 ^ 0x2CA0BDE4);
               break;
            case _3f231537217a2498942b645b.ETT_PLAYER:
               §§push(-2031422435 ^ -1375848322 ^ 0x39C1327B ^ 0x12D5FE19);
               break;
            default:
               §§push(-419831793 ^ 0x6B0EBF4B ^ -81094826 ^ 0x76DDC810);
         }
         switch(§§pop())
         {
            case 0:
               _loc5_[_bbfe24a3df7967d705072009.ETIT_BAIT] = _c650f38aee2342956326fdcb;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_LOOK] = _7cdc15cc418c7f1c544aafef;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_OTHER] = _ced75c67d85abb808e004b58;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_ROD] = _8aba0e097708a76840da93ad;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_DECORATION] = this._e5c51daddbd405f7e7a3022f;
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_BAIT);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_LOOK);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_OTHER);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_ROD);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_DECORATION);
               break;
            case 1:
               _loc5_[_bbfe24a3df7967d705072009.ETIT_LOOK] = _7cdc15cc418c7f1c544aafef;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_FISH] = _a5f5c2caaf18cc7e2ca6c7c9;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_DECORATION] = this._e5c51daddbd405f7e7a3022f;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_FISHBUCKS] = _e109119368c801b274d8e8c6;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_FRUIT] = _92049d6e0e8f1b7f00a6e4ad;
               _loc5_[_bbfe24a3df7967d705072009.ETIT_SHELL] = _223ba83526d31728edef2265;
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_LOOK);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_FISH);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_DECORATION);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_FISHBUCKS);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_FRUIT);
               _loc6_.push(_bbfe24a3df7967d705072009.ETIT_SHELL);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("დၲၓუႉဪၛၞငუ႕ႿၔႥၨჼဿဲႽჾာ჏ၕဇ჎ႏႲှჍჵၶუჁიႨ၉Ⴚၳဇႚှဳလ႘ႃჴ႙მჍဖრၥႋ္ူႁၪဿၠშဝႅႛဟႳပၰႿჁဧၗმၠံၦწ၏၄ၙႡ၈လႎႦჾ჈ႌဘ჉ၢၟေႫჷ႘ၾဵლၩၡႷ჈ႁ၇႟ႫံႎယံႣდႠუაჲ","ဒါဃუ჌ၨၭလძၢၢჀဥၽဌ၌") + this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.type);
         }
         if(_loc3_.isFossilsEnabled)
         {
            _loc5_[_bbfe24a3df7967d705072009.ETIT_FOSSIL] = _d884b4b4e3962cb097737a2c;
            _loc6_.push(_bbfe24a3df7967d705072009.ETIT_FOSSIL);
         }
         this._7eb85f42b2e37785aa86b3e8.tradeItemsDictionary = _loc5_;
         this._7eb85f42b2e37785aa86b3e8.tradeItemsTypeList = _loc6_;
         var _loc7_:_394d2d1e72d06151d1adc157 = this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer;
         if(_loc7_.isInitiator)
         {
            _loc2_ = app.dialogFactory._835808d4c840126c3ed9432f();
            _loc2_.show();
         }
      }
      
      private function _2eb83df06656047df40f2afb(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_4351b8ab79e2546483fbcaab = null;
         this._ece08c161a1aa90a997a2fda = false;
         var _loc3_:ResponseTradeAccept = param1 as ResponseTradeAccept;
         if(this._7eb85f42b2e37785aa86b3e8 == null || this._7eb85f42b2e37785aa86b3e8.tradeId != _loc3_.tradeId)
         {
            return;
         }
         if(!this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer.isInitiator)
         {
            _loc2_ = app.dialogFactory._835808d4c840126c3ed9432f();
            _loc2_.show();
         }
         else
         {
            this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.status = _8614be6026d395694b456730.MAKE_OFFER;
         }
      }
      
      private function _984d875fa80bba061651b77c(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_394d2d1e72d06151d1adc157 = null;
         var _loc4_:_664206d546fdcb718f944b31 = null;
         this._ece08c161a1aa90a997a2fda = false;
         var _loc5_:ResponseTradeOfferUpdate = param1 as ResponseTradeOfferUpdate;
         if(this._7eb85f42b2e37785aa86b3e8 == null || this._7eb85f42b2e37785aa86b3e8.tradeId != _loc5_.tradeId)
         {
            return;
         }
         var _loc6_:Object = decodeJson(_loc5_.items);
         var _loc7_:Array = [];
         for each(_loc2_ in _loc6_)
         {
            _loc4_ = new _664206d546fdcb718f944b31();
            _loc4_.deserialize(_loc2_);
            _loc7_.push(_loc4_);
         }
         _loc3_ = this._7eb85f42b2e37785aa86b3e8._b6644d73e85345bbc07c1d93(_loc5_.login);
         Debug.assertNotEqual(_loc3_,null,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劫刪勳勹劬剸劯刣剛剂勿勈刣刂剩劅劓剾劫剺劆刮剙勨劤刜刿募刺劭刼劀劤剟刺刧制刱力勈剬剰則切则刧劇劭分勦勋勘劣劚削助劔勐勋剆刭刼勆劄初剳剷勖刭剧勯勁初剼刉劆劊刖勩勆刬勑剞剠勣剡剄勡剑刍別劗刓刚勳刂利割刻勥勄劝劮勠劷刴剏刁劷勽努刌刡刀勜劭刚削初刊剰勸勛刑劫劬劅勳削刻刨利劷劁前创剔勽剱劝刐創剖务勱剷刅剿利别刼刴刡務創剞勔劾","剳勈剅利刊劻刡勊勞勬別刌勢劬劮劶") + _loc5_.login);
         _loc3_.items = _loc7_;
         this._7eb85f42b2e37785aa86b3e8._2152ca7a57e44c68690fd30c();
      }
      
      private function _31d6279525e65c75c2a7998e(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._ece08c161a1aa90a997a2fda = false;
         var _loc2_:ResponseTradeOfferConfirm = param1 as ResponseTradeOfferConfirm;
         if(this._7eb85f42b2e37785aa86b3e8 == null || this._7eb85f42b2e37785aa86b3e8.tradeId != _loc2_.tradeId)
         {
            return;
         }
         switch(_loc2_.login)
         {
            case this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer.login:
               §§push(-1104655993 ^ -2011049451 ^ -1757229935 ^ -1588898045);
               break;
            case this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.login:
               §§push(-1016747869 ^ -1820019141 ^ -707079822 ^ -2059677717);
               break;
            default:
               §§push(0x1F91EC83 ^ 0x746B1162 ^ -1978416117 ^ -504808984);
         }
         switch(§§pop())
         {
            case 0:
               this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer.status = _8614be6026d395694b456730.CONFIRM_OFFER;
               break;
            case 1:
               this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.status = _8614be6026d395694b456730.CONFIRM_OFFER;
               break;
            default:
               Debug.assert(false,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵捅挌捲挣捏捾掖揦掘挚捼揯掠按插捾捄揓捆捔揸挎措掠揣捆掉掿掴掩捞捔捱掼挜捖揸捄捀揌揥掾挏捻换揚掿措揰振挠揈挮揜捄推捍揮挕捧挒揲換挫捄揇捎掝挩掰捝捌揮挍挡揪揗捌挂捈挡捶揿揾揖挭換揕掻挃挼捰捼掴捰揭挖挛掘捯捋掳揽挟挔掏捌捼捾掄揵挟挞揯掾捍捂揕揥揭掾挡揱掵掣掷掯掷捈掚捤挡揳捥揄持捀揜捏揧掦挌掏掇挥掰捣捫挺","掴捠挩挠揞揓掇掹挵掛挨挟捘掭捕捘") + _loc2_.login);
         }
         if(this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.type == _3f231537217a2498942b645b.ETT_PLAYER && this._7eb85f42b2e37785aa86b3e8.tradeSideTarget.status == _8614be6026d395694b456730.CONFIRM_OFFER && this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer.status == _8614be6026d395694b456730.CONFIRM_OFFER)
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_REVIEW,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
         }
      }
      
      private function _464c1b7676a62d6ff623e759(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._ece08c161a1aa90a997a2fda = false;
         var _loc2_:ResponseTradeOfferReview = param1 as ResponseTradeOfferReview;
      }
      
      private function _f7fb69bf7ee43f83860ddb26(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseTradeOfferReset = param1 as ResponseTradeOfferReset;
         if(this._7eb85f42b2e37785aa86b3e8 == null || this._7eb85f42b2e37785aa86b3e8.tradeId != _loc2_.tradeId)
         {
            return;
         }
         this._7eb85f42b2e37785aa86b3e8._2152ca7a57e44c68690fd30c();
         _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._69760680ee2467760f9f61f4);
      }
      
      private function _414a8bd8970b4523d574361b(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._ece08c161a1aa90a997a2fda = false;
         var _loc2_:ResponseTradeCancel = param1 as ResponseTradeCancel;
         var _loc3_:String = _loc2_.description;
         if(_loc3_ != null && _loc3_ != "")
         {
            _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_CANCELED,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
            _0737efdbd5337ba3fbc64b2e.getInstance()._759494bf030146161aee1d68(_loc2_.description);
            return;
         }
         if(this._7eb85f42b2e37785aa86b3e8 == null || this._7eb85f42b2e37785aa86b3e8.tradeId != _loc2_.tradeId)
         {
            return;
         }
         if(_loc2_.initiatorLogin == "")
         {
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢办剕劀動勞剎刧劰劐到剼劖勜勮剦劉刮劎判劜効勌勑划勘剛勌勪劆勲勄勿刌剓刁刳剷刄刷判努劙刧剂剬動勅刲刜割劈列劑劒剞剔剸勼劦","勗勾刵制劳刜勺务勹刡动勵刜劅勻勌"));
         }
         var _loc4_:_394d2d1e72d06151d1adc157 = this._7eb85f42b2e37785aa86b3e8._b6644d73e85345bbc07c1d93(_loc2_.initiatorLogin);
         if(_loc4_ != null)
         {
            _loc4_.status = _8614be6026d395694b456730.CANCEL_OFFER;
         }
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_CANCELED,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
         this._91c63f62635e0e2b99bd201b();
      }
      
      private function _d5a35c6c2645a0465da73f40(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._ece08c161a1aa90a997a2fda = false;
         var _loc2_:ResponseTradeSuccess = param1 as ResponseTradeSuccess;
         if(this._7eb85f42b2e37785aa86b3e8 == null || this._7eb85f42b2e37785aa86b3e8.tradeId != _loc2_.tradeId)
         {
            return;
         }
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TRADE_FINISHED,_22437dfd77f65dbf9dbc4281.EDT_TRADE);
         this._91c63f62635e0e2b99bd201b();
      }
      
      override public function _90f9c483fb94c3782ed48130() : void
      {
         super._90f9c483fb94c3782ed48130();
         this._8e28df255fc04cd322689eeb = GameSwf.instance.managerTutorial;
      }
      
      public function _60019a144b136cb1a56690b2(param1:String, param2:String) : void
      {
         this._097d167fec30c34df46d25f3.startTrade(param1,param2);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function acceptTrade(param1:int = -1) : void
      {
         this._097d167fec30c34df46d25f3.acceptTrade(param1);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function updateOffer() : void
      {
         var _loc1_:Array = _3eee7049992e865ba69f9744(this._7eb85f42b2e37785aa86b3e8.tradeSidePlayer.items);
         this._097d167fec30c34df46d25f3.updateOffer(this._7eb85f42b2e37785aa86b3e8.tradeId,_loc1_);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function resetOffer() : void
      {
         this._097d167fec30c34df46d25f3.resetOffer(this._7eb85f42b2e37785aa86b3e8.tradeId);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function reviewOffer() : void
      {
         this._097d167fec30c34df46d25f3.reviewOffer(this._7eb85f42b2e37785aa86b3e8.tradeId);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function _bd490e5e993632b958c055a1() : void
      {
         this._097d167fec30c34df46d25f3.confirmOffer(this._7eb85f42b2e37785aa86b3e8.tradeId);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function _6fcbb05a6ecde8caa829b927() : void
      {
         this._097d167fec30c34df46d25f3.cancelTrade(this._7eb85f42b2e37785aa86b3e8.tradeId);
         this._ece08c161a1aa90a997a2fda = true;
      }
      
      public function _91c63f62635e0e2b99bd201b() : void
      {
         this._7eb85f42b2e37785aa86b3e8 = null;
      }
   }
}


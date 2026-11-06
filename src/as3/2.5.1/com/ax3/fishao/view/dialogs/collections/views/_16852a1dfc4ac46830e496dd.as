package com.ax3.fishao.view.dialogs.collections.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.info._b258243af15564179d705900;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._a240f0394e2d5677aff9f7b4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   
   public class _16852a1dfc4ac46830e496dd extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static var _8db93470b5ee27ea8542b9cd:ColorMatrixFilter = _a240f0394e2d5677aff9f7b4._4e8eecfe2829137c38b53096(-1727186632 ^ -196298318 ^ 0x754DFFC0 ^ -403472310);
      
      private var _902feb6dea8c563694a55880:gViewCollection = new gViewCollection();
      
      private var _f5763df75cffa24f4c4e2bd3:_a4e47350c89a50d87a148c28;
      
      private var _89def62cc6ff596ab622ed8c:_eb2314ffc37429732989b460;
      
      private var _d71cb7586ecd16139fd37953:_b258243af15564179d705900;
      
      private var _bbfb88ff43c0e2f14e53b266:Array;
      
      private var _7b10c3b70e2396d12c99516e:FrameButtonWrapper;
      
      private var _cac7b65201599491214ec917:FrameButtonWrapper;
      
      public function _16852a1dfc4ac46830e496dd(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._902feb6dea8c563694a55880);
         this.init();
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._7b10c3b70e2396d12c99516e;
      }
      
      public function get buttonPrev() : FrameButtonWrapper
      {
         return this._cac7b65201599491214ec917;
      }
      
      public function get itemsOnPage() : int
      {
         return 0x67C4E409 ^ 0x298AEE75 ^ -799126137 ^ -1643100161;
      }
      
      public function get items() : Array
      {
         return this._bbfb88ff43c0e2f14e53b266;
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:_ebeac595a62fba6d6fcea1c2 = null;
         this._bbfb88ff43c0e2f14e53b266 = param1;
         var _loc3_:Number = 0x24CA99DF ^ -1291722689 ^ 0x6D87AB95 ^ -95628727;
         var _loc4_:Number = 0x05E01A72 ^ 0x56C79A1E ^ 0x1073472D ^ 0x4354C725;
         var _loc5_:Number = _loc3_;
         var _loc6_:Number = 0x073EFA8C ^ -707092284 ^ -1477023359 ^ 0x751233E1;
         var _loc7_:uint = uint(0x5C9268D0 ^ 0x364AA463 ^ -1326587275 ^ -634048826);
         for each(_loc2_ in this._bbfb88ff43c0e2f14e53b266)
         {
            this._902feb6dea8c563694a55880.addChild(_loc2_.source);
            _loc2_.source.x = _loc5_;
            _loc2_.source.y = _loc6_;
            _loc5_ += _loc4_;
            _loc7_++;
            if(_loc7_ == this.itemsOnPage)
            {
               _loc7_ = uint(-1827954592 ^ -1396491908 ^ 0x4E4F3907 ^ 0x7187A01B);
               _loc5_ = _loc3_;
            }
         }
         _d3d70238b67f17bb35699a2c._d7c8729108cc7f2a5c2d5bf5(this._902feb6dea8c563694a55880.viewLock);
      }
      
      public function set reward(param1:_b258243af15564179d705900) : void
      {
         this._d71cb7586ecd16139fd37953 = param1;
         var _loc2_:String = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1._6b751ce98cf8b7017db5d6e6(param1.resourceType).name,param1.resourceId));
         this._f5763df75cffa24f4c4e2bd3 = new _a4e47350c89a50d87a148c28(null);
         this._f5763df75cffa24f4c4e2bd3.width = this._902feb6dea8c563694a55880.viewImageReward.width;
         this._f5763df75cffa24f4c4e2bd3.height = this._902feb6dea8c563694a55880.viewImageReward.height;
         app.resourceManager.replaceBitmapDataFromURL(this._f5763df75cffa24f4c4e2bd3,_loc2_);
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         this._902feb6dea8c563694a55880.viewLock.visible = param1;
      }
      
      public function set lockMessage(param1:String) : void
      {
         this._902feb6dea8c563694a55880.viewLock.label.text = param1;
      }
      
      public function set collectionId(param1:int) : void
      {
         this._902feb6dea8c563694a55880.labelTitle.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ოၔဝၺၣဿဓၵဇღဣၖာ჉ცႎჶၛၨႼႯჺႈ၁ူျာბဟჟဴၺ႔ၜჱဧၴპဧႜဂဌ","ၸကဳ჎ქဒႁညႦ၈ႀၝჯၸႳဴ") + param1);
      }
      
      public function _299e7bb5a645ce91a6b1a4d1(param1:int, param2:int) : void
      {
         this._902feb6dea8c563694a55880.labelProgress.text = param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勋劵劢刂劔勻刹勷加剁","力刵剭刨利剗刓劶剸刣剟刐劑勁剂剙") + param2;
      }
      
      public function set isComplete(param1:Boolean) : void
      {
         var _loc2_:String = "";
         var _loc3_:String = "";
         switch(this._d71cb7586ecd16139fd37953.resourceType)
         {
            case _67282af25befe9778e5c8dd1.BADGE.id:
               §§push(-675762187 ^ 0x3FDC3C55 ^ 0x60296419 ^ -2008156231);
               break;
            case _67282af25befe9778e5c8dd1.FISH.id:
               §§push(0x59DC2220 ^ -1653865835 ^ -1068879193 ^ 0x04FA1213);
               break;
            default:
               §§push(-543451461 ^ -1232111190 ^ 0x4E7D6053 ^ 0x27698F40);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴ႟႒ၳთၱၯဥ၊ႲჺႰၞၢၷჩႜႸခဿႽ၊ႶႫူှမၑၦဗၳჹဆၥၼဲၸႛးၲၓპ","ჵჄဲၟ჈Ⴗ႕ფჿၴဩနკးၛၯ") + this._d71cb7586ecd16139fd37953.resourceId);
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_LABEL_REWARD_RECEIVED : _85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_LABEL_REWARD_NOT_RECEIVED);
               break;
            case 1:
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TOOLTIP_REWARD_FISH_UNLOCKED : _85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_TOOLTIP_REWARD_FISH_LOCKED);
               _loc3_ = _loc3_.replace(_706c123ff0b2d45829c1bb3e.ESTS_FISH,_c2ad9d37d7be0097d6d2e977._8bb94da62349a1ea78211a86(this._d71cb7586ecd16139fd37953.resourceId));
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_LABEL_REWARD_FISH_UNLOCKED : _85b2141a2303f6545d411d7a.EST_DIALOG_COLLECTIONS_LABEL_REWARD_FISH_LOCKED);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭჯဘႢႸ၅၏Ⴗ်ဒქ჎ဴჁၴၢၢဿჾၚႤჇႴႫჰწၐ၃ჀၯნႨသ၂ქၢၯႪႻၶၔ჈ႌ჋ထჽၒၶჃႁဲ၆Ⴛႂဖ႘ზၶသၐဝာყ၅႘ဎၿ჆ႆေၢ჋ၙၱ჉ჺႵჽဏဓ၍ႪႷဠၳႵႣကႅၘဢၠၸႮჟႢჅჭခႏ","ဨႭၸၒგႫၢစႸფლႢၨႯၞჀ"));
         }
         this._f5763df75cffa24f4c4e2bd3.filters = this._0f4e72a2a385c0d094ba1a0f(param1);
         this._89def62cc6ff596ab622ed8c.addChild(this._f5763df75cffa24f4c4e2bd3);
         this._89def62cc6ff596ab622ed8c.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဴူხႇၯႴჾႧჟჾ၉ჃွჂႁဳ","ၗჀ႙ღႏႴၖဩဳბၶဣოသ჊Ⴊ")):_loc3_};
         this._902feb6dea8c563694a55880.labelReward.text = _loc2_;
      }
      
      private function init() : void
      {
         this._bbfb88ff43c0e2f14e53b266 = [];
         this._89def62cc6ff596ab622ed8c = new _eb2314ffc37429732989b460();
         ShiftWrapper.shiftDisplayObject(this._902feb6dea8c563694a55880.viewImageReward,this._89def62cc6ff596ab622ed8c);
         this._7b10c3b70e2396d12c99516e = new FrameButtonWrapper();
         this._7b10c3b70e2396d12c99516e.process(Debug.assertProperty(this._902feb6dea8c563694a55880,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("က႕ၫგვႫ၈ၒၑသ၇၇შၦၕၖဋႛႻႬဩၕႾဓဤၪၟჸ","သ႗Ⴕჺ်ဝၷ჊ဥგჷရႎლၶၘ"),DisplayObjectContainer));
         this._7b10c3b70e2396d12c99516e.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_7b10c3b70e2396d12c99516e,param1);
         };
         this._cac7b65201599491214ec917 = new FrameButtonWrapper();
         this._cac7b65201599491214ec917.process(Debug.assertProperty(this._902feb6dea8c563694a55880,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揍挒掲掓挸挲揹挕掝挮挭挧挧捫捍掕捪捜捁揕挊挍捕挑挸掓挅探","掷掋換挘捿掷掌挥捌捻挑挋捑挭揘掳"),DisplayObjectContainer));
         this._cac7b65201599491214ec917.handler = function(param1:MouseEvent):void
         {
            controller._4f254116765eb1a39d6712be(_cac7b65201599491214ec917,param1);
         };
      }
      
      private function _0f4e72a2a385c0d094ba1a0f(param1:Boolean) : Array
      {
         var _loc2_:Array = [];
         if(!param1)
         {
            var _loc3_:int = this._d71cb7586ecd16139fd37953.resourceType;
            switch(_67282af25befe9778e5c8dd1.FISH.id === _loc3_ ? 0x42E2A1ED ^ 0x2D3B66FE ^ -1743103 ^ -1875075054 : -664924710 ^ -2022381328 ^ -2048660462 ^ -624359111)
            {
               case 0:
                  _loc2_ = [_8db93470b5ee27ea8542b9cd];
            }
         }
         return _loc2_;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._7b10c3b70e2396d12c99516e.handler = null;
         this._cac7b65201599491214ec917.handler = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}


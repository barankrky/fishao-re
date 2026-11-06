package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._03cf4a1c7de9f33d761a6a1d;
   import com.ax3.display.wrappers.impl._73f5d17d09eb8739d4a22162;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._daef801c4e38e5d4bc89acd5;
   import com.ax3.display.wrappers.impl._ddf29697ecb85732c2e48007;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.model.vo._4570af2a509c6469de588ba4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.wrappers.impl._593f9faa4abfdef2dd5e6544;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class _eaf1c366e9817b3f7cf20d19 extends _8071087ebe26c264282580d0
   {
      
      public static const TAB_ID_RODS:int = -32670107 ^ 0x7DBDF9A2 ^ -1419552330 ^ 0x28D3DE71;
      
      public static const TAB_ID_BAIT:int = -66081372 ^ 0x71A65FC7 ^ 0x37860A7F ^ -1171261411;
      
      public static const TAB_ID_EXTRA:int = -1332322276 ^ 0x6D6F5133 ^ 0x50E6584D ^ -1927321248;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var fishcoinsIndicator:_ddf29697ecb85732c2e48007;
      
      public var fishbucksIndicator:_73f5d17d09eb8739d4a22162;
      
      public var tabs:_593f9faa4abfdef2dd5e6544;
      
      public var list:_03cf4a1c7de9f33d761a6a1d;
      
      private var _ed0d3f382472747cb8f6fc4e:int = -1;
      
      private var _b1486be60a32c19f288fed46:int = 0;
      
      private var _e3fff4b6eb3f0c41cec9c3e5:int = -1;
      
      protected var _itemsByTabIndex:Dictionary = new Dictionary();
      
      public function _eaf1c366e9817b3f7cf20d19()
      {
         this._itemsByTabIndex[TAB_ID_RODS] = new Vector.<_4570af2a509c6469de588ba4>();
         this._itemsByTabIndex[TAB_ID_BAIT] = new Vector.<_4570af2a509c6469de588ba4>();
         this._itemsByTabIndex[TAB_ID_EXTRA] = new Vector.<_4570af2a509c6469de588ba4>();
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揩揋掭握掠插损挪推揵捱採掴捦挎揭捒掮捬揙捋捔捖揢挾掞捡揠挎挞捐挥捵揃揮挮","措挐挫捡掼揌挶推挷掖揩捼捑捵挱掳");
         super(_loc1_);
      }
      
      protected function _bb40c37976d22e628e07d386(param1:Event) : void
      {
         this._cfdf5a2911155c7c841ecedc(this.tabs.currentTab);
      }
      
      public function _0295e548f2c52738caf51390(param1:Vector.<_4570af2a509c6469de588ba4>) : void
      {
         this._itemsByTabIndex[TAB_ID_RODS] = param1;
         if(this.tabs != null && this.tabs.currentTab == TAB_ID_RODS)
         {
            this._cfdf5a2911155c7c841ecedc(TAB_ID_RODS);
         }
      }
      
      public function _10e702843f372f16c578cdaa() : Vector.<_4570af2a509c6469de588ba4>
      {
         return this._itemsByTabIndex[TAB_ID_RODS];
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:int = 0x32DF4AFD ^ 0x1532958E ^ 0x2C307ACC ^ 0x0BDDA5BF;
         this.closeButton.handler = this._1981b8b687abb23f678ec7cc;
         this.title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၶႈჱ၍ၦ႒ၓჩေႍၮ჻კ჆ჷဇწဨႧၾၐၲဵ၁ႇ჌჏ၝႢႜზႯ႖ိဵရီှ႑႞","ႩာဎးლၠშဝႬၰုႌმჂ်ၗ"));
         var _loc2_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_daef801c4e38e5d4bc89acd5);
         _loc2_.process(this.list.itemTemplate);
         this.list.gap = 0x7487A74A ^ -1325783747 ^ 0x231A5921 ^ -412624045;
         this.list.itemFactory = _loc2_;
         this.tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪劶勧剎勄劘割剾刖勾剒刘刟剛刍刕勾剘劃勣勗勑剰劑努劝勈剩剛剝剆功刯勈刼勇刋别勋剥刕则刬副别刾","劖勮募勓刅劣劒劯劯刧劈劆勔募刲动")));
         this.tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႏႨ၉Ⴋ႒ဪၼფ႐ယ႒჆ჳၓးလဓၤံႝသ႟ၿၶၛ႔ံဋဂဏၷხვၐჳჱႂဟၬ჌ၦჹၫႎဨხ","တႂ၌မှိჷၰဧႪအ၄ၹဉတၠ")));
         this.tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勧刁刍別动勳利刷劧剡功勘刼勗勉勃刴勢劈劳刿勒刬劈剗剀劷剙动勽剈剽刚刘勑劫刧勔劊剋剳劆劑剾务刹割勊","刏劼劐勳势劌刯剛刁勱創勦努刳劗劰")));
         this.tabs.addEventListener(_593f9faa4abfdef2dd5e6544.TAB_CHANGED,this._bb40c37976d22e628e07d386);
         if(this._ed0d3f382472747cb8f6fc4e == ConstantsBase.INDEX_NONE)
         {
            this._cfdf5a2911155c7c841ecedc(this._b1486be60a32c19f288fed46);
         }
         else
         {
            this.tabs._8fc28a7b9efdde13057d31d6(this._ed0d3f382472747cb8f6fc4e,false);
            this._ed0d3f382472747cb8f6fc4e = ConstantsBase.INDEX_NONE;
            if(this._e3fff4b6eb3f0c41cec9c3e5 != ConstantsBase.INDEX_NONE)
            {
               _loc1_ = this._a943ed76ed747d86cb39bfdb(this._e3fff4b6eb3f0c41cec9c3e5);
               if(_loc1_ != ConstantsBase.INDEX_NONE)
               {
                  this.list._212441a4855840c8e96e9cf3(_loc1_);
                  this._e3fff4b6eb3f0c41cec9c3e5 = ConstantsBase.INDEX_NONE;
               }
            }
         }
         super._935ac2966ddad68dfc449202();
      }
      
      private function _a943ed76ed747d86cb39bfdb(param1:int) : int
      {
         var _loc2_:Vector.<_4570af2a509c6469de588ba4> = this._itemsByTabIndex[this.tabs.currentTab];
         var _loc3_:int = 0x4A304662 ^ 0x5F565134 ^ 0x2E460B8D ^ 0x3B201CDB;
         while(_loc3_ < _loc2_.length)
         {
            if(_loc2_[_loc3_].id == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return undefined;
      }
      
      public function _897189c1bd9463f4c2a9a16d(param1:int) : void
      {
         this._ed0d3f382472747cb8f6fc4e = param1;
      }
      
      public function _f3557e5276b0b776f15780b0(param1:int) : void
      {
         this._e3fff4b6eb3f0c41cec9c3e5 = param1;
      }
      
      public function _cfdf5a2911155c7c841ecedc(param1:int) : void
      {
         var _loc2_:_4570af2a509c6469de588ba4 = null;
         var _loc3_:_daef801c4e38e5d4bc89acd5 = null;
         var _loc4_:Vector.<_4570af2a509c6469de588ba4> = this._itemsByTabIndex[param1];
         this.list.removeAll();
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = _daef801c4e38e5d4bc89acd5(this.list.add(_loc2_));
            _loc3_.buyHandler = this.buyHandler;
         }
      }
      
      protected function buyHandler(param1:_4570af2a509c6469de588ba4, param2:int) : void
      {
      }
      
      private function _1981b8b687abb23f678ec7cc(param1:MouseEvent) : void
      {
         close();
      }
      
      public function _d99237f25a85e17e1e39e298(param1:Vector.<_4570af2a509c6469de588ba4>) : void
      {
         this._itemsByTabIndex[TAB_ID_BAIT] = param1;
      }
      
      public function _98f8153eef734032a0b78ea7(param1:Vector.<_4570af2a509c6469de588ba4>) : void
      {
         this._itemsByTabIndex[TAB_ID_EXTRA] = param1;
      }
   }
}


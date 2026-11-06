package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._03cf4a1c7de9f33d761a6a1d;
   import com.ax3.display.wrappers.impl._57f5efc4abaa2249dc78cceb;
   import com.ax3.display.wrappers.impl._b0a3ffa7ccf8d8242efc68ed;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.model.vo._c6fb360a8d529bb15ba382c3;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.utils.math.limit;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _e5c44abc2f353546d1147bf1 extends _8071087ebe26c264282580d0
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:TextField;
      
      public var list:_03cf4a1c7de9f33d761a6a1d;
      
      public var items:Vector.<_c6fb360a8d529bb15ba382c3> = new Vector.<_c6fb360a8d529bb15ba382c3>();
      
      private var _7568118fccb34874fca064ed:Boolean = false;
      
      public var amountPanel:_b0a3ffa7ccf8d8242efc68ed;
      
      protected var _soldItemIndex:int;
      
      public function _e5c44abc2f353546d1147bf1()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揺揳挘挏挳挸捑揭捔揜捇捠挩挕捡挒捺揬挡捅掴挷揦捷挨捾挅挅掣捔掇掝揔掤掰措","捏挜挱挚挒挱掱揤捵挅揂揧捔挴掙捀");
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      public static function _f5502442600f90ab60bf8136(param1:_c6fb360a8d529bb15ba382c3, param2:_c6fb360a8d529bb15ba382c3) : int
      {
         var _loc3_:String = param1.title;
         var _loc4_:String = param2.title;
         if(_loc3_ > _loc4_)
         {
            return -674122686 ^ -748005660 ^ 0x0F8883BA ^ 0x0B33611D;
         }
         if(_loc3_ < _loc4_)
         {
            return 0x31475BB1 ^ -1805973310 ^ -1880839946 ^ -720960390;
         }
         return 0x4DA900AF ^ 0x3E885946 ^ 0x74E9074D ^ 0x07C85EA4;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         tabChildren = false;
         this.closeButton.handler = this._af2c82f3f62e3af64cf61128;
         this.title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჊႐ဆှၵၛၩ၈ႩႷ၂ၽဴႊၘႴၤဲჲြ၌ဴၭႮ႐ფ႖ဲႤეၽႁဦ႓გႇဏဍဂ၄ჃၹငჄၧႆ၀ၡ","ႦၥဨဖဨჳၼဇႲၽႬူკႶၭ჈"));
         this.amountPanel.titleField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုၛ჊ႣႃအၕჲဌႇၛဈသစႚၿခိဩႳ჋ီ၈ლძႸၻ၅ၶႉႋ႞ၐဟဢႀှ၊","။Ⴀၘႏႀ჌၅ၽသთၯႩကჀႭ჎"));
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_57f5efc4abaa2249dc78cceb);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = -1299767788 ^ -1536659067 ^ 0x0659F9BA ^ 0x10B6962E;
         this.list.sortFn = _f5502442600f90ab60bf8136;
         this.list.itemFactory = _loc1_;
         this.amountPanel.hide();
         this._09d6fc64e1ee1f340d1e0c45();
         super._935ac2966ddad68dfc449202();
      }
      
      protected function buyHandler(param1:_c6fb360a8d529bb15ba382c3) : void
      {
      }
      
      private function _af2c82f3f62e3af64cf61128(param1:MouseEvent) : void
      {
         close();
      }
      
      public function _c253fa7e09283fa181e79b00() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_57f5efc4abaa2249dc78cceb);
         _loc1_.process(this.list.itemTemplate);
         this.list.itemFactory = _loc1_;
         this._09d6fc64e1ee1f340d1e0c45();
         --this._soldItemIndex;
         limit(this._soldItemIndex,0x16C448D1 ^ 0x3F3ED001 ^ -1906328017 ^ -1482348801,this.list.elements.length);
         this.list._212441a4855840c8e96e9cf3(this._soldItemIndex);
      }
      
      private function _09d6fc64e1ee1f340d1e0c45() : void
      {
         var _loc1_:_c6fb360a8d529bb15ba382c3 = null;
         var _loc2_:_57f5efc4abaa2249dc78cceb = null;
         var _loc3_:Vector.<_c6fb360a8d529bb15ba382c3> = this.items;
         this.list.removeAll();
         var _loc4_:int = 0x703E786D ^ -1847371774 ^ -1565166819 ^ 0x43685366;
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = _57f5efc4abaa2249dc78cceb(this.list.add(_loc1_));
            _loc2_.buyHandler = this.buyHandler;
         }
         if(_loc3_.length < (-1166311222 ^ -1044056640 ^ -1110669289 ^ -965477095) && this._7568118fccb34874fca064ed == false)
         {
            this.list.GetContent.width += _loc4_;
            this._7568118fccb34874fca064ed = true;
         }
      }
   }
}


package com.ax3.fishao.view.wrappers.impl.profile.inventoryPanel
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.IAssetWrapperWithFactory;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.model.profile.inventoryPanelData._72a5694e3d55896612e21a2b;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._2789bfaf3166bc2bc9d71aa6;
   import com.ax3.fishao.view.wrappers.impl._2d53a7ea885b00e1a3b58018;
   import com.ax3.fishao.view.wrappers.impl.profile._9d02c280d3d4b261c7a094d9;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._cc10ca05aac4527c75bdb2e7;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._2a3778bd7cef0b0147cc5678;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._a5b8b5a0e66fa8f31d236147;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._bdbf5ff4e1b06b31215378bb;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class _408ea7c7c6f2cc2c1d1baf8d extends _9d02c280d3d4b261c7a094d9 implements IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      private static const _8c7e6007d0adea897b76dfdd:int = 0x5CC06D2B ^ -984398813 ^ -1305318090 ^ 0x2BA144E6;
      
      private static const _8ca3902a48acf9d9c621fea1:int = -1589055556 ^ 0x15509940 ^ -663441923 ^ 0x6C6CDBB1;
      
      private static const _186ecfc016ca1e7242d955bd:int = -1921724546 ^ -1376865899 ^ -993080043 ^ -464211048;
      
      private static const _7c45fe5e0342eaeb12520ade:int = -2066710795 ^ 0x61E6EAFB ^ 0x7BA61D94 ^ -1634694658;
      
      private static const _c1106f168739b59ea807381a:int = -750186213 ^ -311018973 ^ 0x2013A206 ^ 0x1E2C893B;
      
      private static const _b86e9599ce75a3cfa1dbac94:int = -1194608554 ^ 0x01BE0D27 ^ -1951529338 ^ 0x32DBB3F4;
      
      public var chooseItemsText:TextField;
      
      public var pagesTextField:TextField;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var typePicker:_2789bfaf3166bc2bc9d71aa6;
      
      protected var _itemFactory:_b6959442d774100015b69ffa;
      
      protected var _typeFactory:_b6959442d774100015b69ffa;
      
      private var _69eb072b2788b669a80af9cb:_72a5694e3d55896612e21a2b;
      
      private var _9f738c1e98636a623b21fd1e:_2a3778bd7cef0b0147cc5678;
      
      public var itemsContainer:Sprite;
      
      public function _408ea7c7c6f2cc2c1d1baf8d()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         var _loc1_:DisplayObject = _asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ရ႑ქၫႹႌႄၚၮႧ჈ხႯႴეၠ၏ၐဖ၎ფႴႾဝႌႺორႝჶႮჸႠႫ","ႚ჻ၨၹ၎၄ၛჳძ჏၆Ⴛၸႏ႖ჲ"));
         this._itemFactory = new _b6959442d774100015b69ffa(_app.resourceManager,_swfFileName,_00901c967306869f42d93d60);
         this._itemFactory.process(_loc1_);
         this._typeFactory = new _b6959442d774100015b69ffa(_app.resourceManager,_swfFileName,_2d53a7ea885b00e1a3b58018);
         this.typePicker._c5d5235acc70f20f98ab98c9(this._typeFactory);
         this.typePicker.addEventListener(Event.CHANGE,this._f65367b68d2f00018e6ac7ed);
         this.typePicker.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("到券刚剥割剖劊劾刿劾劭勷刎初","剝劮刜勌剚剃列初劁劙剥剰勴剧勈励"));
         this._9b9222e2766e0f5a67c642a5();
      }
      
      private function _9b9222e2766e0f5a67c642a5() : void
      {
         this.chooseItemsText.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("励判勅劭勚勗功剰刟则刅劓剞勖勄劧剣创勆剸劘募募剧剷劦刌刡勲刔剰劒勛勀劢勄刍剁刾劢刌剳","利劭剛劉勔刢勔刬刧劳勊刽剚務勣剥"));
         this._69eb072b2788b669a80af9cb = new _72a5694e3d55896612e21a2b();
         this.typePicker.create(this._69eb072b2788b669a80af9cb.typesNamesList);
         this._0d32b7e621c8c354065a2896();
      }
      
      private function _7f485662881e8bb23bdd8565() : void
      {
         this._f65367b68d2f00018e6ac7ed(null);
         _06764c2cef0a83e404316a1f();
      }
      
      private function _0d32b7e621c8c354065a2896() : void
      {
         var _loc1_:_bdbf5ff4e1b06b31215378bb = new _bdbf5ff4e1b06b31215378bb(this.pagesTextField,this.rightPageButton,this.leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:_a5b8b5a0e66fa8f31d236147 = new _a5b8b5a0e66fa8f31d236147(this.itemsContainer,_8c7e6007d0adea897b76dfdd,_8ca3902a48acf9d9c621fea1,_186ecfc016ca1e7242d955bd,_7c45fe5e0342eaeb12520ade,_b86e9599ce75a3cfa1dbac94,_c1106f168739b59ea807381a);
         var _loc3_:_cc10ca05aac4527c75bdb2e7 = new _cc10ca05aac4527c75bdb2e7(this._itemFactory);
         this._9f738c1e98636a623b21fd1e = new _2a3778bd7cef0b0147cc5678(_loc1_,_loc2_,_loc3_);
      }
      
      private function _f65367b68d2f00018e6ac7ed(param1:Event) : void
      {
         this._9f738c1e98636a623b21fd1e.elements = this._69eb072b2788b669a80af9cb._69ae2bbec37739b97c563a4a(this.typePicker.displayValue);
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._69eb072b2788b669a80af9cb.load(_login,this._7f485662881e8bb23bdd8565);
      }
   }
}


package com.ax3.fishao.display
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._73f5d17d09eb8739d4a22162;
   import com.ax3.display.wrappers.impl._da541e4b7d680b38f00a49ad;
   import com.ax3.display.wrappers.impl._ddf29697ecb85732c2e48007;
   import com.ax3.display.wrappers.impl._f50bdd02bebca9bff546cbb3;
   import com.ax3.fishao.display.boosters._abb122a4c5bb831aaf76438c;
   import com.ax3.fishao.display.panels._4176704303f879a1a90fac22;
   import com.ax3.fishao.display.panels._59ac9c4db8d8d1a76a4e80e6;
   import com.ax3.fishao.display.panels._af8c0db691f16dd195b14f3f;
   import com.ax3.fishao.display.panels.inventory.fishingLine._52ba4da10247be7ed116a836;
   import com.ax3.fishao.display.settings._7255e5c9eabc6b9827df0e56;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   
   public class _ea5d11db7ede4cbd394fe3ce extends Sprite
   {
      
      public var mainMenu:_5d0a89702d74c00ec5e6c83b;
      
      public var fishcoinsIndicator:_ddf29697ecb85732c2e48007;
      
      public var fishbucksIndicator:_73f5d17d09eb8739d4a22162;
      
      public var energyIndicator:_da541e4b7d680b38f00a49ad;
      
      public var levelIndicator:_f50bdd02bebca9bff546cbb3;
      
      public var plingPanel:_4176704303f879a1a90fac22;
      
      public var boatPanel:_c3951835479a7e520373aa81;
      
      protected var _controllerSettings:_7255e5c9eabc6b9827df0e56;
      
      protected var _controllerBoosters:_abb122a4c5bb831aaf76438c;
      
      private var _a1b45448eeeb876ee5baceb7:_52ba4da10247be7ed116a836;
      
      private var _79f0a9e41fa6b6be65807083:_59ac9c4db8d8d1a76a4e80e6 = new _59ac9c4db8d8d1a76a4e80e6();
      
      private var _57175ce16e8fddf181ce448a:_af8c0db691f16dd195b14f3f = new _af8c0db691f16dd195b14f3f();
      
      protected var _stage:Stage;
      
      private var _asset:DisplayObjectContainer;
      
      protected var _locationDialog:_67f8febc099eaa05c48aa41e;
      
      public function _ea5d11db7ede4cbd394fe3ce(param1:_67f8febc099eaa05c48aa41e)
      {
         super();
         this._locationDialog = param1;
         this.init();
      }
      
      public function get controllerBoosters() : _abb122a4c5bb831aaf76438c
      {
         return this._controllerBoosters;
      }
      
      public function get controllerSettings() : _7255e5c9eabc6b9827df0e56
      {
         return this._controllerSettings;
      }
      
      public function get informerRod() : _59ac9c4db8d8d1a76a4e80e6
      {
         return this._79f0a9e41fa6b6be65807083;
      }
      
      public function get baitInformer() : _af8c0db691f16dd195b14f3f
      {
         return this._57175ce16e8fddf181ce448a;
      }
      
      public function get controllerButtonFishingLine() : _52ba4da10247be7ed116a836
      {
         return this._a1b45448eeeb876ee5baceb7;
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
      
      protected function _935ac2966ddad68dfc449202() : void
      {
      }
      
      private function init() : void
      {
         this._stage = GameSwf.stage;
         this._asset = new GAME_GUI();
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this._79f0a9e41fa6b6be65807083.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃勨划剛劺创剅刢勥勝勂勁剪刷劮刓刘剀勑剞刈勆劵刦勃勝","劷剙前劣劊剕劙勸劊劐剈勔勆勳勽劈"));
         this._57175ce16e8fddf181ce448a.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႅ჊ႠჇჭၛမႳ႖ဴ၌ႛႺႜ၀ჺ","ႂၯႜၫჴဪအ႐႖႒჎ၓၹၪზၕ"));
         this.boatPanel = new _c3951835479a7e520373aa81();
         this.boatPanel.titleText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဟဆჃკ჻ဇႏჵႜၫჿဝ၇ჩმ჈ဦဍႥႺჵႰႈხၑဿႅၷဦၢဏွၑဨႭဿဠၶუႈ","ၤႬဧ჈ႼჂြჴხၽဟს်ဲ၈ၥ"));
         this._a1b45448eeeb876ee5baceb7 = new _52ba4da10247be7ed116a836();
         this._controllerBoosters = new _abb122a4c5bb831aaf76438c();
         addChild(this._controllerBoosters.view.source);
         this._controllerSettings = new _7255e5c9eabc6b9827df0e56();
         addChild(this._controllerSettings.view.source);
         addChild(this._a1b45448eeeb876ee5baceb7.view.source);
         addChild(this._79f0a9e41fa6b6be65807083);
         addChild(this._57175ce16e8fddf181ce448a);
         addChild(this.boatPanel);
      }
      
      public function destroy() : void
      {
         this._locationDialog = null;
      }
   }
}


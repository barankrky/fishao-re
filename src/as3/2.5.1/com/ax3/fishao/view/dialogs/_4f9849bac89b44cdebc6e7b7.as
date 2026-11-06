package com.ax3.fishao.view.dialogs
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._141d6363d2b999be245a5a34;
   import com.ax3.display.wrappers.impl._9e3f9276aaf5cba0766361f2;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._bb650418615bc8eb382e5586;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl._5af8e4f295f27d17ff5d7de4;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _4f9849bac89b44cdebc6e7b7 extends _8071087ebe26c264282580d0
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var okButton:_bb650418615bc8eb382e5586;
      
      public var prizesList:_141d6363d2b999be245a5a34;
      
      public var congratulationsLabel:TextField;
      
      public var prizeIcon:MovieClip;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:_5af8e4f295f27d17ff5d7de4;
      
      public function _4f9849bac89b44cdebc6e7b7()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႩစရဝႴအႝ჋္ოႯဲჍၶြၦვဵဨငႋဆ႕ၩ၍ၿ႑။ၲႣთူဿႊ္ၬႭ၎ဦႥၭၪრႋႱ၀჉ဉၞქცჽჷှიာ","Ⴋჺၳ႞ა჻ႻၠႷ჏ჟူ၈႘Ⴔၹ");
         super(_loc1_);
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super._d998e9465b31be9894488c29(param1);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.congratulationsLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄劃剅剰劧勨剺刂剏到勮勷刹勦刯列剛刀刁劵勉副刽勅剌勾勒势动勈勊勥劣初労劙券劵劺刈務刏剋勯募刞劜割劉劰別勏劸劏刹剌勀刚割劓劽劷刻劊労劢勏勍劓剛","動勌刲劭勖勝劉劚勠制勮効券剺勥勏"));
         this.okButton.label = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴勇勮剦剻剩勘劷効勉勋剉剄劼刭勫切勓到勄劗勑劎创剦刄勜勑加剠勫劧劊刖勱刾刊加劈刢勪劜刍劍","劸剚刑刉勺刵勇勭创刹刖剹剮劔劦劰"));
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_9e3f9276aaf5cba0766361f2);
         _loc1_.process(this.prizesList.itemTemplate);
         this.prizesList.gap = 0x154C590E ^ -892008726 ^ -667062614 ^ 0x07A4314E;
         this.prizesList.itemFactory = _loc1_;
         super._935ac2966ddad68dfc449202();
      }
   }
}


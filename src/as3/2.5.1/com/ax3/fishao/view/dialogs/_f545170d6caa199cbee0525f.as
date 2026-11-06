package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._141d6363d2b999be245a5a34;
   import com.ax3.display.wrappers.impl._9e3f9276aaf5cba0766361f2;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._bb650418615bc8eb382e5586;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _f545170d6caa199cbee0525f extends _8071087ebe26c264282580d0
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var okButton:_bb650418615bc8eb382e5586;
      
      public var prizesList:_141d6363d2b999be245a5a34;
      
      public var congratulationsLabel:TextField;
      
      public function _f545170d6caa199cbee0525f()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဠၡၡဈ့მၯႈ჈Ⴥလဝძၛကၐဈၕၹ႒ၝს႑။ဵႠ့წႚრ჌Ⴌၼ၆ၫჷყ္ႫႼၹဂႚဓဃၡႯႪဧၕ","၊႟ွခအၣჴဥႷ်ၕညၱမ။რ");
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super._d998e9465b31be9894488c29(param1);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.congratulationsLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勤剘劶勼勅勌努刢剪剰劏刊勝剺判剠削剘剉剴刔勰勲剋制劄刋刎劈剜劋分努剤勉剋分刯勝剕势勏動剅列劐劲勪勤剹劆剣刿劊刖勼勜劊勆勀剸剄剆劓","励劭勓剳劉勞剕刎勦剕劣勡刜劼刡動"));
         this.okButton.label = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞捲掮捇揻捴挞揰揻揚持掩揅揈掙掻捥挳掰揉揩揆掲掀挵挣掄揧捃揜捥掔挊捫挽挎挰揓挆振揦挦揫挸","採捒挅掃揸持揳掂捳掿揬捔捰捼掎掴"));
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_9e3f9276aaf5cba0766361f2);
         _loc1_.process(this.prizesList.itemTemplate);
         this.prizesList.gap = -148334104 ^ -1314268799 ^ 0x020B95AE ^ 0x448AD5C7;
         this.prizesList.itemFactory = _loc1_;
         super._935ac2966ddad68dfc449202();
      }
   }
}


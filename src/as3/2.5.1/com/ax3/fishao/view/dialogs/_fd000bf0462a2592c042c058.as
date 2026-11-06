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
   import com.ax3.fishao.view.wrappers.impl._5af8e4f295f27d17ff5d7de4;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _fd000bf0462a2592c042c058 extends _8071087ebe26c264282580d0
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var shareButton:_bb650418615bc8eb382e5586;
      
      public var okButton:_bb650418615bc8eb382e5586;
      
      public var availableList:_141d6363d2b999be245a5a34;
      
      public var congratulationsLabel:TextField;
      
      public var nowAvailableLabel:TextField;
      
      public var levelNum:DisplayObjectContainer;
      
      public var levelTextField:TextField;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:_5af8e4f295f27d17ff5d7de4;
      
      public function _fd000bf0462a2592c042c058()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჻ႽၠႺဪႠႲჰငႏႊჄ၈Ⴅ჈၇ႯႲဟრჟ႘უီ၌ႅၫၓჸნဋჶၤတჺဏႴၪငထဲႤႭႉ","ႋၴႉဉုညႝჳနႠဝၬბႾჺအ");
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
         this.levelTextField = this.levelNum[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("判勌剆剢刉剎勣勨勮勀刑剹劙勎","势劌剐勨办勼切勭刋務劬剃劬剃劜募")][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍剉刍刊剴勔务刪剷刖労剐劓勲勂劇动刴","刡劂劖勇列刻刿剴劍刑勈刪创勑剿劌")];
         this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸掂挒挐损挣捞揪挃掮掚揙授挬揞挼捠掺掗捿換挲掸挀捏挋挎掐揣掳捁掂挈揉","掗揞掑捰捆捑捹挈掑挟揭持揢捴挅按"));
         this.congratulationsLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掎捃掟掴揯挂掕捫揂捕揝捬掺掂捐掼掙掚掷挬捆掇揄挔揬挊揢掣掗掞捓捲探掎揙揼揊挚捈揲掬挐挕掚捅捿掂揎掘挘捋掜捜插","掫捆掃捈捸掏掵挺掣揉掐揗捶捠捳挥"));
         this.nowAvailableLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜掎揮揓掔捼揪挤揤捞挡掤掳捱掴揰掴捱揋挿挸挔換揌捝捽挄捇挢挍挃揋揪振捆揾掣掶揬揂捒接挅掣掾捣揑揦","掶捰揮揾挘挐挔挘持揺振捳挗捖挗挘"));
         this.shareButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႪႀဦჂဲတქႝၵ႙ჩფၿဍჅရჇჭჺၕႸႾႳ჈ဳဃၠၛჳန჻ႀჴდ","ဢႅဓၑဦჴ჎ဪ႓ၜဥၚနၾႆၩ"));
         this.okButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("იအ၆ၣუၓဖၳႷ၅ၯႁၦာၳၾჀၚပၢၢဴნႈႅ႑ႌႣ","ဥძჼႩၤ႔၁ႦႺჹႭၙၣညၲ်"));
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_9e3f9276aaf5cba0766361f2);
         _loc1_.process(this.availableList.itemTemplate);
         this.availableList.gap = -1004710429 ^ 0x6A8E57B5 ^ -34831156 ^ 0x537F869A;
         this.availableList.itemFactory = _loc1_;
         this.levelTextField.text = "";
         super._935ac2966ddad68dfc449202();
      }
   }
}


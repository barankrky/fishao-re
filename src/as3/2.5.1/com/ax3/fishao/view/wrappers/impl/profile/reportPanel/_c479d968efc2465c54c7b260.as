package com.ax3.fishao.view.wrappers.impl.profile.reportPanel
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.model.profile.reportPanelData._d0b6eb07ff5938764f3fe9fd;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._2789bfaf3166bc2bc9d71aa6;
   import com.ax3.fishao.view.wrappers.impl._2d53a7ea885b00e1a3b58018;
   import com.ax3.fishao.view.wrappers.impl._3c27d048a9c8a6c243aa4be9;
   import com.ax3.fishao.view.wrappers.impl.profile.*;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   import flash.text.TextField;
   import protocol.sr.profile.ProfileReportSuccessResp;
   
   public class _c479d968efc2465c54c7b260 extends _9d02c280d3d4b261c7a094d9 implements IAssetWrapperRecursive
   {
      
      public var sendReportButton:FrameButtonWrapper;
      
      public var banButton:FrameButtonWrapper;
      
      public var descriptionText:TextField;
      
      public var wrongQuestionText:TextField;
      
      public var explanationLabelText:TextField;
      
      public var explanationInputText:_3c27d048a9c8a6c243aa4be9;
      
      public var doingTypePicker:_2789bfaf3166bc2bc9d71aa6;
      
      private var _ba740f223ae7828abd3b12be:_d0b6eb07ff5938764f3fe9fd;
      
      public function _c479d968efc2465c54c7b260()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,_swfFileName,_2d53a7ea885b00e1a3b58018);
         this.doingTypePicker._c5d5235acc70f20f98ab98c9(_loc1_);
         this._ba740f223ae7828abd3b12be = new _d0b6eb07ff5938764f3fe9fd();
         this._59a90aced6950fa2ef011871();
      }
      
      private function _59a90aced6950fa2ef011871() : void
      {
         this.descriptionText.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤揻揤挩挒挻揸捖掎捗揘挔揟掽挛揮捜掜掁掽掕挷持揼揵接掬揂掭挨掩捫揓捜揘揧捱掲挗捶揧捹捡捖揓捗推按挮捽揶掬捉捠揱捅","捐捃挜掃採掑掳掷換捣捴捉挔捊掤挰"));
         this.wrongQuestionText.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捘揟掰掊捚挰掫掋捂排掩挬挷揼挹揈挺捖捛揸掚掎揼捚按捨掆揜挛挌挂揱捸挸揎捼掔挀挜按捞挩掂接挡揰掅捇挡捗捳掿挥捘挂挏捳捛揨捏挌掘掜揈捂掐挔揦","揢挵挼揷挗掰挤捆挪掛挻挶挓揚掜捨"));
         this.explanationLabelText.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("利列助勦勏剔剮剽劶刈勢刾剢剸剰劥剬則募勴勍势剧刑劙劾刷刖制募刺剱剾勨勔勀勉剛副劌剿刹募剣刱剃刚刘勷加劆势勺剠勂劁","勃勥刨劚劒刁勦前勁刹効劍剴勻勓剿"));
         this.sendReportButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捥挶捈挽掩揌挻揦捊措挚挗掭挦揾捬捹捐揽挆掋捤掼授捾揷掤捡捃捅挎掺据揄捩掦挞捥挑挘掝掲揆揍捄揻挓掑掠掖捄揯捉挰","换揉捹捪挕捣捾捱揱挋挶揿挟揽挆挄"));
         this.sendReportButton.handler = this._52a4acdd5bb1f0c41b51ab18;
         this.banButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဲၝၖႤႬ႘Ⴙლၞၢჿႂ၉၇၍ူგႶ႖ჿဏႁဳ႗သ၊ႏၦၪၙႻႍၻႺႫჃဳဂၛ႘ကჱჰႮၩဃႼဨၩ၂ဨႽ","ၾ၀ცတၫဘၮტဍႄႃ၉႕ါ႙၄"));
      }
      
      private function _f5c6756f5dd97a122b59848a() : void
      {
         this.doingTypePicker.create(this._ba740f223ae7828abd3b12be.doingList);
         this.doingTypePicker.text = this._ba740f223ae7828abd3b12be.doingList[0x0F8D1F77 ^ 0x50D48FC2 ^ -151947563 ^ -1448548768];
         _06764c2cef0a83e404316a1f();
      }
      
      private function _52a4acdd5bb1f0c41b51ab18(param1:Event) : void
      {
         var _loc2_:int = -190757638 ^ -623886426 ^ 0x21E6D61B ^ -2063953462;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-650180226 ^ -1220149855 ^ 0x5678CB2B ^ -1284570245))
            {
               case 0:
                  return;
               case 1:
                  this._ba740f223ae7828abd3b12be._098bb08b0b699d27a5ceea9f(_login,this.doingTypePicker.displayValue,this.explanationInputText.text,this._909b5247273bd09b3c951f58);
                  _loc2_ = 0x21D136B2 ^ -534860199 ^ 0x476E32DB ^ 0x0DCC96BF;
                  break;
               case 2:
                  if(this.explanationInputText.text != "")
                  {
                     _loc2_ = -361060423 ^ -1354735999 ^ -1673698756 ^ 0x526AA78A;
                  }
                  else
                  {
                     _loc2_ = 0x44005FEC ^ 0x79B9A66F ^ -1088085347 ^ 0x09F1E791;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._f5c6756f5dd97a122b59848a();
         this.explanationInputText.text = "";
      }
      
      private function _909b5247273bd09b3c951f58(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = null;
         if(param1 is ProfileReportSuccessResp)
         {
            _loc2_ = new _6691abcab801c2433d32324a();
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭揕揵挥掹捀掗挡掰挓捞捲揷捸掶捋掸捨揃挒捻挄掘掣挹掸揗掼揼挍插挟掼挸捗接挳挺掀揰措挶","掗描揖捨捃揑揋掅掤揹捂揌揸捺振捄")));
            _loc2_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
            this.update(null);
         }
      }
   }
}


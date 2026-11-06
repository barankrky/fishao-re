package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._bb650418615bc8eb382e5586;
   import com.ax3.fishao.display.popups._665c68e6c732fb052d549df8;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _a74c5388f60e1374049c79c3 extends _8071087ebe26c264282580d0
   {
      
      public var okButton:_bb650418615bc8eb382e5586;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var title:_665c68e6c732fb052d549df8;
      
      public var label_main_1:TextField;
      
      public var label_main_2:TextField;
      
      public var label_main_3:TextField;
      
      public var label_its_available:TextField;
      
      public var label_ps:TextField;
      
      public function _a74c5388f60e1374049c79c3()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၣცႇႚვჄႮႎၐႬ၊Ⴐ႗ႿႤႱ္ღၛႺၿႀჇဇဨၚၯႄჇႫသ႐ეၑႹဏယ၏၏ဨအ။Ⴢაၓၪჶ႖ဪဒၧ၊ჶზ႒၍","၇ဟშႸႄာဟჟყၹჭၯၨၹၻၠ");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         tabChildren = false;
         this.okButton.handler = this._4b36601b6d619c4f8ff4c5f1;
         this.closeButton.handler = this._4b36601b6d619c4f8ff4c5f1;
         this.closeButton.visible = false;
         this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃႹၰჲლჲჷၮၑ႟Ⴎေၻၮ၁ၪ႙ၹ၏မနၔၦႳთဧႴၫႅၯ၏၂ဤႣၘႷဎႀရႭၷၻღၕပေႉခ჊ၩქိ၃ဉ჋ჶ჋ဩ","Ⴤ႑႒ჿ၎ဆჀ၆ူၒကဇႺჶၹၬ"));
         this.label_main_1.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刱勖刁勲判勂刌刿劬刄勷剫劘募勉剪剨劂勃勴効剑勞勞劇剨剎勷刡劂刎刲剏劓刉刲劄励剖勘剗剡劜刄刱勆剩剶勰勒劵劎刓動助勚勢刪副勰剴到勞副勠剽勏劤刄刱創勗劈删","劔勅劕判刦勍勒勘刂刴初劸劋剃剈刅")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠勁动剐剚剎劭剮務剅刋劯剗勳剸劲力刜劷劤創剂勥勌剚削勯剦","劭劂刴刂刽勻刡劰効勇劇勵到剬刃刉"),app.user.username);
         this.label_main_2.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙挡揳掀挞掂挹损揪捈挃掼挜挒挳揇捑揙挩採挱掴掉捖捦捰揦揂掎掅掵揀挜掻掁控揧挹插掩揍挡揮挄挺挴掅插揜挋捽掵握挨挰掐揾换捡捇捚探揭挂揦挞揃排捋捩提揤挬捳","握掑挚揷持挕掦捵挂揈掊挧挬揅措挟"));
         this.label_main_3.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჰႀၞၓოႤოၸငႾၲႨႩႉီჽၾႯႇႿ်ၺ჆၍ျဇၥჍႯႥ჉ႌဿွႋჀဩရၩ჊Ⴞသညၐၔဎ၉ြဝე႞၉၄ჸქသဎည႖ဣရဦႿႴႽჟႅႛြၪဖႆჼဥ","႗ს၍ႸნဿჀၑჴპဗჯႪႧკက"));
         this.label_its_available.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("შၦဗ჋ုႥၯၾနၹၖပိუၪၱၜႱმზႊზၒ၀დိჸႨဢჸၬပဒჳၾႱႊါၬၧၣၽ၉ဴၡოვႅოငჳိ႐ွႍၦორဨပိჱ႕ဨႿၩၭქဆႹၳႡဟ၎","ჽကႲႀျဳဤခႧထၞႛဥ၆ႃჩ"));
         this.label_ps.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞掜挳捼掋捘挫挼挑揵挎捳按挮掟挛揸捋掭換掦掯捚捼捉掂排挪挧掱揞捧掊捭掽揺挃捧揋挈掳揋揤掍捫揸挥捯捄挡揲揜","揱揀揂揞掆揩持挮掀插揸換捷掋捼揻"));
         super._935ac2966ddad68dfc449202();
      }
      
      private function _4b36601b6d619c4f8ff4c5f1(param1:MouseEvent) : void
      {
         close();
      }
   }
}


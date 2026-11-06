package com.ax3.fishao.tutorial.views.dialogs.story
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class _4f9a84a93e73ca9d0756d9d9 extends _42f054bb18d666c45c357295
   {
      
      private var _4b088e408d599553e18c9ff0:Boolean = true;
      
      protected var _labelLetsStart:_73899a4de8f83c8d2c26f545;
      
      protected var _labelCanYou:_73899a4de8f83c8d2c26f545;
      
      private var _774f3cb5de0bf4736c3897a0:_9b5482b3978b7abe1547abb8;
      
      public function _4f9a84a93e73ca9d0756d9d9()
      {
         super();
         this._4b088e408d599553e18c9ff0 = app.char.body.type == CharViewConfig.MALE;
         this._774f3cb5de0bf4736c3897a0 = GameSwf.instance.managerTutorial.tutorialCommon;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         nextButton.handler = this._d636dbbfd0dce54ddc35803a;
         super._935ac2966ddad68dfc449202();
         story.male.visible = this._4b088e408d599553e18c9ff0;
         story.female.visible = !this._4b088e408d599553e18c9ff0;
         this._1374d9ea563f44f5aedd5b29();
      }
      
      private function _d636dbbfd0dce54ddc35803a(param1:* = null) : void
      {
         story.gotoAndStop(-2016896419 ^ -2094967207 ^ 0x725F07F5 ^ 0x76B6CBF3);
         this._labelLetsStart = new _73899a4de8f83c8d2c26f545(story.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剄勻劾劫勔剝判劉勉剙刚劼剦劵剬剀切勘劬剓劸剼刍劐剦劃剢剡刯効初勾","勒劏劧剆勯剻剹剈勧剷労勻劊刯剽务")) as TextField);
         this._labelCanYou = new _73899a4de8f83c8d2c26f545(story.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ထႻႌ၂Ⴕဦၨႋၑ့Ⴍ႟ოႬ႗ჳნၬႊၚვ႔ၡჱႃစ","აႌრჇ၈Ⴎ჆მၹჿჽეၹჟဃႈ")) as TextField);
         this._labelLetsStart.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၽၲၢႽၗဉၲႌႏၦွ႐ဿჲဋႊႀ჎ႜႧჭჱ၉၆ဎႌ၅ဉჰၵ၌წ႕სჂ႕ႍჟჰ႗ႊლၬბုუႠၻဋჯ","ხႽ႖ႩနၚႀာბဉႿည჎ჳჱၦ"));
         this._labelCanYou.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛ႘ႀჅၞႮၹစိအရ၅တတုဩဝစ႗Ⴛးგႚ၎ჵႏဝჹ၍ျფ႗ၒჲႶႥ჈ნၢ႟ၜ႒Ⴝဵ","ဋჲჾခၻ႐လၗ၄წၩၠჲႼცჵ"));
         nextButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙ႍဨႨွဣ့္ညႷၳჍჅ႓ფცჃသ့჊ၐშლၣ႟ဘႱ႘Ⴥხ။ၹႽ၁ၹ႓Ⴞჾၺၯဏ၌","ჰႲႏႎრႯ႞ၬႵဪမၯႯၫე႕"));
         nextButton.handler = this._0569a0be31591bbaa6c18357;
         story.male.visible = this._4b088e408d599553e18c9ff0;
         story.female.visible = !this._4b088e408d599553e18c9ff0;
         this._774f3cb5de0bf4736c3897a0._0e1bc13a989d12a3776df86c();
         this._1374d9ea563f44f5aedd5b29();
      }
      
      private function _0569a0be31591bbaa6c18357(param1:* = null) : void
      {
         close();
         this._774f3cb5de0bf4736c3897a0._0e1bc13a989d12a3776df86c();
      }
      
      public function _1374d9ea563f44f5aedd5b29() : void
      {
         GameSwf.instance.managerTutorial.tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(this._dba09b43f7970944182b0aca,-2019300194 ^ -140373485 ^ 0x77D96C7F ^ 0x07D892F2);
      }
      
      private function _dba09b43f7970944182b0aca() : Point
      {
         var _loc1_:Point = new Point(nextButton.x + nextButton.width * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၼვႧႎჲဗ၀ნႲცၒၣုჳၔဴႼႎဏဟ၎ტႾჯ","ၕქჺဲႂ႞ჿၩဢၘ၏ႰႯ္ღဇ"),nextButton.y);
         _loc1_ = localToGlobal(_loc1_);
         return new Point(_loc1_.x,_loc1_.y - (-385541936 ^ 0x61D0EEBD ^ -497895861 ^ 0x6A87401A));
      }
   }
}


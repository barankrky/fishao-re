package com.ax3.fishao.view.dialogs.club.pages.recommended.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem._1c73633a6a4f4f6050258c2a;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   
   public class _31a2abd55fd632d239033569 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _74c5db98e3b00f82d1018b00:gViewClubsItemRecommended = new gViewClubsItemRecommended();
      
      private var _714539e61e4657f5c48408b4:FrameButtonWrapper;
      
      private var _0e1cfe76b7825e978125c663:_73899a4de8f83c8d2c26f545;
      
      private var _e95d4c9d6ad78541488a44c8:_73899a4de8f83c8d2c26f545;
      
      private var _7bb6dcea3bad5b723a19cc7e:_73899a4de8f83c8d2c26f545;
      
      private var _94954d7f6933ba8b6c8964ea:_04cce4e240ff9bea66c1b7f7;
      
      private var _86cc9cc536d20743a3384524:_1c73633a6a4f4f6050258c2a;
      
      public function _31a2abd55fd632d239033569(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._74c5db98e3b00f82d1018b00);
         this.init();
      }
      
      public function get buttonJoin() : FrameButtonWrapper
      {
         return this._714539e61e4657f5c48408b4;
      }
      
      public function get viewHitArea() : _04cce4e240ff9bea66c1b7f7
      {
         return this._94954d7f6933ba8b6c8964ea;
      }
      
      public function set name(param1:String) : void
      {
         this._0e1cfe76b7825e978125c663.text = param1;
      }
      
      public function set points(param1:int) : void
      {
         this._7bb6dcea3bad5b723a19cc7e.text = param1.toString();
      }
      
      public function _c0a6069f4ff1c2614a320633(param1:int, param2:int) : void
      {
         this._e95d4c9d6ad78541488a44c8.text = param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၂ၖၤဂစპႬၗႾဟ","ვႪ၏တႂစၿ႒რ჏ბႛႈჯႣ႞") + param2;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._86cc9cc536d20743a3384524.emblemID = param1;
      }
      
      private function init() : void
      {
         this._714539e61e4657f5c48408b4 = _092050566a3adcf2725382ab(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴙ၈჊ဆြဢჄႎႷၼႻၵ႗ဈအၙၯ႘Ⴑဝ၄მႁႪმဝႳႫ","ဉၻဈႎႺლ၂ငႧჹၥუႸႀႺႊ"));
         this._714539e61e4657f5c48408b4.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_BUTTON_JOIN);
         this._0e1cfe76b7825e978125c663 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴剜劂到劁券劏劉勶劖剿勀勉剻勔剝劶勋劲勲劏刧刧刧勥分","剨勹勈勚勚剽利刞刵剺剤刲勹劐劵劆"),null);
         this._e95d4c9d6ad78541488a44c8 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႞ဦႡဠჺ႗ძჴႬထၽ၃႗ႵჀ၊၆ိ၄ဳဈႏ၊၏ႍၵအဍჽღဗ၌","႗ဉၧၔ႙ႝ჎ုႉ႕႒ဃოႈေჄ"),null);
         this._7bb6dcea3bad5b723a19cc7e = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剳刐刹劘勫刣勎刂刢剺刱劷勫刊勅勅劁勋刍刈刮刕刲刞劐剝劥刴剢劔","劚劥勫剔勑势剑剗劾刬剚别剘刲刡勋"),null);
         this._94954d7f6933ba8b6c8964ea = new _04cce4e240ff9bea66c1b7f7(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揷揺挻揬挔挈捬揸掯挸援掚掊捏推揅掑探捃损掳挹掩挍挫捃揫挛捷掂","捖揍挪掁挄捞挽掅揞揫捒掴捡揠挏掲")));
         this._94954d7f6933ba8b6c8964ea._fc17178734ae7cc816dbcc2f(true);
         this._94954d7f6933ba8b6c8964ea.source.alpha = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ძၠဴ႙ძ჎ၹႷဂႊႥ႙ღၺႣႻၒ။႘ჸႽႧႷဳ","ႋႿ။ႶჽწჃႮာ჈ဋღၿပჰႃ");
         this._86cc9cc536d20743a3384524 = new _1c73633a6a4f4f6050258c2a(controller,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဃၬၞႴძၸႲၿဌ၅၀ၾဓეႧႳဩၜၡჃ჉ဵ႕ဍღ႗Ⴇၮ","ႁၻၣზဤွႻ္Ⴖဩဦკ့းစ၀")));
      }
   }
}


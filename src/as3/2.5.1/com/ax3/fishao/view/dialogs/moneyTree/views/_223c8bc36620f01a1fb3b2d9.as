package com.ax3.fishao.view.dialogs.moneyTree.views
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._5d4744298d281de23246856d;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _223c8bc36620f01a1fb3b2d9 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _d3564c6e3ce884168101ee55:DisplayObjectContainer;
      
      private var _bb9107b397a184320c260585:TextField;
      
      private var _e96504762532410aea056712:_5d4744298d281de23246856d;
      
      private var _2c03159813bee4588332ebd3:TextField;
      
      private var _afbb29fdeaa5a9b9d97d131f:_5d4744298d281de23246856d;
      
      public function _223c8bc36620f01a1fb3b2d9(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         this._d3564c6e3ce884168101ee55 = Debug.assertNotEqual(param2,null);
         super(param1,this._d3564c6e3ce884168101ee55);
         this.init();
      }
      
      public function set fishcoins(param1:uint) : void
      {
         this._bb9107b397a184320c260585.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_FISHCOINS_COUNT).replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,param1);
      }
      
      public function set percentFishcoinsMax(param1:uint) : void
      {
         this._e96504762532410aea056712.percent = param1;
      }
      
      public function set fishbucks(param1:uint) : void
      {
         this._2c03159813bee4588332ebd3.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_FISHBUCKS_COUNT).replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,param1);
      }
      
      public function set percentFishbucksMax(param1:uint) : void
      {
         this._afbb29fdeaa5a9b9d97d131f.percent = param1;
      }
      
      private function init() : void
      {
         var _loc1_:TextField = Debug.assertProperty(this._d3564c6e3ce884168101ee55,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劜刦刏劌劔刮剥剸剅勦勺剨劻勮剖勹剝加判剼剘剀勒刣劻劧勢剭劏刎动列剖刍剚勱","剞刐剖剔刃務勪剺动務勇刟剜勾刊剐"),TextField);
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_MONEY_TREE_LEVEL_INFO_FISHCOINS);
         this._bb9107b397a184320c260585 = Debug.assertProperty(this._d3564c6e3ce884168101ee55,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("მ႟ჁီၓტၻჺოဂეွჷႄၘႝဧဢთႹၮႆအ჆ဋၐေႛႪဦၥႥႤူၵჳჾჰႷနးၹဝზၶဖ","ზႿჯჺჁჁႾေၓႝႋဆဣရႚႆ"),TextField);
         this._e96504762532410aea056712 = new _5d4744298d281de23246856d(controller,Debug.assertProperty(this._d3564c6e3ce884168101ee55,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剢劂劽勊创剓劵劥勅勞别刴勯刳劏剃劭划势剑剿勭勅勲削勇则勩勼勝勈勵刖勘劒剣劻刟剄勂刏刺刾刺剱刁劭势刢劢","刺勛判劔刑剀剿剣勡劶剱剁勌剀剱勧")));
         var _loc2_:TextField = Debug.assertProperty(this._d3564c6e3ce884168101ee55,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勁刵剋勄剠刀剞勚刨剝劰劢分剚刑刜动剠劅劐刻切勲勞刢制劺剟剧勤刯剱刎势劬剹","力剐劾刳剰剌前勒加剬勾剢勅刍剓勚"),TextField);
         _loc2_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_MONEY_TREE_LEVEL_INFO_FISHBUCKS);
         this._2c03159813bee4588332ebd3 = Debug.assertProperty(this._d3564c6e3ce884168101ee55,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掷掬掑掏捲挟揹揥挡捭揦掦据掗捥掛挭握掍揍捫捍挅捶揠掾揱挿揁揦挖揚挅捇挅挽控推捸換捥捕掫揔掆掔","掄揖持捚掑掬挖掷掃掯揱揁掤控揙掾"),TextField);
         this._afbb29fdeaa5a9b9d97d131f = new _5d4744298d281de23246856d(controller,Debug.assertProperty(this._d3564c6e3ce884168101ee55,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揗揖捱捦握挬掵掗揔掯挸揭捗捺捷揉掜掞揭掽挌揓挫捘捰揞揤捌挭揹捈捱换掬捭掰捪捣掙掕揋挛捯揚揞捿掃掕掲挱","挝掷挻揰挙挊掵排捴捌挬揳捿掹掐损")));
      }
   }
}


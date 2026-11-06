package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._bb650418615bc8eb382e5586;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.fishao.view.wrappers.impl._8a201d27733cc0cf97a44b69;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class _6f069ac69f7c38540c42cdf8 extends _8071087ebe26c264282580d0
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var timeToCompleteLabel:TextField;
      
      public var timerLabel:TextField;
      
      public var currentSerieLabel:TextField;
      
      public var noSerieLabel:TextField;
      
      public var oneDaySerieLabel:TextField;
      
      public var twoDaySerieLabel:TextField;
      
      public var threeDaySerieLabel:TextField;
      
      public var quest_1:_8a201d27733cc0cf97a44b69;
      
      public var quest_2:_8a201d27733cc0cf97a44b69;
      
      public var quest_3:_8a201d27733cc0cf97a44b69;
      
      public var openPrizeButton:_bb650418615bc8eb382e5586;
      
      public var animation:MovieClip;
      
      public var progressLine:MovieClip;
      
      public var prizeIcon:MovieClip;
      
      public function _6f069ac69f7c38540c42cdf8()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揮掎捓掚揹捫揍挚挂掳挍挴揍捛捾揹捺揩捛揬掺捎揣按揆捫捒捇掼捶揦挅掘揽捇损掗掲挂捂损挺换揰掔揣捺掣","捳揟捹掀描挓挏掌挶挥捤挭捌揸捑挸");
         super(_loc1_);
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super._d998e9465b31be9894488c29(param1);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("効剧劲剽刔刌劏剀加劄創剔刴劏劀勆励劇刴剿剺剀勒券初刉剚刉剓剾切剓劗励剶劰勂勲判劤劈剩劔剕勡勇勜刯勏劉","剧刏劬勫劍勮剼劧剛列剨劖劮刄勡劲"));
         this.timeToCompleteLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫掇持揤掤揣掯挩捦掶掕掚挑揉捨捄挫掍挈捋指揖揧捘捠掣挮掙揝揦揋揫损掋揠換挣捶換掚挮掳挣掐挗揨捭捧捡掸措掿掖揼揽挑揋捍挿揝措挥捊按揻揷捝挚","掩揓捳捄掯揮捴挔控捄掁掐捪揇揼挰"));
         this.currentSerieLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刋分勊劖刲剭剋刔动劦勑剼勬剑功剟劌劅勥劢剣剠剙刽刅分劲刴動剼勈剏刹动刻剷剥劢刏刻励勉剥剸劔刦剑刳则勸力切劑剄劇剫刕勡別剏刴労勧刅","勣勎劚劰刍刽劵剒剏勚勭劦劐剥刢劸"));
         this.noSerieLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("გქစე၀ၹოჭჍၸဟါ჎႐ႜၼႷၽြၻဋႮႛჇ჈။სႏႆႰွს႘ဴၞქႝရႵုၤၜႽႇს၍ှႍၥ჎ူးთშ","ၘ၄ၞႼႋႸჵဂူႚဉၽႲႿဖლ"));
         this.oneDaySerieLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捆捌揾揽掽挶挤捞排挤挐挿掬掾掼捀揭排掠挙捏掃挔描捀揷掯按挆捅捹掀捺揇挎掣揢揕捠揤掽揯揱揞掫掾揗挠掔损揮揬揪捵揢捊挆挠揹挚掎捍","揻描掜挬挶掅揜揜掰揣揑挋掴捤捡捨"));
         this.twoDaySerieLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掄掖掷挥掗掓按掄揞揿掏捍揜揓揧揎掞挦掔挞揇捒掴挄据揂掠揌掺揮揦揪揸捤掷捍捰挷掬挰捂挀揨掫捺描挌捽捋捉捰掹挆揣掹插捩挋挎揅掀捙","掱捂掼掍掻捑挔挝揦捥挧援挦捔掜援"));
         this.threeDaySerieLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捞掺捝捦捑挑揜捻掞揑換捊掘揻挽揦揇捒挣掷掄掐捘揤掋捽揠捆掤捼掂捔挕掮挴掄捅挔推掷揮挥揨掰捕揚捁援捹挒挆挰掬捵捰捐挞捜掫挵捋揷捗挞捄掘","捐挅挖挳掼捚掕掗援掮掙捉掎挗捔挥"));
         this.openPrizeButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹剻剙刘勹副劫剙劸劁劼勫别劤劈务勈勑剔剬刿剶勎刴劳刺勭剀劽办剟剸勠勶剄功剋勲剐勶勷刻剛劒劚動勛劉劓劮剛勝勇副刟剩刊勈","勷则勧剮刨割剳勋剘劄刘剃前勆刡刭"));
         super._935ac2966ddad68dfc449202();
      }
   }
}


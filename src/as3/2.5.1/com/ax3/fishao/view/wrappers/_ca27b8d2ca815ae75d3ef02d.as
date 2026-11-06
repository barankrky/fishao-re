package com.ax3.fishao.view.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class _ca27b8d2ca815ae75d3ef02d extends EventDispatcher implements IAssetWrapper
   {
      
      public static const BREEDER_BUTTON_CLICK:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捨挎捀挋掔捉捐挒揲捀掷揠掌掾揁插握揸挨揶挰挺挅挻掟挲揈揥捒捯掄捂掴掍揉持揵掝揁掖控捜挗捓掬揄掻挚","捒捸掘掐揠揓揍掻揹挀掽揕挩指损揍");
      
      private var _95307e6620657c2e8d0816dd:MovieClip;
      
      private var _f00afab986c95297a672560d:TextField;
      
      private var _4adef1150668b3cf33b9cde2:TextField;
      
      private var _a7ee62c77925f869de0a6050:TextField;
      
      private var _ca9989e4a03193730b7c3205:TextField;
      
      private var _02be8133bcd6ce2c2b9536e5:TextField;
      
      private var _a315ed34901a1bc320bede65:TextField;
      
      private var _8210c09fafd8d4c9d24e1748:TextField;
      
      private var _17be86d7e5b2a77fc321934f:int;
      
      private var _1c39617b7649df4c4ab24eb7:int;
      
      private var buyButton:ConfirmFrameButtonWrapper;
      
      private var buyInstantButton:ConfirmFrameButtonWrapper;
      
      private var stars:MovieClip;
      
      private var _bfea3330dcaf2586e9b0ac28:MovieClip;
      
      private var _53f8d0c79e5195e199a5aec9:Rectangle;
      
      private var fish:_cff30366d510ea862540bfef;
      
      public function _ca27b8d2ca815ae75d3ef02d()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         this._95307e6620657c2e8d0816dd = param1 as MovieClip;
         this._f00afab986c95297a672560d = _loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挀掾捚挤握掐揰揬挣掯揽捋揉挥掎挏掇挬挖捽揫捤捞揦揓捿","揊揉捒揫掩揮揥控揓揤挫挻捵掠揼捔")) as TextField;
         this._4adef1150668b3cf33b9cde2 = _loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐刌刡劁勅勻劈刄勅刉劵剼劓剟则勮勚劙券刋勋剝动劭助剽剮前剷列勚劋勗勂刿删","剓剺劐勺剢剩勎劤劓勔励劕劕剷勢勊")) as TextField;
         this._a7ee62c77925f869de0a6050 = _loc2_.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჶဌဳဉဏၬဵდဉჁჿၒჯ၇ညႢ჎ႩၽფျჂ၀ၰႇ႟ၽႹႢყႉဨၡႥႽჾ","ႭဗဈၾგႅၟჁဠႭ჎ွ႔ႏၦႤ")) as TextField;
         this._ca9989e4a03193730b7c3205 = _loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挴挎掺揞挳揳挚挸掕指挹捊換捤挭挮捍揇揙揊掦捖掼掮挥捹","揥掑捁揼挟据挠揞掶挐探揂揪掜揪捜")) as TextField;
         this._02be8133bcd6ce2c2b9536e5 = _loc2_.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴭွဦუჴ၀ဒჟႩჍးႿ႗჏ႈဤიყ္ၙცၣၫზ၃ၐ჉ခဇၰႲၞ","ြცၱჴဟ၄კჶဗႤဇდჅဘၒႌ")) as TextField;
         this._a315ed34901a1bc320bede65 = _loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝刅劌剧刉劸加力剿劀劻利勠劕刌劆劯劜助剙勼動勠勑勣劼勊劄刘刿剎办券到","剥勒刬剎劺劆創剮劆劫勦创剗勉劾勹")) as TextField;
         this._8210c09fafd8d4c9d24e1748 = _loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨副剻勎刖勃剘刺刽劕劂劧努勾勗剛勪勨勈功刈劀勗勬剈動勨前勿剈刑劗劣勠","劣勊劺務劎勹劲勘剕刘勒勍劧劈刭劰")) as TextField;
         this._4adef1150668b3cf33b9cde2.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჯხဪჹႾ၁ჩႣဲ႞Ⴥ႙ဃ႖၊ၘဩႷၟီၻႄႥ႑၍Ⴅ၃ჾၨၼးოဝတ့჉უ჆၊ၾဂფၲ႞ဌ႔ჟეၞၦႱါူႼႶႅ႞Ⴌၚ႘ၫႿဇჩဲႣၦჃၝေၚၟပთမჄჳၓ","ဗ၉ၿႄငကဪ႑ნႫყလပჰၾၭ"));
         this._ca9989e4a03193730b7c3205.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၮცთ၄႟ဵႴႷြကိၛ၉ნႄၱ၄ჽဨႌმႢჵဃ။აိ႔႐Ⴒေှ჆ကၛწႎဗဤၑၾၬၘၼ၅Ⴧၧၺၱ჈ჿჭၵၶိႱ၊ႂၸကၕၱჂၶჭცိၔ","ၯိၻာႾဃჁၦဒ႐჈႗၆ႊၟႨ"));
         this._02be8133bcd6ce2c2b9536e5.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剩勥勐剼剕刵劋劄刢勉勔剠勭刓剐勪剄刵剮削剠劇到劙劁剤劷刊剋劧勀劓刱劲列勯則勥判剂勇劘刐剶制助剢剐劙剦剽劦勺劘勒剄势剅刷剛剾勒剂剒勚募劢剬刀刕剞勻刿到","删劵劄劃劗刱勅刦劦勉剽劷劈劥券勰"));
         this._8210c09fafd8d4c9d24e1748.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捰揸掆揚掝捎捻捲挢挴揱捧揾授捧挸捇探掂捡掚捅挙掫捬掗掐捈揕揓掿捀揵揃捆挚掐揃揿掋掛掤揍捥挵捌揍挼损持捄挋捡挩捒掆採捲挗掰掵掞控掓挧捘挘揗挿捡捠捪捠挘掽揳","掦挰掳挓捸挹捀挜捧揠掝揽掚挜捠挻"));
         this.stars = _loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("加劺剓勪剘劫刬勝刼刾勱剡劫劕勂刞剼剽","劙刨勍剈劉劈劢劆剖刜剺刷剪勁勎刕")) as MovieClip;
         this.buyButton = new ConfirmFrameButtonWrapper();
         this.buyButton.process(_loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵捂挹掵掑掱揚揩掭挅挌挏持掹挙授挻捛挶揬挸捐揙援揌振","掴捬捤挩揯挻掲掭捞挙掌据掟损捍挫")));
         this.buyButton.handler = this._375291679337f06dff0b7dfb;
         this.buyInstantButton = new ConfirmFrameButtonWrapper();
         this.buyInstantButton.process(_loc2_.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴓ်႞ႹაႺသ၅ႠၦႈႋჍးဆჟჼာჱနၙႳ႙ဝႸၫჍ၊ၜၣტႲႂ့ဪနၑჴ၊ႚ","Ⴄဵဪၬ჊ြၥႨၟဠჽ်ძ႖ჿ႘")));
         this.buyInstantButton.handler = this._2c0acfd3e00f09baf91c135c;
         var _loc3_:MovieClip = _loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("努勢勜勜剜勉剚务剎劋劉剢刵刦劍剁刃劑","劁劰劒刄劮勜剺剭勔勜勘剞劘刂劒剌")) as MovieClip;
         this._bfea3330dcaf2586e9b0ac28 = new MovieClip();
         this._bfea3330dcaf2586e9b0ac28.x = _loc3_.x;
         this._bfea3330dcaf2586e9b0ac28.y = _loc3_.y;
         this._53f8d0c79e5195e199a5aec9 = new Rectangle();
         this._53f8d0c79e5195e199a5aec9.width = int(_loc3_.width);
         this._53f8d0c79e5195e199a5aec9.height = int(_loc3_.height);
         ShiftWrapper.shiftDisplayObject(_loc3_,this._bfea3330dcaf2586e9b0ac28);
      }
      
      public function _fb2737826eacd0c722842d87(param1:_cff30366d510ea862540bfef) : void
      {
         this.fish = param1;
         this._f00afab986c95297a672560d.text = param1.displayName;
         this._a7ee62c77925f869de0a6050.text = param1.breedingDuration.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑Ⴅၣჳწ၊၈ဠဗဳ","႖၉ဣ႔ჽႋჍဓაေၫႠၟဝၗჱ") + _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჇႶါ၄ჯေჍზညွ၅჈გჁ္႗ხဨႋၝჾყქჼေეႯტီჾსိၩშ႘სခ၂ჱူპဉၴနၠဪႨႬႻეၣၲူ႙ဩყ၆ჭယၭ","စჸႱာმႈႛၡ႓ႁჵჂႡအးဲ"));
         this._a315ed34901a1bc320bede65.text = Math.round(param1.breedingSuccessRateCurrent * (0x13BB870C ^ 0x244D570D ^ -172886151 ^ -1035524324)).toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("務刚刑勭劕办剮功劏劶","剧劃劸勵勋劶剏劾划剅劓剻助勲削勑");
         this._17be86d7e5b2a77fc321934f = param1.breedingCost;
         this.buyButton.label = this._17be86d7e5b2a77fc321934f.toString();
         this._1c39617b7649df4c4ab24eb7 = Math.round((-1638907096 ^ 0x09B3DE79 ^ 0x077785C4 ^ -1869342570) * (param1.breedingCost / param1.breedingSuccessRate) / (0x0175A1ED ^ -1746483559 ^ 0x085ACB8F ^ -1630950229));
         this.buyInstantButton.label = this._1c39617b7649df4c4ab24eb7.toString();
         this.stars.gotoAndStop(param1.rating + (0x58053F67 ^ 0x4363C2AE ^ 0x67FFA652 ^ 0x7C995B9A));
         removeAllChildren(this._bfea3330dcaf2586e9b0ac28);
         var _loc2_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28(null);
         _loc2_.width = this._53f8d0c79e5195e199a5aec9.width;
         _loc2_.height = this._53f8d0c79e5195e199a5aec9.height;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,_3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挄捩揈捠捁捑挮掽揦揷捭振挻揩揝挘挧掭推揵揔排掭挦捘掍捵援捭掲捼捪","捤揫挸掀挸掼掺挵掔揇揸揑揢挬揙掃") + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勣劬劽勠勢勰剩劬勏剣勶剌勚勷","刞剿劔劕勝勗勘効勆功剼刼势剾勞剡") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("შၨჩဎၾ၍ႠႢဢჰფညჩၗ","Ⴉႂၱვဧၘჶბု၅ိဳဵჶအဖ") + param1.id));
         _loc2_.smoothing = true;
         this._bfea3330dcaf2586e9b0ac28.addChild(_loc2_);
      }
      
      public function _9d409e21e8b91beb0731a0c9() : void
      {
         this.buyButton.enable();
      }
      
      public function _4c6751b902f3a2d5fa963f36() : void
      {
         this.buyButton.disable();
      }
      
      private function _375291679337f06dff0b7dfb(param1:MouseEvent) : void
      {
         var _loc2_:MouseEvent = null;
         if(this._17be86d7e5b2a77fc321934f <= app.user.fishbucks)
         {
            _loc2_ = new MouseEvent(BREEDER_BUTTON_CLICK);
            _loc2_.localX = this.fish.id;
            _loc2_.localY = -1835006774 ^ 0x3180B369 ^ -26891356 ^ 0x5D451C07;
            dispatchEvent(_loc2_);
         }
         else
         {
            GameSwf.instance._cb81036d0354ae254b0556b1();
         }
      }
      
      private function _2c0acfd3e00f09baf91c135c(param1:MouseEvent) : void
      {
         var _loc2_:MouseEvent = null;
         if(this._1c39617b7649df4c4ab24eb7 <= app.user.fishcoins)
         {
            _loc2_ = new MouseEvent(BREEDER_BUTTON_CLICK);
            _loc2_.localX = this.fish.id;
            _loc2_.localY = -424681010 ^ 0x026DBC4C ^ -707484160 ^ 0x3116FB83;
            dispatchEvent(_loc2_);
         }
         else
         {
            GameSwf.instance._e6f0a7b005cacf7751286e97();
         }
      }
      
      public function hide() : void
      {
         this._95307e6620657c2e8d0816dd.visible = false;
      }
      
      public function show() : void
      {
         this._95307e6620657c2e8d0816dd.visible = true;
      }
   }
}


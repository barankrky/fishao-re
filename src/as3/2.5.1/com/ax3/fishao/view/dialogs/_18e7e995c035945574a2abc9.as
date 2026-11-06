package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.dialog._d248fcdc0f7611518f3784e3;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.display.wrappers.impl._ecf75a3abc52f12c2849d1e0;
   import com.ax3.display.wrappers.impl._f5a1543ec49d3249ecbd6b8d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _18e7e995c035945574a2abc9 extends _8071087ebe26c264282580d0
   {
      
      public static const STATE_NEW_REPORT:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("动劐劍勃勪劅判刦勎劷勉勾刬加勶勃加勝制剃勈前勯刏刾剘勣劃刹剐劋劊划刘劫勇劌劫劁勼","勣劗劋刳勅劣前前勯加勍劫劼勌勖劖");
      
      public static const STATE_VIEW_REPORT:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙挵掻挻挼掶挐捷捖揫捂揍据捃挵掿掔掵换揰挈掻揄挑捛揌揺捀捴挛捽挩捄挰揋挎按掯掇揥挦据","挃措捄捷挼挷揉揨掭捗揓掟揅掂挝揷");
      
      private var _7a1787414a923c4569d293c9:String = "new_report_state";
      
      public var closeButton:FishaoButtonWrapper;
      
      public var reporterPanel:_ecf75a3abc52f12c2849d1e0;
      
      public var abuserPanel:_ecf75a3abc52f12c2849d1e0;
      
      public var descriptionLabel:_1408d94400cd9851158c4009;
      
      public var directBanDesc:_1408d94400cd9851158c4009;
      
      public var abuseThemeLabel:TextField;
      
      public var lastChatMessagesLabel:TextField;
      
      public var cancelButton:FrameButtonWrapper;
      
      public var processButton:FrameButtonWrapper;
      
      public var scrollText:_f5a1543ec49d3249ecbd6b8d;
      
      public var scrollTextBg:MovieClip;
      
      private var _42224371ad7895bfac5a07f5:String;
      
      public var lastChatMessagesList:_f5a1543ec49d3249ecbd6b8d;
      
      private var _45f0c6fb39e8336a59637544:String;
      
      public function _18e7e995c035945574a2abc9()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၙၪჾၘဓၡპၮႬႉგ႙၇႐ၗဘჲ჎ႢဝၪႈႬ၇჻ჿ႔Ⴌჹ်ေၢიჂႫ္ၒာါၫရဋၾဘ၉ီაၼဆယႱწႀွႃႉေႌჁჸငႤ","უႇჃჃ၁ლხზჷ႒ၘჍဵნှთ");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.closeButton.handler = this._c0f5ba06a6b7a005970c169c;
         this.cancelButton.handler = this._c0f5ba06a6b7a005970c169c;
         this.reporterPanel.title = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫揌捋掀揓揻掽捎掆控揰捺插捩掳揵捑挶捙揂掚掴挒揕捜接捐挒掮挟揰捂揁揓","揽揚握揥揿揜捪挅捊揜揜捣揅捃揧揲"));
         this.reporterPanel.username = "";
         this.abuserPanel.title = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဦၧႦၜၪჄჶႄၻၷႡ္წუၑၑဥჿ၅၀ႮႶႯ၎Ⴤႜგႈ჌ჺ","ၑ჉ၙ၃ს჊ဳუီ၁ႝႉუၚဈჹ"));
         this.abuserPanel.username = "";
         this.cancelButton.label = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍势剖刁勅勅初剼削勣剸勡剅刏删删列劯剳剫勋勳剦刀刑動刪刦勰刞剅刑","勰劬劤剆剺勹刬勍劬勸分刕刪勞劄剓"));
         this.processButton.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဪႃც၅Ⴘ႕ၮ၇ၯာၬၼსဿှၪႳ႔ႨႡၞိၝჺჱჍၩႎჶၦၝၷမწ","Ⴌႍၻၿ჏ჼႆုရၓჃံံႪ႘Ⴎ"));
         this.abuseThemeLabel.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勊劖勀刢勱勐刻劝勑剐勘刧剧剉勧勇勀刾劗劬刐割劉劥勢勁剔剉劰刃勈剜刿刞勧劏","劆刊刈功劰務刀判勹劲勥剓勣刿剭剾");
         this.lastChatMessagesLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剢劢勾労勻动剤创刓劢初劎剦刎勅劙刔劼动勒劂刻勗勰刃勦刞勌勾勓刅劥勔刮剷剰励劣剑劮剌劓勱励刕刞剜勴剤刿刣勥勺勦刚劳剋劯勤剏勧剱","勴勘劺勵剋剅努剒勣劇剢勳割剔刈删"));
         this.descriptionLabel.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刵剔劸劆努劾剕刔劦刱劑剴勜勺劬剼刽劭剁剂勀勅别剳刌功剦劽刔劺勆刀劁劅劗勝刲則劤劉","剀刿劦劧勔别剄劝剁刏力刣删劳剣劈");
         this.directBanDesc.mouseEnabled = false;
         super._935ac2966ddad68dfc449202();
         this.update();
      }
      
      protected function update() : void
      {
         this.reportState = this._7a1787414a923c4569d293c9;
         this.descriptionText = this._42224371ad7895bfac5a07f5;
         this.chatMessagesText = this._45f0c6fb39e8336a59637544;
      }
      
      private function _c0f5ba06a6b7a005970c169c(param1:MouseEvent) : void
      {
         close();
      }
      
      public function set reportState(param1:String) : void
      {
         var _loc2_:int = -1696072373 ^ 0x4E5F437C ^ 0x03F8AD40 ^ 0x52270E64;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x34754454 ^ -1616882986 ^ -213142495 ^ -570835024))
            {
               case 0:
                  this._7a1787414a923c4569d293c9 = param1;
                  if(_state == _d248fcdc0f7611518f3784e3.READY)
                  {
                     _loc2_ = 0x265882C9 ^ -583738121 ^ -1939544518 ^ -227564267;
                  }
                  else
                  {
                     _loc2_ = 0x362698E7 ^ 0x6AF5267C ^ 0x6091108D ^ -1188711676;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  if(this._7a1787414a923c4569d293c9 == STATE_NEW_REPORT)
                  {
                     _loc2_ = -726739863 ^ -1090911113 ^ 0x48A1ED1E ^ -1483595753;
                  }
                  else
                  {
                     _loc2_ = -203012011 ^ 0x05814077 ^ -1671672460 ^ -279160762;
                  }
                  break;
               case 3:
                  this.reporterPanel.title = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捎揸捱捴接掫挄授捄换掱掤掱掣挨揘揝揟掩损掀揂挌捽挜挹挦探掖掙掳掤描揓掚捊揃揆","捻掉插掩挸揬捪揇捚捎掼掭揶损掐掳"));
                  this.descriptionLabel.visible = true;
                  this.abuserPanel.visible = false;
                  _loc2_ = -1743391674 ^ -1542695503 ^ 0x300A4208 ^ -1988821267;
                  break;
               case 4:
                  this.reporterPanel.title = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔剮列动勸劔劂勨劎勑勇劤勑剰刎劦剦剥刌前劀勡刹剗刑劌刜勻刓動副劶刞勘","切劻勰刦剌劵刈勀划勸刳刐剜刎勺勇"));
                  this.descriptionLabel.visible = false;
                  this.abuserPanel.visible = true;
                  _loc2_ = -586129401 ^ -1946998985 ^ 0x33E34AC8 ^ -530116374;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set descriptionText(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._42224371ad7895bfac5a07f5 = param1;
         this._6ce351cd36e57400467c304f();
      }
      
      public function set chatMessagesText(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._45f0c6fb39e8336a59637544 = param1;
         this._8207f5ee0817f9571f3bdd93();
      }
      
      private function _6ce351cd36e57400467c304f() : void
      {
         var _loc1_:int = -76007870 ^ -61727353 ^ -1401971057 ^ -651770095;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x07DFA59F ^ -405374515 ^ 0x646A91B7 ^ -167755844))
            {
               case 0:
                  return;
               case 1:
                  this.scrollText.text = this._42224371ad7895bfac5a07f5;
                  _loc1_ = 0x18124CA5 ^ -1324692732 ^ 0x28963F59 ^ -202519903;
                  break;
               case 2:
                  if(_state == _d248fcdc0f7611518f3784e3.READY)
                  {
                     _loc1_ = 0x1B4D2867 ^ -1869051548 ^ -2077171145 ^ 0x7D86316C;
                  }
                  else
                  {
                     _loc1_ = 0x67D8B029 ^ 0x65FF46A1 ^ 0x6F78152D ^ 0x1F3C91FC;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8207f5ee0817f9571f3bdd93() : void
      {
         var _loc1_:int = 0x5EA4CAA8 ^ 0x49A48A46 ^ -1547484678 ^ 0x7C37AAEC;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3C0F992D ^ 0x1B08B950 ^ -405681506 ^ 0x0822411B))
            {
               case 0:
                  if(_state == _d248fcdc0f7611518f3784e3.READY)
                  {
                     _loc1_ = 0x38BC434D ^ -2134847158 ^ 0x5D9DF397 ^ 0x2D15CA6A;
                  }
                  else
                  {
                     _loc1_ = 0x30C6A59F ^ -1634770346 ^ 0x059F4D50 ^ 0x63222160;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.lastChatMessagesList.htmlText = this._45f0c6fb39e8336a59637544;
                  _loc1_ = 0x3292CC12 ^ 0x6B11B436 ^ -86254565 ^ 0x6BAC0FC6;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


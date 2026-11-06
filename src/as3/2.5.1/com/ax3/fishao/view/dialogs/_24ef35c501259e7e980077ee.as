package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.view.buttons._81ff3e1c8bfb9de3893ca089;
   import com.ax3.fishao.view.wrappers.impl._1bc1c7dc5adf2f2857eec7dd;
   import com.ax3.fishao.view.wrappers.impl._416fb27b36f9690d05dd108a;
   import com.ax3.fishao.view.wrappers.impl._66ac4947430ad864eebdcf9d;
   import com.ax3.fishao.view.wrappers.impl._673d599f29b98bd046581e54;
   import com.ax3.fishao.view.wrappers.impl._883d6ea9b965375a3296b826;
   import com.ax3.fishao.view.wrappers.impl._8964e753fb9dbef2411af0bf;
   import com.ax3.fishao.view.wrappers.impl._8f5be6bb2d46a58b428401e8;
   import com.ax3.fishao.view.wrappers.impl._90153a6362ca40011f20bcff;
   import com.ax3.fishao.view.wrappers.impl._d0a8af7675ce093102e12974;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _24ef35c501259e7e980077ee extends _8071087ebe26c264282580d0
   {
      
      protected var _fishListButton:_b6959442d774100015b69ffa;
      
      private var _c6d1c705af2df32b60d0b2f6:DisplayObject;
      
      protected var _badge:_b6959442d774100015b69ffa;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var title:_1bc1c7dc5adf2f2857eec7dd;
      
      public var fishListVScroll:_8964e753fb9dbef2411af0bf;
      
      public var fishDexVScroll:_8964e753fb9dbef2411af0bf;
      
      public var notepadSliderVScroll:_8964e753fb9dbef2411af0bf;
      
      protected var fishListContainer:DisplayObjectContainer;
      
      protected var fishInfoContainer:DisplayObjectContainer;
      
      public var listSet:_8f5be6bb2d46a58b428401e8;
      
      public var main:_883d6ea9b965375a3296b826;
      
      public var notCaught:TextField;
      
      public var viewCatchInfoButton:_81ff3e1c8bfb9de3893ca089;
      
      public var viewFishBoard:_66ac4947430ad864eebdcf9d;
      
      public var search:_673d599f29b98bd046581e54;
      
      public var notepadTextField:TextField;
      
      public var stars:_90153a6362ca40011f20bcff;
      
      private var _4b39fbfe4c38ea1f92754ea1:String;
      
      protected var _fishId:int;
      
      public function _24ef35c501259e7e980077ee()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剾努剢劌勔劇剞刭劚剨勎勲劰剃剉刽剩创剤则刂剂勃刜剆勱劲劑刹剒剦剼刔劚剨劔剈勬利刍剰勫","剅勣割勬刜劍劤劎刨勾努剒利勶勁劮");
         super(_loc1_);
      }
      
      protected function _eb05edb7ceaa3fc9af5c12f8(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this.closeBtn.handler = this._eb05edb7ceaa3fc9af5c12f8;
         this._fishListButton = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_d0a8af7675ce093102e12974);
         this._fishListButton.process(this._c6d1c705af2df32b60d0b2f6);
         this._badge = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_416fb27b36f9690d05dd108a);
         this._badge.process(this.main.badge);
         this.notepadTextField.addEventListener(FocusEvent.FOCUS_OUT,this._ed522dcffe1c7227e2e774b9);
         this.notepadTextField.addEventListener(FocusEvent.FOCUS_IN,this._9c44a9a2bd747b9c38a3d5b5);
      }
      
      private function _9c44a9a2bd747b9c38a3d5b5(param1:FocusEvent) : void
      {
         this._4b39fbfe4c38ea1f92754ea1 = this.notepadTextField.text;
      }
      
      private function _ed522dcffe1c7227e2e774b9(param1:FocusEvent) : void
      {
         var _loc2_:int = -402630924 ^ -815125214 ^ -2018163557 ^ -96220555;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x22F69365 ^ -457238898 ^ -1197639957 ^ 0x24480638))
            {
               case 0:
                  if(this._4b39fbfe4c38ea1f92754ea1 != this.notepadTextField.text)
                  {
                     _loc2_ = 0x39D2EF74 ^ -2004279395 ^ 0x119EE6DB ^ -94772469;
                  }
                  else
                  {
                     _loc2_ = 0x1E8D4D9D ^ -466263896 ^ -795489331 ^ 0x70B113C2;
                  }
                  break;
               case 1:
                  GameSwf.instance.managerFishes._ca313b4c52206bd3dd4904ca(this._fishId,this.notepadTextField.text);
                  _dfa25706e58a240c1e33e5c6.charExtension._83f8817b874e3d4918d3a1a2(this._fishId,this.notepadTextField.text);
                  _loc2_ = -1815807302 ^ -368730172 ^ 0x328DB7C3 ^ 0x11D02787;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         super._d998e9465b31be9894488c29(param1);
         this._c6d1c705af2df32b60d0b2f6 = DisplayObjectContainer(DisplayObjectContainer(param1.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剠剝劐剪刪勬劏劼制勨剨刾剸勒則劆劑刨劣分剼削勂刴刀刀勜勸利募刧勖劌勖刨劅勈刪劕勯劃勲","剏剢剧勗勌刊劤勁勬勐勇劬剹剫刟劔"))).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掊掙揹捔捛揅捤挢挮挿揶挮掂挣挽捉揍揠揣掘揈挙","挸掓掣捷掄挅捴挭措揜挩掰掝捛掊揪"))).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴄဒႇჴမါဩစ၎ဉဠტဓႴဵၘလႸ၇Ⴇ႟န჏ၻႅႚႅ႕ၾ჏ლၡၒჀ၍ဗ","ီႆႮၿၒ႟ြ႟ႌნძဳှၓ၎჻"));
         this.fishListContainer = DisplayObjectContainer(param1.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劋劔刚刂则刷劣刎劳剷刖勛刏勬勪剶勊劈勍剾劺刘剮勉劉刐劭勑剽剚劗勆募刊剚勥劍勁刉劃刐勽","务劰助削刲勻刱刔劙劧刡劀剁刿刢勶")));
         this.fishInfoContainer = DisplayObjectContainer(DisplayObjectContainer(param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဠ႑გ႞჏ၚႸႨჲယၢွაღ჋ჳ","ფჼ၇ဩွჰၺွႅၘၼႲ႐ဘႂဍ"))).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捺揓掌挭握掭挹掉捃捳捆捗掬捠揬挷捂捒掂揞挫揖挱捆掄揬捝捶揥描捸掬指挋挹揂捁挚掏持捉採","描揶揆揖捽捴挆掑捑捦挣挦掬捨掖挟")));
      }
      
      override public function get height() : Number
      {
         return -200758401 ^ 0x47856940 ^ 0x41B5ED7D ^ -231199468;
      }
   }
}


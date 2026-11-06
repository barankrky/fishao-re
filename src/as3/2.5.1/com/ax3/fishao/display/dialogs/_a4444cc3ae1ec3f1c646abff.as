package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.UsernameSelectWin;
   import com.ax3.display.dialog._1078dc5631cc5976a13385a5;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._74c7643abb27bad6bb41015d;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _a4444cc3ae1ec3f1c646abff extends _1078dc5631cc5976a13385a5
   {
      
      private const _78525b02a28d8bf0c9033464:Event = new Event(Event.COMPLETE);
      
      public var submitButton:FrameButtonWrapper;
      
      public var title:TextField;
      
      public var description:TextField;
      
      private var _asset:UsernameSelectWin = new UsernameSelectWin();
      
      private var _0c58e508d8e698aaaf66a6ea:int = 0;
      
      private var _67e13a5c61a9e503fcdc504e:_74c7643abb27bad6bb41015d = new _74c7643abb27bad6bb41015d();
      
      private var _2617c7196e2e05261d6dffe7:String = "";
      
      public function _a4444cc3ae1ec3f1c646abff()
      {
         super();
         _app = app;
         addChild(this._asset);
         UtilsTextField.setBoldFont(this._asset.valTitle3);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.submitButton.handler = this._15f6bcf2b6fb6cc4838ce9d8;
         this.submitButton.label = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揼捹捵握揺挍挶挺描捌揵捋捒排探提挱揖掮揷掚揲揾掻","捃提掇揑揫揑挏掣揉挊挑掚插捔掗挞"));
         this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揺捸揤揇揚揰捆掗揩挀捔捙挳挕挧揓揸挂揕捧揙掠掴揘挵捅挈指捑揀掱援掋挨揟挑掜控捃捨掸揊挷揬捆振揆揪挄揷捗捣挼提挍揋","控掔揉捓掱掹掄捵挝掘揫捄振揚捶捭"));
         var _loc1_:Vector.<MovieClip> = new Vector.<MovieClip>();
         _loc1_.push(this._asset.valCheck0);
         _loc1_.push(this._asset.valCheck1);
         _loc1_.push(this._asset.valCheck2);
         _loc1_.push(this._asset.valCheck3);
         var _loc2_:Vector.<TextField> = new Vector.<TextField>();
         _loc2_.push(this._asset.valTitle0);
         _loc2_.push(this._asset.valTitle1);
         _loc2_.push(this._asset.valTitle2);
         _loc2_.push(this._asset.valTitle3);
         this._67e13a5c61a9e503fcdc504e._ac7114ce339c765b824e462f(_loc1_,_loc2_);
         this._67e13a5c61a9e503fcdc504e.selected = -1969100368 ^ 0x7199F505 ^ -715943130 ^ 0x2E6B8F93;
         this._asset.valTitle3.addEventListener(FocusEvent.FOCUS_IN,this._585ef828560a371e779d5eef);
         this._asset.valTitle3.addEventListener(FocusEvent.FOCUS_OUT,this._58396e9bdb9f496cc626f5d2);
         _canClosedByEsc = false;
      }
      
      private function _58396e9bdb9f496cc626f5d2(param1:FocusEvent) : void
      {
         var _loc2_:int = -1916958649 ^ 0x6D771843 ^ 0x70C58063 ^ 0x5B1BC0DD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-750115629 ^ -210572946 ^ -1048453945 ^ 0x2AADC1C1))
            {
               case 0:
                  this._asset.valTitle3.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勹剉勈剰勝刄剦刉刍刱劔勦勰刯刉勶到勰创劀劎剈剭刯剋剃劮勊劑勫刽加剤剨刘劢刏到劰勯劍勅办刹动勞动刐勰动刃勏勫剣刟勔","剈劌劧剏勢勿劍勻勸劷勬刓勲勖励勦"));
                  _loc2_ = -1503469614 ^ -1457079446 ^ -1689014836 ^ 0x5F0319CD;
                  break;
               case 1:
                  if(this._asset.valTitle3.text == "")
                  {
                     _loc2_ = -524292417 ^ 0x1E47FDC3 ^ 0x5A56E97B ^ 0x6FBA2ABC;
                  }
                  else
                  {
                     _loc2_ = -1653785045 ^ 0x57F90BAE ^ 0x3990756C ^ 0x38109050;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _585ef828560a371e779d5eef(param1:FocusEvent) : void
      {
         var _loc2_:int = 0x4AE86670 ^ -131183467 ^ -488829918 ^ -1988405643;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-380752542 ^ -314821803 ^ 0x4160F58F ^ -1670210805))
            {
               case 0:
                  this._asset.valTitle3.text = "";
                  _loc2_ = -1986008390 ^ 0x782C2420 ^ -1033701764 ^ -357480361;
                  break;
               case 1:
                  if(this._asset.valTitle3.text == _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剽剴刜列勓剮勃勊劥劮刨剀剔剥剬勶刼剈列劙剖刐勄劒努剑刎剀劗剺剔劘勀刭势劥刍剹刦劥刪剬勾刻努勔剈利刀劏劲勠勸割刬勁","刽剻剹刻劬勞勳剔刬勄勝剓切勖剖剗")))
                  {
                     _loc2_ = 0x56FE9B41 ^ 0x7F26D56D ^ -591263910 ^ 0x2C7A39C5;
                  }
                  else
                  {
                     _loc2_ = 0x78F662EE ^ -1900130076 ^ 0xE939E4 ^ 0x2FC17B5F;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set list(param1:Array) : void
      {
         var _loc2_:int = 0x7043E4A9 ^ 0x771F300E ^ -1708318562 ^ -1653476295;
         var _loc3_:int = -897316585 ^ -112725056 ^ -1820002261 ^ 0x0D93952A;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x096E18B1 ^ -1135056870 ^ 0x7FFBC7F8 ^ 0x67192085))
            {
               case 0:
                  _loc2_ = -866587183 ^ 0x3A6160C5 ^ -336908748 ^ 0x1DD2A320;
                  _loc3_ = -35981870 ^ 0x45902547 ^ 0x33C7FB34 ^ 0x2659BC76;
                  break;
               case 1:
                  if(_loc2_ >= param1.length)
                  {
                     _loc3_ = -1751768076 ^ -1466411432 ^ 0x5C142EB6 ^ -825307954;
                  }
                  else
                  {
                     _loc3_ = -534511309 ^ 0x58A4E90D ^ -568902013 ^ -884784792;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  TextField(this._asset[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揯掜揈挝挝掏捦掞掻捥掫挳揖挩挰揀挐捗持掤捁揳捐捚","捁揯揎掔掔挲掺揱挱揮掑描掏揷捲掷") + _loc2_]).text = param1[_loc2_];
                  TextField(this._asset[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劙刉剘劝劭励办刁勴剀剠勝剛剥劜剕劬勴刬劖务剖力勝","劜刵勁刬劙剠勒刿劆勽副助勈募势加") + _loc2_]).width = TextField(this._asset[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ွცჯဨာႋ၊ဢထႅႮရၲჱႹႮၥံၻႈအဂნသ","ჽ႔ၬႄၵლးဠჅႊႩႽၚႌაၔ") + _loc2_]).textWidth + (0x6A5EB8E4 ^ 0x791ABCFC ^ -250169474 ^ -497896605);
                  _loc2_++;
                  _loc3_ = -1828976445 ^ 0x2BAA7080 ^ -1473772674 ^ -1129648918;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function show() : void
      {
         super.show();
         this._2617c7196e2e05261d6dffe7 = "";
         this._asset.valTitle3.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅揩挻揻捩挢掛掵掖捴掾掖握捷握掑捏捲換掮措挣挛掽推授捧掺指揢损揓接挚挀掭探挪捵挿挼挃揤挅揧挙挝揋揪挶捣接捪揘挓揜","掩授掂插掿揀挶捌捧捳捼挵挺揀揆掚"));
      }
      
      override public function _ec9e8fded1f21e9a06d314c7() : void
      {
         _app.dialogManager.showPopup(this);
      }
      
      private function _15f6bcf2b6fb6cc4838ce9d8(param1:MouseEvent) : void
      {
         var _loc2_:int = -1219266304 ^ -1741457532 ^ 0x126F6ABC ^ 0x3D0F6438;
         var _loc3_:int = 0x207CD49B ^ 0x28AC6A03 ^ 0x1A141E71 ^ -9926784;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x70BD5497 ^ -1451012977 ^ -877627007 ^ -14530832))
            {
               case 0:
                  _loc2_ = this._67e13a5c61a9e503fcdc504e.selected;
                  if(_loc2_ != (0x648AB282 ^ 0x7F608636 ^ -388219347 ^ 0x0CC9F566))
                  {
                     _loc3_ = -1278012609 ^ 0x765ADFCB ^ -241451273 ^ -641837720;
                  }
                  else
                  {
                     _loc3_ = -903048821 ^ -804011218 ^ -2018295251 ^ 0x702037E0;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._2617c7196e2e05261d6dffe7 = TextField(this._asset[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚掙挚探捎揦挳挸掇捌換挵掄握挏挲掘挠挃挣挲捂揝揓","捿揺捽掂揀捇推掊揹掔捠挑掴挠揸揉") + _loc2_]).text;
                  dispatchEvent(this._78525b02a28d8bf0c9033464);
                  close();
                  _loc3_ = 0x3D650FDF ^ 0x63CE0FF5 ^ -2004386963 ^ 0x3B805C2F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get value() : String
      {
         return this._2617c7196e2e05261d6dffe7;
      }
   }
}


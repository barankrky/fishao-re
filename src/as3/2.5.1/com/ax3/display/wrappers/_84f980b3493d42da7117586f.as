package com.ax3.display.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.core.App;
   import com.ax3.display.wrappers.impl._03cf4a1c7de9f33d761a6a1d;
   import com.ax3.display.wrappers.impl._218f7bde69b435644215c943;
   import com.ax3.display.wrappers.impl._5851c671824f640d4d36d175;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _84f980b3493d42da7117586f implements IAssetWrapper, IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      public var langField:TextField;
      
      public var dateField:TextField;
      
      public var reporterField:TextField;
      
      public var abuserField:TextField;
      
      public var statusField:TextField;
      
      public var list:_03cf4a1c7de9f33d761a6a1d;
      
      public var activateReportHandler:Function;
      
      private var _asset:DisplayObjectContainer;
      
      private var _60723997a52c934626908d0c:App;
      
      private var _fffd6a889a8c90f2243593b7:String;
      
      private var _7a17d737ca45de66756025b6:Vector.<_4958d20007bef43d6fa5624d>;
      
      public function _84f980b3493d42da7117586f()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._60723997a52c934626908d0c = param1;
         this._fffd6a889a8c90f2243593b7 = param2;
      }
      
      public function onAssetProcessComplete() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(this._60723997a52c934626908d0c.resourceManager,this._fffd6a889a8c90f2243593b7,_218f7bde69b435644215c943);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = -1913395836 ^ 0x0BED8FC7 ^ -125475340 ^ 0x7E9B0FB2;
         this.list.itemFactory = _loc1_;
         this.langField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡჂშွაလ჆ႊჃဗ၈ၡဩლႧႆၡၳცၭႌႅႹဲဣ္თ჋ၬႣ႐႗႖ဒჾၒႾဠႦჹဠစ","ၒၘၵ႔ჶძမႠူქჷၳႼဉပဤ"));
         this.dateField.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捙捶揘揙捺持挥掻掦挘揄揹插捛掔挌揁挣揓挊挧提掔掎揄捉掷挧掲揓揙捰掚捋捅捍揺捶挦控捂掏","捱捅捁挖捑揷捜揿捸掱揅挌挛揪捋捯"));
         this.reporterField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴛၖၩ႙၌჋ၷဵဉဣႜუၡ႐მပხძ့ၦႧ჏ဍႄႁဝႦႾမၩႈ႒၃ზჵႀႭვფဈၚၧჳჷდၳိႱၥသ","ႈ၁ჿ჈ႝქၟ၂ဲၨႢုၝბညႴ"));
         this.abuserField.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掦揟掍挢按掎挸捡捒揓挚掘揕揺控揩捸挗揗揨揇揥捡挠捁揮提揣挽掩揦捇捒捗掵插挟挊插捯揼捒揳挥揯揦","捩据掱挓掟揔掉揪捫掵捦挒捊挠捇掖"));
         this.statusField.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挀挆掮揷挥揾按描掎捚揷揑掋揣揘挛揷揈揨揵挜捃掄挨掂掻挄挾掄挦捪揙推捒挀掇挦掩揟掲挔掯捌挞掌捓","揙措捱挊挋掸揋揔揼揊捫揈捌揍揽掭"));
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function _c725eaefa0e53c4c1cd30fbd(param1:Vector.<_4958d20007bef43d6fa5624d>) : void
      {
         var _loc2_:_4958d20007bef43d6fa5624d = null;
         var _loc3_:_5851c671824f640d4d36d175 = null;
         this._7a17d737ca45de66756025b6 = param1;
         this.list.removeAll();
         for each(_loc2_ in this._7a17d737ca45de66756025b6)
         {
            _loc3_ = this.list.add(_loc2_);
            if(_loc3_ is _218f7bde69b435644215c943)
            {
               _218f7bde69b435644215c943(_loc3_).addEventListener(_03cf4a1c7de9f33d761a6a1d.ACTIVATE_WRAPPER,this._40aab01f80331513c56e75d5,false,-1843426992 ^ -2071944322 ^ -1594256103 ^ -1234780361,true);
            }
         }
      }
      
      private function _40aab01f80331513c56e75d5(param1:Event) : void
      {
         var _loc2_:_218f7bde69b435644215c943 = _218f7bde69b435644215c943(param1.currentTarget);
         var _loc3_:_4958d20007bef43d6fa5624d = _4958d20007bef43d6fa5624d(_loc2_.data);
         if(this.activateReportHandler != null)
         {
            this.activateReportHandler(_loc3_);
         }
      }
   }
}


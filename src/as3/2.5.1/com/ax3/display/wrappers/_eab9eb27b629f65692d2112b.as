package com.ax3.display.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.core.App;
   import com.ax3.display.wrappers.impl._218f7bde69b435644215c943;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.utils._8dbac3cb2bae16fc4e0e0f27;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _eab9eb27b629f65692d2112b implements IAssetWrapper, IAssetWrapperRecursive, IAssetWrapperWithFactory
   {
      
      public var langField:TextField;
      
      public var dateField:TextField;
      
      public var reporterField:TextField;
      
      public var abuserField:TextField;
      
      public var statusField:TextField;
      
      public var activateReportHandler:Function;
      
      public var prevPageClickHandler:Function;
      
      public var nextPageClickHandler:Function;
      
      public var list:_c9b409b69412832d920c473f;
      
      private var _asset:DisplayObjectContainer;
      
      private var _602673f8ae2393725f35ea6d:App;
      
      private var _dc6cbc45099c32737f23170c:String;
      
      private var _00624cd917e0fc4272f9a026:Vector.<_4958d20007bef43d6fa5624d>;
      
      public function _eab9eb27b629f65692d2112b()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
      }
      
      public function initialize(param1:App, param2:String) : void
      {
         this._602673f8ae2393725f35ea6d = param1;
         this._dc6cbc45099c32737f23170c = param2;
      }
      
      public function onAssetProcessComplete() : void
      {
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(this._602673f8ae2393725f35ea6d.resourceManager,this._dc6cbc45099c32737f23170c,_218f7bde69b435644215c943);
         _loc1_.process(this.list.itemTemplate);
         this.list.itemFactory = _loc1_;
         this.list.itemsPerPage = 0x3B04DE81 ^ 0x168670A5 ^ 0x2E2D75F7 ^ 0x03AFDBD8;
         this.list.listItemClickHandler = this._8fbe48739ce82dc390624414;
         this.langField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აၻှႍဠၵ႞၃ႥႫဧၓပხၦფႭခჂႜჄჿ၂ႋဝ၆჆ဌჸႧၯွၹႇ჋ိၿ႒႐ူၜဋ","ၳတთဥဟჭბႪჃႶၿၲფჅေႍ"));
         this.dateField.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚劯剱刵则劼刞劽剖創勦勚勶勭勩劻勝劮劏刱勞劚剔剧劦剶别剄刏劸勮剼剎刋刖刹券剷刢剤勘勈","劷剌副剽剫勐勔剌勋刻劧劝剖劂効削"));
         this.reporterField.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挜挲揢挝掏捣揩握挭措捓挒揬掮揢掯捧挀掭挸捺捓捝捇捝掛掸损揎掵挀揯掹捱掸揺捅挊揨挙掱揉捑握捵挞掴捀採揾掑捀","捜掸掤揓挩振挜捊挤揅掵捡掘掔捶揀"));
         this.abuserField.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揧捵挏揋捎排揹掱捝捭挭揺捥掇挋掴掑挥捥揔振捸挕挏揕揰挅掟掄揝掖揑揪捅揁挦掔掟掊握挢揂","掿握挄挔据揤捩揑挢挓挧捌掲挪挣掹"));
         this.statusField.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揹揟挰捋捻捉掞捂描掄掼挃挾挔挊挡揲揞挺挍捑捁挿挰捠挆揊挶挼掏揇挶揗掭挱掮挆掴挧揲掏揿揔掃揰揘","掭揍揗揽掯掃掞挺揃捏掎挔捄換捤揈"));
         this.list.leftPageButton.handler = this._78aa55c90adc412eb713c4a4;
         this.list.rightPageButton.handler = this._1c3e55009e445baf68b765d1;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function _b04ce7bbc1816c6333dbabd1(param1:Vector.<_4958d20007bef43d6fa5624d>, param2:int, param3:int) : void
      {
         this._00624cd917e0fc4272f9a026 = param1;
         this.list.show(_8dbac3cb2bae16fc4e0e0f27._8ded50bff02ca5190c64a44c(param1),param2,param3);
      }
      
      private function _8fbe48739ce82dc390624414(param1:Event) : void
      {
         var _loc2_:_218f7bde69b435644215c943 = _218f7bde69b435644215c943(param1.currentTarget);
         var _loc3_:_4958d20007bef43d6fa5624d = _4958d20007bef43d6fa5624d(_loc2_.data);
         if(this.activateReportHandler != null)
         {
            this.activateReportHandler(_loc3_);
         }
      }
      
      private function _78aa55c90adc412eb713c4a4(param1:Event) : void
      {
         var _loc2_:int = -1421888259 ^ 0x64485546 ^ -880898049 ^ 0x682A84C1;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6200E21A ^ 0x1E87D760 ^ -1073134134 ^ -793929163))
            {
               case 0:
                  if(this.prevPageClickHandler != null)
                  {
                     _loc2_ = -797875143 ^ 0xEB54C1 ^ -868892586 ^ 0x708C1A29;
                  }
                  else
                  {
                     _loc2_ = -2004488967 ^ 0x041E7A82 ^ 0x321D0B41 ^ -760907842;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.prevPageClickHandler();
                  _loc2_ = -20243775 ^ -1785860358 ^ 0x07902FED ^ 0xF53152;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _1c3e55009e445baf68b765d1(param1:Event) : void
      {
         var _loc2_:int = -1668477017 ^ 0x3632AE6E ^ 0x1723F9CF ^ -480864780;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x17C0EE9F ^ 0x4EA0BA45 ^ -1280786111 ^ -1274914709))
            {
               case 0:
                  this.nextPageClickHandler();
                  _loc2_ = 0x49E472E0 ^ -786368756 ^ -1918017587 ^ 0x4BA317D0;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.nextPageClickHandler != null)
                  {
                     _loc2_ = 0x0BD683B2 ^ 0x59BB851D ^ -627390672 ^ -700642193;
                  }
                  else
                  {
                     _loc2_ = 0x33D962BA ^ 0x6A92257A ^ 0x65B5022D ^ 0x6234881C;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


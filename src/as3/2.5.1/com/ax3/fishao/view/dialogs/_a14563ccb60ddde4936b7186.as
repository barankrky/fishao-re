package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.display.wrappers.impl._f5a1543ec49d3249ecbd6b8d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._2d53a7ea885b00e1a3b58018;
   import com.ax3.fishao.view.wrappers.impl._b6f0647405eb88632e77293d;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.text.TextField;
   
   public class _a14563ccb60ddde4936b7186 extends _8071087ebe26c264282580d0
   {
      
      public var closeButton:FishaoButtonWrapper;
      
      public var reasonLabel:TextField;
      
      public var applyButton:FrameButtonWrapper;
      
      public var scrollText:_f5a1543ec49d3249ecbd6b8d;
      
      public var userDropdown:_b6f0647405eb88632e77293d;
      
      public var actionDropdown:_b6f0647405eb88632e77293d;
      
      public var periodDropdown:_b6f0647405eb88632e77293d;
      
      public function _a14563ccb60ddde4936b7186()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刢剞劎劂刂勭功劫剄剞効劁判切剙劥初勈勃勼剠勨労励劋創勱劀勬剧刑効别刚刬剫刓刍动剓别勺勺勁劝剐勱募剂効剰剆切刪剾剼刪刵勦劣刼刑","动剻劥劃别勗剰勀募勦剽勄剟劝剅勧");
         super(_loc1_);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this.closeButton.handler = this._c0fc00e7ef321008438f5744;
         var _loc1_:_b6959442d774100015b69ffa = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_2d53a7ea885b00e1a3b58018);
         _loc1_.process(this.userDropdown.itemTemplate);
         this.userDropdown._c5d5235acc70f20f98ab98c9(_loc1_);
         this.actionDropdown._c5d5235acc70f20f98ab98c9(_loc1_);
         this.periodDropdown._c5d5235acc70f20f98ab98c9(_loc1_);
         this.reasonLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捖揈掺捉揟掔挸揁掱挍捲掲揨捖挨挼挡挦据捩探揈掔捁挟揋捁挞捑掂","捃揄挜掶挾挽掜捹挱掌挵掐揀掅挆掘"));
         this.scrollText.text = "";
         this.scrollText.field.addEventListener(Event.CHANGE,this._223e262a816f05e4b5f09035);
         this.scrollText.field.addEventListener(TextEvent.TEXT_INPUT,this._223e262a816f05e4b5f09035);
         this.applyButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勡劕劌剢刺刈刟刨動剧创刟劾勲剘劽刯刭刌剙剢刋剣劯別券剜勔劜刀","劎剜剢勡勜剪剿勈勴刏劭劌勂刁刬務"));
         tabChildren = false;
         super._935ac2966ddad68dfc449202();
      }
      
      private function _223e262a816f05e4b5f09035(param1:Event) : void
      {
         var _loc2_:int = 0x60766615 ^ -494059413 ^ -1160491472 ^ -732943626;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-525653882 ^ -1745003524 ^ -2147218879 ^ 0x1B2D3B82))
            {
               case 0:
                  this.applyButton.disable();
                  _loc2_ = -1825339617 ^ -409807895 ^ -2003389460 ^ 0x1048A5A1;
                  break;
               case 1:
                  if(this.scrollText.field.text.length > (-612529561 ^ -1763482654 ^ -385000071 ^ -1533823748))
                  {
                     _loc2_ = -761249558 ^ -840401210 ^ 0x16A70579 ^ -443516433;
                  }
                  else
                  {
                     _loc2_ = -1404870685 ^ -1942715688 ^ -2118025242 ^ 0x4DC9E064;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  this.applyButton.enable();
                  _loc2_ = -1278645033 ^ -73247303 ^ 0x0449EF4B ^ -1604479842;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c0fc00e7ef321008438f5744(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollText._c39c233c8fc18069f43a3882();
         this.userDropdown.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挺捿挽提捠挗挙捖揺掃挀捦揦揞揧损掶揟挲挋揩掋捤掗掳捗挷捩","捥揹掜捍掑挶掓挏捆捶掠掊挝揇捚揚"));
         this.actionDropdown.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙劷剫勲労勷劙判勖剷剶利刖刺勰刂勫剹剫剾剚刼刴剒勊刱劒勅勆剀划劐剕勇別劤勠勥","剄勱劆刎勇刨劐勰劔劑勠刬劾剏办勖"));
         this.periodDropdown.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捄捓挊捀捬捍挖揚挚揿挣捩揭挘挳挞挽捁捝捲捙掯授揅挅掶捆挋捂挭揥捠","捧掝掣挆掽挫挬掏掴掤掆揎挶揼捰捁"));
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.scrollText.text = "";
      }
   }
}


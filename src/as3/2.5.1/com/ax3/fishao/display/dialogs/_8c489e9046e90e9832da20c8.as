package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import assets.common.PlingHistoryWin;
   import com.ax3.fishao.display.panels._c78f68b3b7e18e9b4bde0d0c;
   import com.ax3.fishao.model.pling._acdfca446f7bd1a1ed443c02;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs._095f74ed3dbeaa01adf720f9;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _8c489e9046e90e9832da20c8 extends _095f74ed3dbeaa01adf720f9
   {
      
      private var _asset:PlingHistoryWin = new PlingHistoryWin();
      
      public var title:TextField;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var plingHeader:TextField;
      
      public var actionHeader:TextField;
      
      public var view:MovieClip;
      
      public function _8c489e9046e90e9832da20c8()
      {
         super();
         this._asset.y = -1103777078 ^ 0x2D18982C ^ 0x44842670 ^ -676787044;
         alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挑揨挫挺揢掲挄捁捜揸掀挙挾揢揦挕挭捜揜挦挲掌挫挬","控掟挥掅揮挞捓掗掤掼捄挸揫揵掭揹");
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         app.plings.addEventListener(Event.CHANGE,this._f95896dd9af8cb6b170fda36);
         this._5ae909c8d01a029e858e1964();
         this.closeButton.handler = this._6fd44922d175d933ad351ffc;
         tabChildren = false;
      }
      
      private function _f95896dd9af8cb6b170fda36(param1:Event) : void
      {
         this._4efbe74f5985c4d5ce4687d8();
      }
      
      private function _6fd44922d175d933ad351ffc(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE));
         close();
      }
      
      private function _5ae909c8d01a029e858e1964() : void
      {
         this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捉挎揹描揄掣挦揓揑推捼揽换捸捩挮掄挿捼换捡挄掻掓挞揱掻捤","揹掛掟捺握揋揚掓掤挍捊掫掰揨推揾"));
         this.plingHeader.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掏捕捵掙探挦捶接掔捉揰捬捼捆推挽揽挭揱掚捪揲掼捺揽捇捜捙捯捨","捤掫掸揦掊掹捳捔挝揜捑指揗揊掌措"));
         this.actionHeader.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挨捽挡掜掦捓掜掘揷掵捃挑揕挮掠掂揕挖捬捦揲揖捙挒揼捡提提揓捦","挲揵挞捌挗挨掎措挕掲捰挀挪捉挪挏"));
         this._4efbe74f5985c4d5ce4687d8();
      }
      
      private function _4efbe74f5985c4d5ce4687d8() : void
      {
         var _loc1_:_c78f68b3b7e18e9b4bde0d0c = null;
         var _loc2_:_acdfca446f7bd1a1ed443c02 = null;
         while(this.view.numChildren > (-169449747 ^ -1945894322 ^ -1176958273 ^ -1069847012))
         {
            this.view.removeChildAt(0x578C92BF ^ -988990240 ^ -581380493 ^ 0x4FD9702C);
         }
         var _loc3_:int = app.plings.length - 1;
         var _loc4_:int = 0x7F5FE461 ^ 0x4666061D ^ 0x4AC9E311 ^ 0x73F0016D;
         var _loc5_:* = _loc3_;
         while(_loc5_ > _loc3_ - (0x1B6F8532 ^ 0x08537402 ^ -208629522 ^ -525573676))
         {
            _loc2_ = app.plings._1438a6090ec0a17e3abd0046(_loc5_);
            if(_loc2_ != null)
            {
               _loc1_ = new _c78f68b3b7e18e9b4bde0d0c();
               _loc1_.description = _loc2_.message;
               if(_loc2_.action == null)
               {
                  _loc1_.action.visible = false;
               }
               else
               {
                  _loc1_.action.label = _loc2_.actionButtonLabel;
                  _loc1_.action.handler = _loc2_.action;
                  _loc1_.action.addEventListener(MouseEvent.CLICK,this._f0cc553e667d385ceaf0b2ec);
               }
               _loc1_.y = _loc4_ * (0x2B3CC2DC ^ -1582765993 ^ -862272336 ^ 0x460EEE13);
               this.view.addChild(_loc1_);
               _loc4_++;
            }
            _loc5_--;
         }
      }
      
      private function _f0cc553e667d385ceaf0b2ec(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override public function activate() : void
      {
         app.plings._ede466d4e3cceec3ca8035d0();
         super.activate();
      }
   }
}


package com.ax3.fishao.display.dialogs
{
   import assets.common.PlingHistoryWin;
   import com.ax3.fishao.display.panels.PlingHistoryLineView;
   import com.ax3.fishao.model.pling.PlingMessage;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseDialog;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class PlingHistoryWindow extends FishaoBaseDialog
   {
      
      private var _asset:PlingHistoryWin = new PlingHistoryWin();
      
      public var title:TextField;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var plingHeader:TextField;
      
      public var actionHeader:TextField;
      
      public var view:MovieClip;
      
      public function PlingHistoryWindow()
      {
         super();
         this._asset.y = 10;
         alpha = 0.25;
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         app.plings.addEventListener(Event.CHANGE,this.onPlingListChanged);
         this.render();
         this.closeButton.handler = this.onCloseClick;
         tabChildren = false;
      }
      
      private function onPlingListChanged(param1:Event) : void
      {
         this.fillView();
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE));
         close();
      }
      
      private function render() : void
      {
         this.title.text = I18n.getUpper("plingTitle");
         this.plingHeader.text = I18n.get("plingHeader");
         this.actionHeader.text = I18n.get("plingAction");
         this.fillView();
      }
      
      private function fillView() : void
      {
         var _loc1_:PlingHistoryLineView = null;
         var _loc2_:PlingMessage = null;
         while(this.view.numChildren > 0)
         {
            this.view.removeChildAt(0);
         }
         var _loc3_:int = app.plings.length - 1;
         var _loc4_:int = 0;
         var _loc5_:* = _loc3_;
         while(_loc5_ > _loc3_ - 10)
         {
            _loc2_ = app.plings.getMessage(_loc5_);
            if(_loc2_ != null)
            {
               _loc1_ = new PlingHistoryLineView();
               _loc1_.description = _loc2_.message;
               if(_loc2_.action == null)
               {
                  _loc1_.action.visible = false;
               }
               else
               {
                  _loc1_.action.label = _loc2_.actionButtonLabel;
                  _loc1_.action.handler = _loc2_.action;
                  _loc1_.action.addEventListener(MouseEvent.CLICK,this.onPlingButtonClick);
               }
               _loc1_.y = _loc4_ * 40;
               this.view.addChild(_loc1_);
               _loc4_++;
            }
            _loc5_--;
         }
      }
      
      private function onPlingButtonClick(param1:MouseEvent) : void
      {
         close();
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override public function activate() : void
      {
         app.plings.loadHistory();
         super.activate();
      }
   }
}


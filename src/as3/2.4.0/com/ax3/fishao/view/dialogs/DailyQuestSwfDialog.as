package com.ax3.fishao.view.dialogs
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.display.panels.DailyQuestManWidget;
   import com.ax3.fishao.model.DailyQuestModel;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.DailyQuestDialogItemWrapper;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import protocol.sr.DailyQuestCollectResp;
   
   public class DailyQuestSwfDialog extends DailyQuestSwfDialogAsset
   {
      
      private var _data:Object;
      
      private var _timeSec:int;
      
      public function DailyQuestSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         closeBtn.handler = this.onCloseBtnClick;
         super.onAssetCreationComplete();
      }
      
      private function onCloseBtnClick(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onOpenPrizeButtonClick(param1:MouseEvent) : void
      {
         openPrizeButton.handler = null;
         openPrizeButton.visible = false;
         FishaoFscModelManager.dailyQuestExtension.getPrizesData(this.onPrizesDataResponse);
         DailyQuestManWidget.dailyQuestsModel.prizeIsCollect = true;
         GameSwf.currentLocationDialog.dailyQuestManWidget.disable();
         this.close();
      }
      
      private function onPrizesDataResponse(param1:DailyQuestCollectResp) : void
      {
         var _loc2_:DailyQuestPrizesSwfDialog = app.dialogFactory.getDailyQuestPrizesSwfDialog();
         _loc2_.setData(param1);
         _loc2_.setSerieStep(this._data[DailyQuestModel.SERIE_STEP]);
         _loc2_.show();
      }
      
      public function updatePage(param1:Event = null) : void
      {
         var _loc2_:Object = null;
         if(this._data == null)
         {
            return;
         }
         this._timeSec = DailyQuestManWidget.dailyQuestsModel.getDisplayLeftSec();
         if(this._timeSec > 0)
         {
            timerLabel.text = I18n.formatTimestampToClockView(this._timeSec);
         }
         else
         {
            timerLabel.text = I18n.getUpper("dailyQuestDialogComplete");
         }
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).addFunction(this.update1S);
         if(!this._data[DailyQuestModel.IS_COMPLETE])
         {
            animation.gotoAndStop(1);
            openPrizeButton.visible = false;
            openPrizeButton.handler = null;
         }
         else
         {
            animation.play();
            openPrizeButton.visible = true;
            if(this._data[DailyQuestModel.PRIZE_IS_COLLECT])
            {
               openPrizeButton.handler = null;
               openPrizeButton.visible = false;
            }
            else
            {
               openPrizeButton.handler = this.onOpenPrizeButtonClick;
               openPrizeButton.visible = true;
            }
         }
         progressLine.gotoAndStop(this._data[DailyQuestModel.SERIE_STEP] + 1);
         prizeIcon.gotoAndStop(this._data[DailyQuestModel.SERIE_STEP] + 1);
         var _loc3_:Array = this._data[DailyQuestModel.QUESTS] as Array;
         var _loc4_:int = 1;
         for each(_loc2_ in _loc3_)
         {
            DailyQuestDialogItemWrapper(this["quest_" + _loc4_]).setData(_loc2_);
            _loc4_++;
         }
      }
      
      private function update1S(param1:uint, param2:uint) : void
      {
         if(this._timeSec > 0)
         {
            --this._timeSec;
            timerLabel.text = I18n.formatTimestampToClockView(this._timeSec);
         }
         else
         {
            timerLabel.text = I18n.getUpper("dailyQuestDialogComplete");
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.updatePage();
      }
      
      public function setData(param1:Object) : void
      {
         this._data = param1;
      }
      
      override public function close() : void
      {
         closeBtn.removeEventListener(MouseEvent.CLICK,this.onCloseBtnClick);
         openPrizeButton.removeEventListener(MouseEvent.CLICK,this.onOpenPrizeButtonClick);
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).removeFunction(this.update1S);
         super.close();
      }
   }
}


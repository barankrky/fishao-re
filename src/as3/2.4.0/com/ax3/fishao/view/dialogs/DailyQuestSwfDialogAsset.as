package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.DailyQuestDialogItemWrapper;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class DailyQuestSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var title:DialogTitleWrapper;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var timeToCompleteLabel:TextField;
      
      public var timerLabel:TextField;
      
      public var currentSerieLabel:TextField;
      
      public var noSerieLabel:TextField;
      
      public var oneDaySerieLabel:TextField;
      
      public var twoDaySerieLabel:TextField;
      
      public var threeDaySerieLabel:TextField;
      
      public var quest_1:DailyQuestDialogItemWrapper;
      
      public var quest_2:DailyQuestDialogItemWrapper;
      
      public var quest_3:DailyQuestDialogItemWrapper;
      
      public var openPrizeButton:MenuFrameButtonWrapper;
      
      public var animation:MovieClip;
      
      public var progressLine:MovieClip;
      
      public var prizeIcon:MovieClip;
      
      public function DailyQuestSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "dailyQuestDialog.swf";
         super(_loc1_);
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.title.text = I18n.getUpper("dailyQuestDialogTitle");
         this.timeToCompleteLabel.text = I18n.get("dailyQuestDialogTimeToComplete");
         this.currentSerieLabel.text = I18n.get("dailyQuestDialogCurrentSerie");
         this.noSerieLabel.text = I18n.getUpper("dailyQuestDialogNoSerie");
         this.oneDaySerieLabel.text = I18n.getUpper("dailyQuestDialogOneDaySerie");
         this.twoDaySerieLabel.text = I18n.getUpper("dailyQuestDialogTwoDaySerie");
         this.threeDaySerieLabel.text = I18n.getUpper("dailyQuestDialogThreeDaySerie");
         this.openPrizeButton.label = I18n.getUpper("dailyQuestDialogOpenPrize");
         super.onAssetCreationComplete();
      }
   }
}


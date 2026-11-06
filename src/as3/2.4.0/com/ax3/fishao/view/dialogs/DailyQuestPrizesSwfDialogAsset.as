package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.AvailableItemWrapper;
   import com.ax3.display.wrappers.impl.AvailableListWrapper;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class DailyQuestPrizesSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var okButton:MenuFrameButtonWrapper;
      
      public var prizesList:AvailableListWrapper;
      
      public var congratulationsLabel:TextField;
      
      public var prizeIcon:MovieClip;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:FishaoCheckboxWrapper;
      
      public function DailyQuestPrizesSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "dailyQuestPrizePopup.swf";
         super(_loc1_);
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.congratulationsLabel.text = I18n.get("dailyQuestPrizesCongratulations");
         this.okButton.label = I18n.get("dailyQuestPrizesOk");
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,AvailableItemWrapper);
         _loc1_.process(this.prizesList.itemTemplate);
         this.prizesList.gap = 0;
         this.prizesList.itemFactory = _loc1_;
         super.onAssetCreationComplete();
      }
   }
}


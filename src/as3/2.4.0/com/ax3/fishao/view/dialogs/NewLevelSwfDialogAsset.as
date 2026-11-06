package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.AvailableItemWrapper;
   import com.ax3.display.wrappers.impl.AvailableListWrapper;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class NewLevelSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var title:DialogTitleWrapper;
      
      public var shareButton:MenuFrameButtonWrapper;
      
      public var okButton:MenuFrameButtonWrapper;
      
      public var availableList:AvailableListWrapper;
      
      public var congratulationsLabel:TextField;
      
      public var nowAvailableLabel:TextField;
      
      public var levelNum:DisplayObjectContainer;
      
      public var levelTextField:TextField;
      
      public var labelShareProgress:TextField;
      
      public var checkShareProgress:FishaoCheckboxWrapper;
      
      public function NewLevelSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "newLevelDialog.swf";
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.levelTextField = this.levelNum["num"]["field"];
         this.title.text = I18n.getUpper("newLevelTitle");
         this.congratulationsLabel.text = I18n.get("newLevelCongratulations");
         this.nowAvailableLabel.text = I18n.get("newLevelNowAvailable");
         this.shareButton.label = I18n.get("newLevelShare");
         this.okButton.label = I18n.get("newLevelOk");
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,AvailableItemWrapper);
         _loc1_.process(this.availableList.itemTemplate);
         this.availableList.gap = 0;
         this.availableList.itemFactory = _loc1_;
         this.levelTextField.text = "";
         super.onAssetCreationComplete();
      }
   }
}


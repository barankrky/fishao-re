package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class EmailActivationSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var titleLabel:TextField;
      
      public var headLabel:TextField;
      
      public var mailLabel:TextField;
      
      public var mailField:TextField;
      
      public var confirmMailButton:MenuFrameButtonWrapper;
      
      public function EmailActivationSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "emailActivation.swf";
         super(_loc1_);
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
      }
   }
}


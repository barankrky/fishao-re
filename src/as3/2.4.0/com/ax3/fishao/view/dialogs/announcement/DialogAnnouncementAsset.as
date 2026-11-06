package com.ax3.fishao.view.dialogs.announcement
{
   import com.ax3.fishao.display.popups.ScalableCenterTextFieldWrapper;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class DialogAnnouncementAsset extends DialogBase
   {
      
      public var labelTitle:TextField;
      
      public var labelDescription:TextField;
      
      public var labelTime:TextField;
      
      public var buttonOk:FrameButtonWrapper;
      
      public var viewImage:DisplayObjectContainer;
      
      protected var _viewTextTitle:TextFieldAutofitWrapper;
      
      protected var _viewTextDescription:ScalableCenterTextFieldWrapper;
      
      public function DialogAnnouncementAsset()
      {
         super("announcement.swf");
         _canClosedByEsc = false;
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         super.onAssetLoadingComplete(param1);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._viewTextDescription = new ScalableCenterTextFieldWrapper(this.labelDescription);
         this._viewTextTitle = new TextFieldAutofitWrapper(this.labelTitle);
         super.onAssetCreationComplete();
      }
   }
}


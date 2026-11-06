package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.BaseSwfDialog;
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.greensock.TweenMax;
   import com.inkora.tween.TweenCube;
   
   public class FishaoBaseSwfDialog extends BaseSwfDialog
   {
      
      protected var _closeTween:TweenMax = null;
      
      protected var _callback:Function = null;
      
      public function FishaoBaseSwfDialog(param1:SWFDialogConfig)
      {
         super(param1);
      }
      
      override protected function get dialogAssetURL() : String
      {
         return super.dialogAssetURL;
      }
      
      public function get closeTween() : TweenMax
      {
         return this._closeTween;
      }
      
      public function addCloseCallback(param1:Function) : void
      {
         this._callback = param1;
      }
      
      override public function show() : void
      {
         super.show();
         GameSwf.instance.onPopupShown(this);
      }
      
      override public function close() : void
      {
         GameSwf.instance.onPopupClosed(this);
         TweenCube.destroyTweensOf(this,false);
         super.close();
         if(this._callback != null)
         {
            this._callback.apply();
            this._callback = null;
         }
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.gui != null && stage != null)
         {
            if(GameSwf.currentLocationDialog.gui.mainMenu.chatPanel.isShowed())
            {
               stage.focus = GameSwf.currentLocationDialog.gui.mainMenu.chatPanel.textField;
            }
         }
      }
      
      override public function onSetFrontPosition() : void
      {
         PopupManager.LOADING_SCREEN.addIndicator(_loadingIndicator);
      }
      
      override public function onLostFrontPosition() : void
      {
         PopupManager.LOADING_SCREEN.removeIndicator(_loadingIndicator);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
      }
      
      override public function get width() : Number
      {
         return bg != null ? bg.width : super.width;
      }
      
      override public function get height() : Number
      {
         return bg != null ? bg.height : super.height;
      }
   }
}


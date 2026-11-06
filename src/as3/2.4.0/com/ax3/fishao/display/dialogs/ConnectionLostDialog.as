package com.ax3.fishao.display.dialogs
{
   import assets.common.ConnectionLostPopup;
   import com.ax3.fishao.display.popups.ScalableCenterTextFieldWrapper;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBasePopup;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.desktop.NativeApplication;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   
   public class ConnectionLostDialog extends FishaoBasePopup
   {
      
      private var _asset:ConnectionLostPopup;
      
      public var label:ScalableCenterTextFieldWrapper;
      
      public var closeButton:FishaoButtonWrapper;
      
      public var refreshButton:FishaoButtonWrapper;
      
      public function ConnectionLostDialog()
      {
         super();
         this._asset = new ConnectionLostPopup();
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.closeButton.visible = false;
         this.refreshButton.handler = this.onRefreshButtonClick;
         this.refreshButton.label = "QUIT";
      }
      
      public function set text(param1:String) : void
      {
         this.label.text = param1;
      }
      
      override public function show() : void
      {
         PopupManager.getInstance().showTop(this);
      }
      
      private function onRefreshButtonClick(param1:MouseEvent) : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("location.reload");
            return;
         }
         NativeApplication.nativeApplication.exit();
      }
   }
}


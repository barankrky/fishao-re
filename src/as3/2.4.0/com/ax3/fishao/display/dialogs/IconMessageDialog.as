package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.display.popups.ScalableCenterTextFieldWrapper;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBasePopup;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class IconMessageDialog extends FishaoBasePopup
   {
      
      public static const ERROR_ICON:String = "error";
      
      public static const WARNING_ICON:String = "warning";
      
      public static const CONFIRM_ICON:String = "confirm";
      
      public var messageField:ScalableCenterTextFieldWrapper;
      
      public var closeButton:FishaoButtonWrapper;
      
      private var _asset:ICON_MESSAGE_POPUP;
      
      private var _icon:MovieClip;
      
      private var _startTimestampMS:int;
      
      public function IconMessageDialog()
      {
         super();
         this._asset = new ICON_MESSAGE_POPUP();
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         addChild(this._asset);
         if(this.closeButton != null)
         {
            this.closeButton.visible = false;
            this.closeButton.handler = this.onCloseButtonClick;
         }
         tabChildren = false;
         this._icon = this._asset.icon;
         this.iconType = ERROR_ICON;
      }
      
      public function set text(param1:String) : void
      {
         this.messageField.text = param1;
      }
      
      public function set iconType(param1:String) : void
      {
         this._icon.gotoAndStop(param1);
      }
      
      override public function show() : void
      {
         this._startTimestampMS = getTimer();
         PopupManager.getInstance().showTop(this);
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
      }
   }
}


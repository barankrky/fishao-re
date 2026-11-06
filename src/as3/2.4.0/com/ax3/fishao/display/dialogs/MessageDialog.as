package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.wrappers.impl.BackgroundTextFieldWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBasePopup;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class MessageDialog extends FishaoBasePopup
   {
      
      public static const CLOSE_BUTTON:int = 1;
      
      public static const OK_BUTTON:int = 2;
      
      public static const YES_BUTTON:int = 4;
      
      public static const NO_BUTTON:int = 8;
      
      private var _asset:MESSAGE_POPUP;
      
      public var messageField:BackgroundTextFieldWrapper;
      
      public var okButton:FishaoButtonWrapper;
      
      public var closeButton:FishaoButtonWrapper;
      
      public var yesButton:FishaoButtonWrapper;
      
      public var noButton:FishaoButtonWrapper;
      
      public var closeOnOk:Boolean;
      
      private var _okButtonPadding:Number = 0;
      
      private var _bottomPadding:Number = 0;
      
      public var callbackYes:Function;
      
      public function MessageDialog()
      {
         super();
         this._asset = new MESSAGE_POPUP();
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.closeButton.handler = this.onCloseButtonClick;
         this.okButton.label = I18n.getUpper("buttonOk");
         this.okButton.handler = this.onOkButtonClick;
         this._okButtonPadding = this.okButton.y - (this.messageField.y + this.messageField.height);
         this._bottomPadding = bg.height - (this.okButton.y + this.okButton.height);
         this.yesButton.label = I18n.getUpper("yes");
         this.noButton.label = I18n.getUpper("no");
         this.yesButton.handler = this.onYesButtonClick;
         this.noButton.handler = this.onNoButtonClick;
         tabChildren = false;
         addChild(this._asset);
         this.reset();
      }
      
      override public function reset() : void
      {
         super.reset();
         this.closeOnOk = false;
         if(this.okButton != null)
         {
            this.okButton.visible = true;
            this.yesButton.visible = false;
            this.noButton.visible = false;
         }
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
      }
      
      private function onOkButtonClick(param1:MouseEvent) : void
      {
         if(this.closeOnOk)
         {
            close();
         }
      }
      
      private function onYesButtonClick(param1:MouseEvent) : void
      {
         if(this.closeOnOk)
         {
            close();
         }
         this.callbackYes();
      }
      
      private function onNoButtonClick(param1:MouseEvent) : void
      {
         if(this.closeOnOk)
         {
            close();
         }
      }
      
      public function setText(param1:String, param2:Boolean = true) : void
      {
         this.textAlign = TextAlign.LEFT;
         this.isList = param2;
         this.messageField.text = param1;
         this.dispose();
      }
      
      private function dispose() : void
      {
         this.okButton.y = this.messageField.y + this.messageField.height + this._okButtonPadding;
         this.yesButton.y = this.okButton.y;
         this.noButton.y = this.okButton.y;
         bg.height = this.okButton.y + this.okButton.height + this._bottomPadding;
      }
      
      override public function show() : void
      {
         PopupManager.getInstance().showTop(this);
      }
      
      public function set buttons(param1:int) : void
      {
         this.closeButton.visible = Boolean(param1 & CLOSE_BUTTON);
         this.okButton.visible = Boolean(param1 & OK_BUTTON);
         this.yesButton.visible = Boolean(param1 & YES_BUTTON);
         this.noButton.visible = Boolean(param1 & NO_BUTTON);
      }
      
      public function set textAlign(param1:String) : void
      {
         this.messageField.textAlign = param1;
      }
      
      private function set isList(param1:Boolean) : void
      {
         var _loc2_:TextFormat = this.messageField.defaultTextFormat;
         _loc2_.indent = param1 ? -18 : 0;
         this.messageField.defaultTextFormat = _loc2_;
      }
   }
}


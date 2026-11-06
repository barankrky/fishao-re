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
   
   public class MessageDialogSmall extends FishaoBasePopup
   {
      
      private var _asset:gDialogMessageSmall;
      
      public var messageField:BackgroundTextFieldWrapper;
      
      public var buttonYes:FishaoButtonWrapper;
      
      public var buttonNo:FishaoButtonWrapper;
      
      public var closeOnOk:Boolean;
      
      public var callbackYes:Function;
      
      public var callbackNo:Function;
      
      private var _yesButtonPadding:Number = 0;
      
      private var _bottomPadding:Number = 0;
      
      public function MessageDialogSmall()
      {
         super();
         this._asset = new gDialogMessageSmall();
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.buttonYes.label = I18n.getUpper("yes");
         this.buttonNo.label = I18n.getUpper("no");
         this.buttonYes.handler = this.onYesButtonClick;
         this.buttonNo.handler = this.onCloseButtonClick;
         this._yesButtonPadding = this.buttonYes.y - (this.messageField.y + this.messageField.height);
         this._bottomPadding = bg.height - (this.buttonYes.y + this.buttonYes.height);
         tabChildren = false;
         addChild(this._asset);
         this.reset();
      }
      
      override public function reset() : void
      {
         super.reset();
         this.closeOnOk = false;
         if(this.buttonYes != null)
         {
            this.buttonYes.visible = true;
         }
      }
      
      public function positionOffset(param1:int, param2:int) : void
      {
         this._asset.x += param1;
         this._asset.y += param2;
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
         this.callbackNo();
      }
      
      private function onYesButtonClick(param1:MouseEvent) : void
      {
         if(this.closeOnOk)
         {
            close();
         }
         this.callbackYes();
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
         this.buttonYes.y = this.messageField.y + this.messageField.height + this._yesButtonPadding;
         this.buttonNo.y = this.messageField.y + this.messageField.height + this._yesButtonPadding;
         bg.height = this.buttonYes.y + this.buttonYes.height + this._bottomPadding;
      }
      
      override public function show() : void
      {
         PopupManager.getInstance().showTop(this);
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


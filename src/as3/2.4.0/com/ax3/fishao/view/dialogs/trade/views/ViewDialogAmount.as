package com.ax3.fishao.view.dialogs.trade.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ViewDialogAmount extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelMessage:TextField;
      
      private var _labelAmount:TextField;
      
      private var _buttonClose:FishaoButtonWrapper;
      
      private var _buttonOk:FrameButtonWrapper;
      
      public function ViewDialogAmount(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set message(param1:String) : void
      {
         this._labelMessage.text = param1;
      }
      
      public function get labelAmount() : TextField
      {
         return this._labelAmount;
      }
      
      public function set amount(param1:int) : void
      {
         this._labelAmount.text = param1.toString();
      }
      
      public function get buttonClose() : FishaoButtonWrapper
      {
         return this._buttonClose;
      }
      
      public function get buttonOk() : FrameButtonWrapper
      {
         return this._buttonOk;
      }
      
      private function init() : void
      {
         this._labelMessage = Debug.assertProperty(this._source,"labelMessage",TextField);
         this._labelMessage.text = I18n.get(EStringType.EST_DIALOG_TRADE_DIALOG_AMOUNT_MESSAGE);
         this._labelAmount = Debug.assertProperty(this._source,"labelAmount",TextField);
         this._labelAmount.text = "";
         this._buttonClose = new FishaoButtonWrapper();
         this._buttonClose.process(Debug.assertProperty(this._source,"buttonClose"));
         this._buttonClose.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonClose,param1);
         };
         this._buttonOk = new FrameButtonWrapper();
         this._buttonOk.process(Debug.assertProperty(this._source,"buttonOk"));
         this._buttonOk.label = I18n.get(EStringType.EST_DIALOG_TRADE_DIALOG_AMOUNT_BUTTON_OK);
         this._buttonOk.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonOk,param1);
         };
      }
   }
}


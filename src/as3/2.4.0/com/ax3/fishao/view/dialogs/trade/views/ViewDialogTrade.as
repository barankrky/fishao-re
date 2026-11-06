package com.ax3.fishao.view.dialogs.trade.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.CloseMenuFrameButtonWrapper;
   import com.ax3.fishao.view.dialogs.ConfirmFrameButtonWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   
   public class ViewDialogTrade extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _buttonCancel:CloseMenuFrameButtonWrapper;
      
      private var _buttonTrade:ConfirmFrameButtonWrapper;
      
      public function ViewDialogTrade(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonCancel() : CloseMenuFrameButtonWrapper
      {
         return this._buttonCancel;
      }
      
      public function get buttonTrade() : ConfirmFrameButtonWrapper
      {
         return this._buttonTrade;
      }
      
      private function init() : void
      {
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._viewTitle.text = I18n.get(EStringType.EST_DIALOG_TRADE_TITLE_PLAYER);
         this._buttonCancel = new CloseMenuFrameButtonWrapper();
         this._buttonCancel.process(Debug.assertProperty(this._source,"buttonCancel"));
         this._buttonCancel.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonCancel,param1);
         };
         this._buttonTrade = new ConfirmFrameButtonWrapper();
         this._buttonTrade.process(Debug.assertProperty(this._source,"buttonTrade"));
         this._buttonTrade.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonTrade,param1);
         };
         this._buttonCancel.label = I18n.getUpper(EStringType.EST_DIALOG_TRADE_BUTTON_CANCEL);
         this._buttonTrade.label = I18n.getUpper(EStringType.EST_DIALOG_TRADE_BUTTON_TRADE_PLAYER);
      }
      
      public function updateView(param1:String, param2:String) : void
      {
         var _loc3_:String = null;
         switch(param1)
         {
            case ETradeType.ETT_NPC:
               _loc3_ = I18n.getUpper(EStringType.EST_DIALOG_TRADE_TITLE_NPC);
               this._viewTitle.text = _loc3_.replace(EStringTypeStubs.ESTS_NAME,param2).toUpperCase();
               this._buttonCancel.label = I18n.getUpper(EStringType.EST_DIALOG_TRADE_BUTTON_CANCEL);
               this._buttonTrade.label = I18n.getUpper(EStringType.EST_DIALOG_TRADE_BUTTON_TRADE_NPC);
               break;
            case ETradeType.ETT_PLAYER:
               this._viewTitle.text = I18n.getUpper(EStringType.EST_DIALOG_TRADE_TITLE_PLAYER);
               this._buttonCancel.label = I18n.getUpper(EStringType.EST_DIALOG_TRADE_BUTTON_CANCEL);
               this._buttonTrade.label = I18n.getUpper(EStringType.EST_DIALOG_TRADE_BUTTON_TRADE_PLAYER);
               break;
            default:
               Debug.assert(false);
         }
      }
   }
}


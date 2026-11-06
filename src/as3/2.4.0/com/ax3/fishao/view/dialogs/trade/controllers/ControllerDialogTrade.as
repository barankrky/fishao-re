package com.ax3.fishao.view.dialogs.trade.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.MessageDialogSmall;
   import com.ax3.fishao.locations.npc.NpcVasiliy;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.model.types.TradeStatusType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeSideType;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   import com.ax3.fishao.view.dialogs.trade.model.TradeModel;
   import com.ax3.fishao.view.dialogs.trade.views.ViewDialogTrade;
   import com.ax3.fishao.view.dialogs.trade.views.ViewTradeSide;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flashx.textLayout.formats.TextAlign;
   
   public class ControllerDialogTrade extends Controller
   {
      
      private var _view:ViewDialogTrade;
      
      private var _controllerTradeOwner:ControllerTradeSide;
      
      private var _controllerTradeTarget:ControllerTradeSide;
      
      private var _controllerTradeInventory:ControllerTradeInventory;
      
      private var _controllerAmountDialog:ControllerDialogAmount;
      
      private var _tradeModel:TradeModel;
      
      private var _messageDialogSmall:MessageDialogSmall;
      
      public function ControllerDialogTrade(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogTrade(this,param1);
         super(this._view);
         this.init();
      }
      
      private static function closeDialog() : void
      {
         PopupManager.getInstance().currentDialog().close();
      }
      
      public function get controllerAmountDialog() : ControllerDialogAmount
      {
         return this._controllerAmountDialog;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonTrade:
                  this.onButtonTradeClick();
                  break;
               case this._view.buttonCancel:
                  GameSwf.instance.managerTrade.cancelTradeOffer();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function onButtonTradeClick() : void
      {
         GameSwf.instance.managerTrade.confirmTrade();
         this._view.buttonTrade.disable();
      }
      
      private function onTradeReview() : void
      {
         this._messageDialogSmall = app.dialogFactory.getMessageDialogSmall();
         this._messageDialogSmall.closeOnOk = true;
         this._messageDialogSmall.callbackYes = GameSwf.instance.managerTrade.reviewOffer;
         this._messageDialogSmall.callbackNo = GameSwf.instance.managerTrade.resetOffer;
         this._messageDialogSmall.setText(I18n.get("trade_confirm"));
         this._messageDialogSmall.textAlign = TextAlign.CENTER;
         this._messageDialogSmall.show();
         this._messageDialogSmall.positionOffset(-160,0);
      }
      
      private function onTradeFinished() : void
      {
         var _loc1_:MessageDialog = null;
         switch(this._tradeModel.tradeSideTarget.type)
         {
            case ETradeType.ETT_PLAYER:
               _loc1_ = app.dialogFactory.getMessageDialog();
               _loc1_.closeOnOk = true;
               _loc1_.buttons = MessageDialog.OK_BUTTON | MessageDialog.CLOSE_BUTTON;
               _loc1_.setText(I18n.template("trade_completed",{"username":this._tradeModel.tradeSideTarget.login}));
               if(this._messageDialogSmall != null)
               {
                  this._messageDialogSmall.close();
               }
               closeDialog();
               _loc1_.show();
               break;
            case ETradeType.ETT_NPC:
               this.onTradeFinishedNpc();
               if(this._messageDialogSmall != null)
               {
                  this._messageDialogSmall.close();
               }
               closeDialog();
               break;
            default:
               Debug.assert(false,"Unsupported tradePlayerType in onTradeFinish method: " + this._tradeModel.tradeSideTarget.type);
         }
         app.user.inventory.verifyLooksAndFloats();
      }
      
      private function onTradeFinishedNpc() : void
      {
         var _loc1_:NpcVasiliy = null;
         var _loc2_:String = this._tradeModel.tradeSideTarget.login;
         switch(_loc2_)
         {
            case ENpcName.ENN_VASILIY:
               _loc1_ = GameSwf.currentLocationDialog.locationModel.getNPCbyName(_loc2_) as NpcVasiliy;
               _loc1_.onTradeFinished();
               break;
            default:
               Debug.assert(false,"Unsupported trade finish NPC: " + _loc2_);
         }
      }
      
      private function onTradeCanceledNpc() : void
      {
         var _loc1_:NpcVasiliy = null;
         var _loc2_:String = this._tradeModel.tradeSideTarget.login;
         switch(_loc2_)
         {
            case ENpcName.ENN_VASILIY:
               _loc1_ = GameSwf.currentLocationDialog.locationModel.getNPCbyName(_loc2_) as NpcVasiliy;
               _loc1_.onTradeCanceled();
               break;
            default:
               Debug.assert(false,"Unsupported trade cancel NPC: " + _loc2_);
         }
      }
      
      private function onTradeCanceled() : void
      {
         var _loc1_:String = null;
         var _loc2_:MessageDialog = null;
         switch(this._tradeModel.tradeSideTarget.type)
         {
            case ETradeType.ETT_PLAYER:
               if(this._tradeModel.tradeSidePlayer.status == TradeStatusType.CANCEL_OFFER)
               {
                  _loc1_ = app.user.username;
               }
               else if(this._tradeModel.tradeSideTarget.status == TradeStatusType.CANCEL_OFFER)
               {
                  _loc1_ = this._tradeModel.tradeSideTarget.login;
               }
               else
               {
                  Debug.assert(false,"Impossible to call onTradeCanceled method if nobody of participant have TradeStatusType.CANCEL_OFFER");
               }
               _loc2_ = app.dialogFactory.getMessageDialog();
               _loc2_.closeOnOk = true;
               _loc2_.buttons = MessageDialog.OK_BUTTON | MessageDialog.CLOSE_BUTTON;
               _loc2_.setText(I18n.template("trade_canceled",{"username":_loc1_}));
               _loc2_.textAlign = TextAlign.CENTER;
               closeDialog();
               _loc2_.show();
               break;
            case ETradeType.ETT_NPC:
               this.onTradeCanceledNpc();
               closeDialog();
               break;
            default:
               Debug.assert(false,"Unsupported tradePlayerType in onTradeCancel method: " + this._tradeModel.tradeSideTarget.type);
         }
      }
      
      private function init() : void
      {
         this._tradeModel = GameSwf.instance.managerTrade.tradeModel;
         if(this._tradeModel == null)
         {
            closeDialog();
            return;
         }
         this._view.updateView(this._tradeModel.tradeSideTarget.type,this._tradeModel.tradeSideTarget.login);
         this._controllerTradeOwner = new ControllerTradeSide(this._tradeModel.tradeSidePlayer,Debug.assertProperty(this._view.source,"viewTradeOwner"),ETradeSideType.ETST_OWNER);
         this._controllerTradeTarget = new ControllerTradeSide(this._tradeModel.tradeSideTarget,Debug.assertProperty(this._view.source,"viewTradeTarget"),ETradeSideType.ETST_TARGET);
         this._controllerTradeInventory = new ControllerTradeInventory(Debug.assertProperty(this._view.source,"viewTradeInventory"));
         this._controllerAmountDialog = new ControllerDialogAmount(Debug.assertProperty(this._view.source,"viewAmountDialog"),this._tradeModel.tradeSideTarget.type);
         this._tradeModel.offerItemsLimit = (this._controllerTradeOwner.view as ViewTradeSide).viewContainerItems.itemsOnPage;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_OWNER:
               this._controllerTradeOwner.update(param1);
               this._controllerTradeInventory.update(param1);
               break;
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_TARGET:
               this._controllerTradeTarget.update(param1);
               break;
            case EControllerUpdate.ECU_TRADE_STATUS_CHANGED:
               this._controllerTradeOwner.update(param1);
               this._controllerTradeTarget.update(param1);
               this.updateConfirmDialog();
               this.updateTradeButton();
               break;
            case EControllerUpdate.ECU_TRADE_CANCELED:
               this.onTradeCanceled();
               break;
            case EControllerUpdate.ECU_TRADE_REVIEW:
               this.onTradeReview();
               break;
            case EControllerUpdate.ECU_TRADE_FINISHED:
               this.onTradeFinished();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function updateConfirmDialog() : void
      {
         if(this._tradeModel.tradeSidePlayer.status != TradeStatusType.REVIEW_OFFER && this._tradeModel.tradeSideTarget.status != TradeStatusType.REVIEW_OFFER && this._messageDialogSmall != null)
         {
            this._messageDialogSmall.close();
         }
      }
      
      private function updateTradeButton() : void
      {
         if(this._tradeModel.tradeSidePlayer.status == TradeStatusType.MAKE_OFFER)
         {
            this._view.buttonTrade.enable();
         }
         else
         {
            this._view.buttonTrade.disable();
         }
      }
      
      override public function cleanup() : void
      {
         this._controllerTradeOwner.cleanup();
         this._controllerTradeOwner = null;
         this._controllerTradeTarget.cleanup();
         this._controllerTradeTarget = null;
         this._controllerTradeInventory.cleanup();
         this._controllerTradeInventory = null;
         this._controllerAmountDialog.cleanup();
         this._controllerAmountDialog = null;
         super.cleanup();
      }
   }
}


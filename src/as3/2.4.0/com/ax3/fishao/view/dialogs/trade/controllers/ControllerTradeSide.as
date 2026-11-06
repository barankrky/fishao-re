package com.ax3.fishao.view.dialogs.trade.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeItemState;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeSideType;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   import com.ax3.fishao.view.dialogs.trade.model.TradeItem;
   import com.ax3.fishao.view.dialogs.trade.model.TradeModel;
   import com.ax3.fishao.view.dialogs.trade.model.TradeSideInfo;
   import com.ax3.fishao.view.dialogs.trade.views.ViewTradeSide;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerTradeSide extends Controller
   {
      
      private var _entity:TradeSideInfo;
      
      private var _view:ViewTradeSide;
      
      private var _tradeStatus:String;
      
      private var _sidePlayerType:String;
      
      private var _sideType:String;
      
      private var _name:String;
      
      private var _offerItemsControllers:Array;
      
      private var _tradeModel:TradeModel;
      
      public function ControllerTradeSide(param1:TradeSideInfo, param2:DisplayObjectContainer, param3:String)
      {
         this.sideType = param3;
         this._entity = param1;
         this._view = new ViewTradeSide(this,param2);
         super(this._view);
         this.init();
      }
      
      public function set sidePlayerType(param1:String) : void
      {
         if(param1 == this._sidePlayerType)
         {
            return;
         }
         switch(param1)
         {
            case ETradeType.ETT_NPC:
               this._view.viewTradeStatus.source.visible = false;
               break;
            case ETradeType.ETT_PLAYER:
               if(this._tradeModel.tradeSideTarget.type == ETradeType.ETT_NPC)
               {
                  this._view.viewTradeStatus.source.visible = false;
               }
               break;
            default:
               Debug.assert(false,"No such trade side type: " + param1);
         }
         this._sidePlayerType = param1;
      }
      
      private function set sideType(param1:String) : void
      {
         if(param1 == this._sideType)
         {
            return;
         }
         switch(param1)
         {
            case ETradeSideType.ETST_TARGET:
            case ETradeSideType.ETST_OWNER:
               this._sideType = param1;
               break;
            default:
               Debug.assert(false,"No such trade side type: " + param1);
         }
      }
      
      public function set tradeStatus(param1:String) : void
      {
         if(param1 == this._tradeStatus)
         {
            return;
         }
         this._tradeStatus = param1;
         this._view.viewTradeStatus.status = param1;
      }
      
      public function set name(param1:String) : void
      {
         if(param1 == this._name)
         {
            return;
         }
         this._name = param1;
         this._view.name = param1;
      }
      
      private function init() : void
      {
         this._tradeModel = GameSwf.instance.managerTrade.tradeModel;
         this.sidePlayerType = this._entity.type;
         this.name = this._entity.login;
         this.updateData();
         this.updateGraphics();
      }
      
      private function updateData() : void
      {
         var _loc1_:String = null;
         var _loc2_:TradeItem = null;
         var _loc3_:ControllerTradeItem = null;
         this.cleanupItems();
         var _loc4_:Array = this._entity.items;
         this.tradeStatus = this._entity.status;
         switch(this._sideType)
         {
            case ETradeSideType.ETST_OWNER:
               _loc1_ = ETradeItemState.ETIS_OFFER_OWNER;
               break;
            case ETradeSideType.ETST_TARGET:
               _loc1_ = ETradeItemState.ETIS_OFFER_TARGET;
               break;
            default:
               Debug.assert(false,"Unsupported _sideType on updateData method of ControllerTradeSide: " + this._sideType);
         }
         this._offerItemsControllers = [];
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new ControllerTradeItem(_loc2_,new gViewTradeItem());
            _loc3_.state = _loc1_;
            this._offerItemsControllers.push(_loc3_);
         }
      }
      
      private function updateGraphics() : void
      {
         var _loc1_:ControllerTradeItem = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._offerItemsControllers)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._view.items = _loc2_;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_OWNER:
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_TARGET:
               this.updateData();
               this.updateGraphics();
               break;
            case EControllerUpdate.ECU_TRADE_STATUS_CHANGED:
               this.tradeStatus = this._entity.status;
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function cleanupItems() : void
      {
         var _loc1_:ControllerTradeItem = null;
         if(this._offerItemsControllers == null)
         {
            return;
         }
         for each(_loc1_ in this._offerItemsControllers)
         {
            _loc1_.cleanup();
            _loc1_ = null;
         }
         this._offerItemsControllers = null;
      }
   }
}


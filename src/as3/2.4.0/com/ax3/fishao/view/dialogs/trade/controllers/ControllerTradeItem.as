package com.ax3.fishao.view.dialogs.trade.controllers
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.config.RodColorFilter;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.trade.model.DialogTrade;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeItemState;
   import com.ax3.fishao.view.dialogs.trade.model.TradeItem;
   import com.ax3.fishao.view.dialogs.trade.model.TradeModel;
   import com.ax3.fishao.view.dialogs.trade.views.ViewTradeItem;
   import com.ax3.utils.ColorMatrix;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   
   public class ControllerTradeItem extends Controller
   {
      
      private var _view:ViewTradeItem;
      
      private var _entity:TradeItem;
      
      private var _state:String;
      
      public function ControllerTradeItem(param1:TradeItem, param2:DisplayObjectContainer)
      {
         this._view = new ViewTradeItem(this,param2);
         this._entity = param1;
         super(this._view);
         this.init();
      }
      
      public function set state(param1:String) : void
      {
         if(param1 == this._state)
         {
            return;
         }
         this._state = param1;
         this.updateState();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:TradeItem = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         var _loc5_:TradeModel = GameSwf.instance.managerTrade.tradeModel;
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.source:
                  _loc3_ = TradeItem.clone(this._entity);
                  if(_loc3_.type.isQuantitySeparable || _loc3_.type == ResourceType.DECORATION)
                  {
                     (PopupManager.getInstance().currentDialog() as DialogTrade).controllerTradeDialog.controllerAmountDialog.show(_loc3_);
                  }
                  else
                  {
                     _loc5_.moveItemToOffer(_loc3_);
                  }
                  break;
               case this._view.buttonRemove:
                  _loc5_.removeItemFromOffer(this._entity);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(this._view.state == ButtonState.DISABLED)
         {
            return;
         }
         this.onViewClicked(this._view.source,param1);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this._view.state == ButtonState.DISABLED)
         {
            return;
         }
         this._view.state = ButtonState.OVER;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this._view.state == ButtonState.DISABLED)
         {
            return;
         }
         this._view.state = ButtonState.OVER;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this._view.state == ButtonState.DISABLED)
         {
            return;
         }
         this._view.state = ButtonState.NORMAL;
      }
      
      private function init() : void
      {
         this.addViewHandlers();
         this.updateAmount();
         this.updateImage();
         this.updateTooltip();
      }
      
      private function updateAmount() : void
      {
         this._view.amount = this._entity.quantity;
         this._view.amountVisible = this._entity.quantity > 0 || this._entity.type == ResourceType.FISHBUCKS;
      }
      
      private function updateImage() : void
      {
         var _loc1_:ScaledBitmap = null;
         this._view.imagePlaceholder.removeChildren();
         if(this._entity.imageUrl != null)
         {
            _loc1_ = new ScaledBitmap(null);
            _loc1_.width = this._view.imagePlaceholderSize.x;
            _loc1_.height = this._view.imagePlaceholderSize.y;
            app.resourceManager.replaceBitmapDataFromURL(_loc1_,this._entity.imageUrl);
            if(this._entity.type == ResourceType.FISH_SHINY)
            {
               this.applyShinyFilter(_loc1_);
            }
            this._view.imagePlaceholder.addChild(_loc1_);
            if(this._entity.type == ResourceType.ROD)
            {
               this._view.imagePlaceholder.filters = RodColorFilter.getGameColorFilters(this._entity.infoId,this._entity.color);
            }
         }
      }
      
      private function applyShinyFilter(param1:ScaledBitmap) : void
      {
         var _loc2_:Array = [];
         var _loc3_:FishInfoVO = app.fishDict.get(this._entity.id) as FishInfoVO;
         var _loc4_:ColorMatrix = new ColorMatrix();
         _loc4_.adjustHue(_loc3_.hueShiftOfShiny);
         var _loc5_:ColorMatrixFilter = new ColorMatrixFilter(_loc4_.matrix);
         _loc2_.push(_loc5_);
         param1.filters = _loc2_;
      }
      
      private function updateTooltip() : void
      {
         if(this._entity.name != null)
         {
            this._view.viewTooltipHandleArea.initTooltip();
            this._view.viewTooltipHandleArea.tooltipText = this._entity.description == null ? this._entity.name : this._entity.name + "\n" + this._entity.description;
         }
      }
      
      private function updateState() : void
      {
         switch(this._state)
         {
            case ETradeItemState.ETIS_INVENTORY:
               this._view.buttonRemove.visible = false;
               this.enable();
               break;
            case ETradeItemState.ETIS_OFFER_OWNER:
               this._view.buttonRemove.visible = true;
               this.disable();
               break;
            case ETradeItemState.ETIS_OFFER_TARGET:
               this._view.buttonRemove.visible = false;
               this.disable();
               break;
            default:
               Debug.assert(false,"Call to possible undefined TradeItemState: " + this._state);
         }
      }
      
      private function enable() : void
      {
         (this._view.source as Sprite).buttonMode = true;
         (this._view.source as Sprite).useHandCursor = true;
         this._view.state = ButtonState.NORMAL;
      }
      
      private function disable() : void
      {
         (this._view.source as Sprite).buttonMode = false;
         (this._view.source as Sprite).useHandCursor = false;
         this._view.state = ButtonState.DISABLED;
      }
      
      private function addViewHandlers() : void
      {
         this._view.source.addEventListener(MouseEvent.CLICK,this.onClick,false,0,true);
         this._view.source.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove,false,0,true);
         this._view.source.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver,false,0,true);
         this._view.source.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut,false,0,true);
      }
      
      private function removeViewHandlers() : void
      {
         this._view.source.removeEventListener(MouseEvent.CLICK,this.onClick);
         this._view.source.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this._view.source.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this._view.source.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
      }
      
      override public function cleanup() : void
      {
         this._entity = null;
         this.removeViewHandlers();
         super.cleanup();
      }
   }
}


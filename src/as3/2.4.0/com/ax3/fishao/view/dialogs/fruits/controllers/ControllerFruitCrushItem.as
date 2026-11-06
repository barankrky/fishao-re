package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.buttons.ButtonState;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.fruits.ManagerFruits;
   import com.ax3.fishao.view.dialogs.fruits.model.EFruitItemType;
   import com.ax3.fishao.view.dialogs.fruits.model.FruitItem;
   import com.ax3.fishao.view.dialogs.fruits.views.ViewFruitItem;
   import com.ax3.fishao.view.dialogs.fruits.views.ViewFruitItemInventory;
   import com.ax3.fishao.view.dialogs.fruits.views.ViewFruitItemSelected;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ControllerFruitCrushItem extends Controller
   {
      
      private var _view:ViewFruitItem = this.getFruitItemView();
      
      private var _entity:FruitItem;
      
      private var _viewType:String;
      
      private var _managerFruits:ManagerFruits;
      
      public function ControllerFruitCrushItem(param1:FruitItem, param2:String)
      {
         this._entity = param1;
         this._viewType = param2;
         super(this._view);
         this.init();
      }
      
      private function getFruitItemView() : ViewFruitItem
      {
         var _loc1_:ViewFruitItem = null;
         switch(this._viewType)
         {
            case EFruitItemType.EFIT_INVENTORY:
               _loc1_ = new ViewFruitItemInventory(this);
               break;
            case EFruitItemType.EFIT_SELECTED:
               _loc1_ = new ViewFruitItemSelected(this);
               break;
            default:
               Debug.assert(false,"Unsupported viewType in Controller Fruit Crush Item: " + this._viewType);
         }
         return _loc1_;
      }
      
      public function get entity() : FruitItem
      {
         return this._entity;
      }
      
      public function set amount(param1:int) : void
      {
         this._entity.amount = param1;
         this.updateAmount();
      }
      
      public function get amount() : int
      {
         return this._entity.amount;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.source:
                  if(this._viewType == EFruitItemType.EFIT_INVENTORY && this._entity.amount > 0)
                  {
                     this._managerFruits.selectItem(this._entity);
                  }
                  break;
               case this._view.buttonRemove:
                  this._managerFruits.unselectItem(this._entity);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
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
         this._managerFruits = GameSwf.instance.managerFruits;
         this.addViewHandlers();
         this.updateImage();
         this.updateTooltip();
         this.updateRemoveButton();
         this.updateAmount();
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
            this._view.imagePlaceholder.addChild(_loc1_);
         }
      }
      
      private function updateTooltip() : void
      {
         if(this._entity.id > 0)
         {
            this._view.viewTooltipHandleArea.initTooltip();
            this._view.viewTooltipHandleArea.tooltipText = I18n.get(ResourceType.FRUIT.name + "_" + this._entity.id);
         }
      }
      
      private function updateRemoveButton() : void
      {
         if(this._view.buttonRemove != null)
         {
            this._view.buttonRemove.visible = this._entity.id > 0;
         }
      }
      
      private function updateAmount() : void
      {
         if(this._viewType == EFruitItemType.EFIT_INVENTORY)
         {
            this._view.amount = this._entity.amount;
            if(this._entity.amount == 0)
            {
               this.disable();
            }
            else
            {
               this.enable();
            }
         }
      }
      
      public function disable() : void
      {
         (this._view.source as Sprite).buttonMode = false;
         (this._view.source as Sprite).useHandCursor = false;
         this._view.state = ButtonState.DISABLED;
         if(this._view.buttonRemove != null)
         {
            this._view.buttonRemove.visible = false;
         }
      }
      
      private function enable() : void
      {
         (this._view.source as Sprite).buttonMode = true;
         (this._view.source as Sprite).useHandCursor = true;
         this._view.state = ButtonState.DEFAULT;
         if(this._view.buttonRemove != null)
         {
            this._view.buttonRemove.visible = true;
         }
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


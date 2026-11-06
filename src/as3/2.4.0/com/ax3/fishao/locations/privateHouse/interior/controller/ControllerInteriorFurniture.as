package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels.EditorPanelWrapper;
   import com.ax3.fishao.locations.privateHouse.interior.model.EFloorCellType;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemAssetType;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemFilterType;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemLocation;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemRotation;
   import com.ax3.fishao.locations.privateHouse.interior.model.InteriorItemFurniture;
   import com.ax3.fishao.locations.privateHouse.interior.view.ViewInteriorFurniture;
   import com.ax3.fishao.locations.privateHouse.model.LandingRect;
   import com.ax3.fishao.utils.UtilsNumber;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class ControllerInteriorFurniture extends ControllerInteriorItem
   {
      
      protected var _entity:InteriorItemFurniture;
      
      protected var _view:ViewInteriorFurniture = new ViewInteriorFurniture(this);
      
      private var _isSelected:Boolean;
      
      protected var _landingRect:LandingRect;
      
      private var _isOnBuildMode:Boolean;
      
      protected var _editorPanel:EditorPanelWrapper;
      
      private var _landingPoint:Point;
      
      private var _offsetOnStartDrag:Point;
      
      private var _isOnDrag:Boolean;
      
      public function ControllerInteriorFurniture(param1:InteriorItemFurniture, param2:ControllerInterior)
      {
         this._entity = param1;
         super(param1,this._view,param2);
         this.init();
      }
      
      public function get isLandingPossible() : Boolean
      {
         return this.isLandingPossibleByPosition(this._entity.position);
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         this._isSelected = param1;
         this.onSelectedUpdate();
      }
      
      override public function set buildMode(param1:Boolean) : void
      {
         this._isOnBuildMode = param1;
         this.onBuildModeUpdate();
      }
      
      protected function isLandingPossibleByPosition(param1:Point) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = true;
         var _loc4_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         var _loc5_:int = EInteriorItemRotation.isVertical(this._entity.rotation) ? this._entity.valueObject.size_x : this._entity.valueObject.size_y;
         var _loc6_:int = EInteriorItemRotation.isVertical(this._entity.rotation) ? this._entity.valueObject.size_y : this._entity.valueObject.size_x;
         var _loc7_:int = param1.x;
         while(_loc7_ < param1.x + _loc5_)
         {
            _loc2_ = param1.y;
            while(_loc2_ < param1.y + _loc6_)
            {
               if(_loc7_ >= _loc4_.length || _loc2_ >= _loc4_[0].length)
               {
                  _loc3_ = false;
                  break;
               }
               if(_loc4_[_loc7_][_loc2_] != null && _loc4_[_loc7_][_loc2_] != this)
               {
                  _loc3_ = false;
                  break;
               }
               _loc2_++;
            }
            _loc7_++;
         }
         return _loc3_;
      }
      
      protected function onBuildModeUpdate() : void
      {
         if(!this._isOnBuildMode)
         {
            this.isSelected = false;
         }
         this._view.handleClick = !this._isOnBuildMode;
         this._view.currentView.isMouseEnabled = !this._isOnBuildMode;
      }
      
      protected function onSelectedUpdate() : void
      {
         if(this._isSelected)
         {
            if(this.isLandingPossibleByPosition(this._entity.position))
            {
               this._landingRect.makeGreen();
               this._view.filter = EInteriorItemFilterType.EIIFT_GLOW;
            }
            this._view.currentView.isMouseEnabled = true;
            this._landingRect.setSize(this._entity.width,this._entity.height);
            this._landingRect.moveTo(this._entity.position.x,this._entity.position.y);
            this._landingRect.show();
            this.addPanelListeners();
            this.placeEditorPanel();
            this._editorPanel.show();
         }
         else
         {
            this._landingRect.hide();
            this._editorPanel.hide();
            this.removePanelListeners();
            if(!this.isLandingPossibleByPosition(this._entity.position))
            {
               return;
            }
            this._view.filter = EInteriorItemFilterType.EIIFT_NONE;
         }
         this._view.currentView.handleMouseDown = this._isSelected;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         switch(this._entity.location)
         {
            case EInteriorItemLocation.EIIL_PRIVATE_HOUSE:
               if(!_controllerInterior.locationDialog.buildMode)
               {
                  _controllerInterior.selectedItem = this;
                  _controllerInterior.enterBuildMode();
               }
               break;
            case EInteriorItemLocation.EIIL_DECORATION_SHOP:
               GameSwf.instance.showTradeDecorationSwfDialog(param2 as MouseEvent);
         }
         return _loc3_;
      }
      
      override public function onViewMouseDown(param1:IView, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewMouseDown(param1,param2);
         if(!this._isOnBuildMode)
         {
            return _loc3_;
         }
         this.dragStart(param2);
         return _loc3_;
      }
      
      override public function onViewMouseMove(param1:Object, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewMouseMove(view,param2);
         this.onItemDrag(param2);
         return _loc3_;
      }
      
      override public function onViewMouseUp(param1:IView, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewMouseUp(param1,param2);
         this.dragStop();
         return _loc3_;
      }
      
      public function onItemDrag(param1:MouseEvent) : void
      {
         if(!this._isOnDrag)
         {
            return;
         }
         this._view.currentView.x = param1.stageX + this._offsetOnStartDrag.x;
         this._view.currentView.y = param1.stageY + this._offsetOnStartDrag.y;
         this.updateLandingRectView(this._landingPoint);
         this._landingRect.moveTo(this._landingPoint.x,this._landingPoint.y);
      }
      
      override protected function onGraphicsLoaded(param1:Event = null) : void
      {
         switch(this._entity.location)
         {
            case EInteriorItemLocation.EIIL_PRIVATE_HOUSE:
            case EInteriorItemLocation.EIIL_DECORATION_SHOP:
               this._view.handleClick = true;
         }
         super.onGraphicsLoaded(param1);
      }
      
      protected function onButtonClickRotateRight(param1:Event) : void
      {
         this._entity.rotation = EInteriorItemRotation.next(this._entity.rotation);
         this.onRotationUpdate();
      }
      
      protected function onButtonClickRotateLeft(param1:Event) : void
      {
         this._entity.rotation = EInteriorItemRotation.previous(this._entity.rotation);
         this.onRotationUpdate();
      }
      
      protected function onRotationUpdate() : void
      {
         this.updatePosition();
         this.isSelected = true;
         this.updateLandingRectView(this._entity.position);
      }
      
      public function onButtonClickConfirm(param1:Event = null) : void
      {
         if(!this.isLandingPossible)
         {
            return;
         }
         _controllerInterior.exitBuildMode();
         param1.stopPropagation();
         _controllerInterior.save();
      }
      
      public function onButtonClickRemove(param1:Event = null) : void
      {
         _controllerInterior.exitBuildMode();
         param1.stopPropagation();
         this.removeItem();
         _controllerInterior.save();
      }
      
      override public function onItemMoved() : void
      {
         this.updatePositionOnFurnitureMap();
         this.updatePosition();
      }
      
      private function init() : void
      {
         this._landingRect = new LandingRect();
         _controllerInterior.locationLayers._bottom2Layer.addChild(this._landingRect);
         this._landingRect.hide();
         _graphicsToLoad = 12;
         this._view.currentRotation = this._entity.rotation;
         this._editorPanel = _controllerInterior.locationLayers.privateHouseEditorPanel;
         this._editorPanel.hide();
         this._landingPoint = new Point();
         this._offsetOnStartDrag = new Point();
      }
      
      override public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         var _loc6_:int = this._entity.getOffsetXByRotation(param2);
         var _loc7_:int = -this._entity.getZPointByRotation(param2,param3);
         super.load(param1,param2,param3,_loc6_,_loc7_);
      }
      
      override protected function addItem() : void
      {
         this._view.replaceIsoBitmap();
         if(!this.isLandingPossibleByPosition(this._entity.position))
         {
            Cc.warn("Impossible to place item on current position. Removed from private house");
            this.removeItemOverlapped();
            return;
         }
         this._view.addOnLayer(_controllerInterior.locationLayers.mainLayer);
         this.addOnFurnitureMap();
         this.updatePosition();
         this._view.currentView.hide();
      }
      
      protected function addOnFurnitureMap() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         var _loc3_:int = EInteriorItemRotation.isVertical(this._entity.rotation) ? this._entity.valueObject.size_x : this._entity.valueObject.size_y;
         var _loc4_:int = EInteriorItemRotation.isVertical(this._entity.rotation) ? this._entity.valueObject.size_y : this._entity.valueObject.size_x;
         var _loc5_:int = this._entity.position.x;
         while(_loc5_ < this._entity.position.x + _loc3_)
         {
            _loc1_ = this._entity.position.y;
            while(_loc1_ < this._entity.position.y + _loc4_)
            {
               if(_loc5_ >= _loc2_.length && _loc1_ >= _loc2_[0].length)
               {
                  Debug.assert(false,"Couldn\'t place interior item out of bounds");
                  break;
               }
               _loc2_[_loc5_][_loc1_] = this;
               _loc1_++;
            }
            _loc5_++;
         }
      }
      
      private function updatePosition() : void
      {
         var _loc1_:int = 0;
         this._view.currentRotation = this._entity.rotation;
         var _loc2_:String = this._entity.rotation;
         _loc1_ = this._entity.getZPointByRotation(_loc2_,EInteriorItemAssetType.EIIAT_ISO) + this._entity.getOffsetYByRotation(_loc2_);
         this._view.currentView.setPosition(EInteriorItemAssetType.EIIAT_ISO,this._entity.position,_loc1_);
         _loc1_ = this._entity.getZPointByRotation(_loc2_,EInteriorItemAssetType.EIIAT_OBSTACLE) + this._entity.getOffsetYByRotation(_loc2_);
         this._view.currentView.setPosition(EInteriorItemAssetType.EIIAT_OBSTACLE,this._entity.position,_loc1_);
         _loc1_ = this._entity.getZPointByRotation(_loc2_,EInteriorItemAssetType.EIIAT_SHADOW) + this._entity.getOffsetYByRotation(_loc2_);
         this._view.currentView.setPosition(EInteriorItemAssetType.EIIAT_SHADOW,this._entity.position,_loc1_);
      }
      
      protected function updateLandingRectView(param1:Point) : void
      {
         this.updateLandingPoint();
         if(this.isLandingPossibleByPosition(param1))
         {
            this._landingRect.makeGreen();
            this._view.filter = EInteriorItemFilterType.EIIFT_GLOW;
         }
         else
         {
            this._landingRect.makeRed();
            this._view.filter = EInteriorItemFilterType.EIIFT_RED;
         }
      }
      
      protected function updatePositionOnFurnitureMap() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         this.removeFromFurnitureMap();
         var _loc3_:int = EInteriorItemRotation.isVertical(this._entity.rotation) ? this._entity.valueObject.size_x : this._entity.valueObject.size_y;
         var _loc4_:int = EInteriorItemRotation.isVertical(this._entity.rotation) ? this._entity.valueObject.size_y : this._entity.valueObject.size_x;
         var _loc5_:int = this._entity.position.x;
         while(_loc5_ < this._entity.position.x + _loc3_)
         {
            _loc1_ = this._entity.position.y;
            while(_loc1_ < this._entity.position.y + _loc4_)
            {
               if(_loc2_[_loc5_][_loc1_] != EFloorCellType.EFCT_BLOCKED)
               {
                  _loc2_[_loc5_][_loc1_] = this;
               }
               _loc1_++;
            }
            _loc5_++;
         }
      }
      
      protected function removeFromFurnitureMap() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Array = _controllerInterior.locationDialog.furnitureMap[this._entity.floor - 1];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc1_ = 0;
            while(_loc1_ < _loc2_[0].length)
            {
               if(_loc2_[_loc3_][_loc1_] == this)
               {
                  _loc2_[_loc3_][_loc1_] = null;
               }
               _loc1_++;
            }
            _loc3_++;
         }
      }
      
      public function isHitTest(param1:int, param2:int) : Boolean
      {
         return isCompletelyLoaded && this._view.currentView.isHitTest(param1,param2);
      }
      
      protected function addPanelListeners() : void
      {
         this._editorPanel.counterclockwise.handler = this.onButtonClickRotateLeft;
         this._editorPanel.clockwise.handler = this.onButtonClickRotateRight;
         this._editorPanel.confirmPlacing.handler = this.onButtonClickConfirm;
         this._editorPanel.removeItem.handler = this.onButtonClickRemove;
      }
      
      protected function removePanelListeners() : void
      {
         if(this._editorPanel.counterclockwise.hasEventListener(MouseEvent.CLICK))
         {
            this._editorPanel.counterclockwise.removeEventListener(MouseEvent.CLICK,this.onButtonClickRotateLeft);
         }
         if(this._editorPanel.clockwise.hasEventListener(MouseEvent.CLICK))
         {
            this._editorPanel.clockwise.removeEventListener(MouseEvent.CLICK,this.onButtonClickRotateRight);
         }
         if(this._editorPanel.confirmPlacing.hasEventListener(MouseEvent.CLICK))
         {
            this._editorPanel.removeItem.removeEventListener(MouseEvent.CLICK,this.onButtonClickConfirm);
         }
         if(this._editorPanel.removeItem.hasEventListener(MouseEvent.CLICK))
         {
            this._editorPanel.removeItem.removeEventListener(MouseEvent.CLICK,this.onButtonClickRemove);
         }
      }
      
      protected function placeEditorPanel() : void
      {
         var _loc1_:int = this._entity.getZPointByRotation(this._view.currentRotation,EInteriorItemAssetType.EIIAT_ISO);
         var _loc2_:int = this._entity.getOffsetYByRotation(this._view.currentRotation);
         var _loc3_:int = this._view.currentView.x + this._view.widthMax / 2 - this._editorPanel.width / 2 + this._entity.offsetXMin;
         var _loc4_:int = this._view.currentView.y + this._entity.offsetYMin - (_loc1_ + _loc2_) - this._editorPanel.height - 5;
         if(_loc3_ < 6)
         {
            _loc3_ = 6;
         }
         if(_loc3_ > 600 - this._editorPanel.width - 10)
         {
            _loc3_ = 600 - this._editorPanel.width - 10;
         }
         this._editorPanel.moveTo(_loc3_,_loc4_);
      }
      
      protected function dragStart(param1:MouseEvent) : void
      {
         this._isOnDrag = true;
         this._view.currentView.isOnDrag = this._isOnDrag;
         this._editorPanel.hide();
         this._view.currentView.handleMouseUp = true;
         this._offsetOnStartDrag.x = this._view.currentView.x - param1.stageX;
         this._offsetOnStartDrag.y = this._view.currentView.y - param1.stageY;
         _controllerInterior.locationDialog.removeDragListeners();
         _controllerInterior.locationDialog.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onItemDrag);
      }
      
      protected function dragStop(param1:MouseEvent = null) : void
      {
         this._isOnDrag = false;
         this._view.currentView.isOnDrag = this._isOnDrag;
         this._view.currentView.handleMouseUp = false;
         if(this.isLandingPossibleByPosition(this._landingPoint))
         {
            this._entity.position.x = this._landingPoint.x;
            this._entity.position.y = this._landingPoint.y;
         }
         this.updatePosition();
         this.updateLandingRectView(this._entity.position);
         if(this.isLandingPossible)
         {
            this.updatePositionOnFurnitureMap();
         }
         this._landingRect.moveTo(this._landingPoint.x,this._landingPoint.y);
         this.placeEditorPanel();
         this._editorPanel.show();
         _controllerInterior.locationDialog.addDragListeners();
         _controllerInterior.locationDialog.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onItemDrag);
      }
      
      protected function updateLandingPoint() : Point
      {
         var _loc1_:int = this._entity.getZPointByRotation(this._view.currentRotation,EInteriorItemAssetType.EIIAT_ISO);
         var _loc2_:int = this._entity.getOffsetYByRotation(this._view.currentRotation);
         var _loc3_:int = UtilsNumber.roundTo(this._view.currentView.x,50);
         var _loc4_:int = UtilsNumber.roundTo(this._view.currentView.y - (_loc1_ + _loc2_),50);
         this._landingPoint.x = _loc3_ / 50;
         this._landingPoint.y = (_loc4_ - 800) / 50;
         var _loc5_:int = this._entity.width;
         var _loc6_:int = this._entity.height;
         if(this._landingPoint.x + _loc5_ > 12)
         {
            this._landingPoint.x = 12 - _loc5_;
         }
         if(this._landingPoint.x < 0)
         {
            this._landingPoint.x = 0;
         }
         if(this._landingPoint.y + _loc6_ > 12)
         {
            this._landingPoint.y = 12 - _loc6_;
         }
         if(this._landingPoint.y < 0)
         {
            this._landingPoint.y = 0;
         }
         return this._landingPoint;
      }
      
      private function removeItemOverlapped() : void
      {
         var _loc1_:Boolean = _controllerInterior.locationDialog.isOwnHouse;
         super.removeItem(_loc1_);
         if(_loc1_)
         {
            _controllerInterior.save();
         }
      }
      
      override public function removeItem(param1:Boolean = true) : void
      {
         this.isSelected = false;
         this.removeFromFurnitureMap();
         this._view.removeFromLayer(_controllerInterior.locationLayers.mainLayer);
         super.removeItem(param1);
      }
   }
}


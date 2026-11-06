package com.ax3.fishao.locations.privateHouse
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.display.dialogs.BreedingStatusDialog;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.chars.PathMoveStrategy;
   import com.ax3.fishao.locations.decorationMarket.LocationDialogDecorationMarket;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.items.controller.ControllerLocationItem;
   import com.ax3.fishao.locations.items.model.LocationItem;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.objects.ViewBuildingGrid;
   import com.ax3.fishao.locations.objects.ViewDoorPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInterior;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemLocation;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   import com.ax3.fishao.locations.privateHouse.model.EPrivateHouseDoorPosition;
   import com.ax3.fishao.model.InventoryModel;
   import com.ax3.fishao.model.info.UserDecoration;
   import com.ax3.fishao.tutorial.ETutorialType;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.BreederRexFishSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.breeding.ManagerBreeding;
   import com.ax3.fishao.view.dialogs.interior.ManagerInterior;
   import com.ax3.fishao.view.dialogs.location.ManagerLocation;
   import com.ax3.fishao.view.dialogs.moneyTree.model.ManagerMoneyTree;
   import com.ax3.fishao.view.wrappers.BreederRexFishItemWrapper;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.math.limit;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.setTimeout;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.sr.UpdateResp;
   
   public class LocationDialogPrivateHouse extends LocationDialog
   {
      
      private static const ENTER_CHAR_POINT:Point = new Point(300,1300);
      
      private static const SMOOTHNESS_DELAY:Number = 0.5;
      
      private var _buildMode:Boolean = false;
      
      protected var _controllerInterior:ControllerInterior;
      
      protected var _furnitureMap:Array;
      
      protected var blackRectangle:Sprite;
      
      private var _locationModel:LocationModelPrivateHouse;
      
      private var fadeBlackRectangle:Sprite;
      
      private var _userList:Vector.<LocationUser> = new Vector.<LocationUser>();
      
      private var _needToShowUsers:Boolean = false;
      
      private var _playerPositionCurrent:String;
      
      private var _playerPositionNew:String;
      
      private var _locationLayers:LocationLayersPrivateHouse;
      
      private var _isOnDragRoom:Boolean = false;
      
      private var prevY:int;
      
      private var _timeoutAddMoneyTreeReward:uint = 0;
      
      private var _frozenUpdate:Boolean = false;
      
      private var _userInventory:InventoryModel;
      
      private var _managerTutorial:ManagerTutorial;
      
      private var _managerBreeding:ManagerBreeding;
      
      private var _managerInterior:ManagerInterior;
      
      private var _managerLocation:ManagerLocation;
      
      private var _onEnterDoorCallback:Function;
      
      private var _onExitDoorCallback:Function;
      
      private var _isOnChangingPosition:Boolean;
      
      private var _isOnSafeSwitchingFloor:Boolean;
      
      private var _isOnObstacleTrap:Boolean;
      
      public function LocationDialogPrivateHouse(param1:LocationModel)
      {
         super(param1);
         this.init();
      }
      
      private static function placeCharOnEnterPoint(param1:FieldChar) : void
      {
         var _loc2_:String = EPrivateHouseDoorPosition.getDoorByPositions(param1.roomPrevious,param1.roomCurrent);
         param1.moveStrategy.stop();
         switch(_loc2_)
         {
            case EPrivateHouseDoorPosition.EPHDP_LEFT:
               param1.setPositionWithFadeIn(150,PRIVATE_HOUSE_GARDEN_HEIGHT - 35,90);
               param1.forceMoveTo(150,PRIVATE_HOUSE_GARDEN_HEIGHT - 17);
               break;
            case EPrivateHouseDoorPosition.EPHDP_CENTER:
               switch(param1.roomCurrent)
               {
                  case EPlayerPosition.EPP_GARDEN:
                     param1.setPositionWithFadeIn(300,PRIVATE_HOUSE_GARDEN_HEIGHT,-90);
                     break;
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     param1.setPositionWithFadeIn(300,PRIVATE_HOUSE_GARDEN_HEIGHT,90);
                     break;
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                  case EPlayerPosition.EPP_THIRD_FLOOR:
                     param1.setPositionWithFadeIn(300,PRIVATE_HOUSE_GARDEN_HEIGHT - 17,-90);
                     param1.forceMoveTo(300,PRIVATE_HOUSE_GARDEN_HEIGHT - 17);
               }
               break;
            default:
               Debug.assert(false,"Impossible to define position to place character");
         }
      }
      
      private static function moveCharToExitPoint(param1:FieldChar) : void
      {
         var _loc2_:String = EPrivateHouseDoorPosition.getDoorByPositions(param1.roomPrevious,param1.roomCurrent);
         param1.moveStrategy.stop();
         switch(_loc2_)
         {
            case EPrivateHouseDoorPosition.EPHDP_LEFT:
               param1.forceMoveTo(150,PRIVATE_HOUSE_GARDEN_HEIGHT - 35);
               break;
            case EPrivateHouseDoorPosition.EPHDP_CENTER:
               switch(param1.roomCurrent)
               {
                  case EPlayerPosition.EPP_GARDEN:
                     param1.forceMoveTo(300,PRIVATE_HOUSE_GARDEN_HEIGHT);
                     break;
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     param1.forceMoveTo(300,PRIVATE_HOUSE_GARDEN_HEIGHT);
                     break;
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                  case EPlayerPosition.EPP_THIRD_FLOOR:
                     param1.forceMoveTo(300,PRIVATE_HOUSE_GARDEN_HEIGHT - 35);
               }
               break;
            default:
               Debug.assert(false,"Impossible to define position to place character");
         }
      }
      
      public function set isOnObstacleTrap(param1:Boolean) : void
      {
         this._isOnObstacleTrap = param1;
      }
      
      public function get furnitureMap() : Array
      {
         return this._furnitureMap;
      }
      
      public function get controllerInterior() : ControllerInterior
      {
         return this._controllerInterior;
      }
      
      public function set playerPositionCurrent(param1:String) : void
      {
         if(this._playerPositionCurrent == param1)
         {
            return;
         }
         this._playerPositionNew = param1;
         this.onPlayerPositionChanged();
      }
      
      public function get playerPositionCurrent() : String
      {
         return this._playerPositionCurrent;
      }
      
      public function get isOwnHouse() : Boolean
      {
         return this._locationModel.isOwnHouse;
      }
      
      public function get locationLayers() : LocationLayersPrivateHouse
      {
         return this._locationLayers;
      }
      
      override protected function get dynamicGraphicsProgress() : Number
      {
         return this._controllerInterior.dynamicGraphicsProgress;
      }
      
      public function get buildMode() : Boolean
      {
         return this._buildMode;
      }
      
      public function set buildMode(param1:Boolean) : void
      {
         this._buildMode = param1;
         this.onBuildModeUpdated();
         this._locationLayers.updateZSorterState(this._locationLayers.privateHouseWall,!this._buildMode);
         this._locationLayers.updateZSorterState(this._locationLayers.viewDoorCenter.zOrderDoor,!this._buildMode);
         this._locationLayers.updateZSorterState(this._locationLayers.viewDoorCenter.zOrderShadow,!this._buildMode);
         this._locationLayers.updateZSorterState(this._locationLayers.viewDoorCenter.zOrderFrame,!this._buildMode);
         this._locationLayers.updateZSorterState(this._locationLayers.viewDoorLeft.zOrderDoor,!this._buildMode);
         this._locationLayers.updateZSorterState(this._locationLayers.viewDoorLeft.zOrderShadow,!this._buildMode);
         this._locationLayers.updateZSorterState(this._locationLayers.viewDoorLeft.zOrderFrame,!this._buildMode);
      }
      
      public function get obstacleMap() : BitmapData
      {
         if(this._locationLayers == null)
         {
            return null;
         }
         return this._locationLayers.getObstacleMap();
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers.viewDoorCenter != null && param3.roomCurrent != EPlayerPosition.EPP_GARDEN && this._locationLayers.viewDoorCenter.hitTest(param1,param2,false) || this._locationLayers.viewDoorLeft != null && this._locationLayers.viewDoorLeft.hitTest(param1,param2,false) || !this._buildMode && this._controllerInterior.isHitTest(param1,param2);
      }
      
      public function get interiorItemsLocation() : String
      {
         var _loc1_:String = null;
         switch(locationModel.absoluteId)
         {
            case LocationConfig.FRIENDS_PRIVATE_HOUSE.id:
               _loc1_ = EInteriorItemLocation.EIIL_FRIENDS_HOUSE;
               break;
            case LocationConfig.PRIVATE_HOUSE.id:
               _loc1_ = EInteriorItemLocation.EIIL_PRIVATE_HOUSE;
               break;
            case LocationConfig.SUBLOCATION_1_DECORMARKET.id:
               _loc1_ = EInteriorItemLocation.EIIL_DECORATION_SHOP;
         }
         return _loc1_;
      }
      
      public function get isEnterAnyDoor() : Boolean
      {
         var _loc1_:Boolean = true;
         if(_playerChar != null && _playerChar.position != null)
         {
            _loc1_ = _playerChar.position.y <= PRIVATE_HOUSE_GARDEN_HEIGHT;
         }
         return _loc1_;
      }
      
      public function get isEnterCenterDoor() : Boolean
      {
         var _loc1_:Boolean = true;
         if(_playerChar != null && _playerChar.position != null)
         {
            _loc1_ = _playerChar.position.x >= PRIVATE_HOUSE_CENTER_DOOR_X_MIN;
         }
         return _loc1_;
      }
      
      protected function updateDoors() : void
      {
         this._locationLayers.viewDoorCenter.isEnabled = true;
         this._locationLayers.viewDoorLeft.isEnabled = true;
         switch(this._playerPositionCurrent)
         {
            case EPlayerPosition.EPP_FIRST_FLOOR:
               this._locationLayers.viewDoorCenter.viewType = ViewDoorPrivateHouse.VIEW_TYPE_GARDEN;
               this._locationLayers.viewDoorLeft.viewType = ViewDoorPrivateHouse.VIEW_TYPE_STAIRS_UP;
               this._locationLayers.viewDoorLeft.isEnabled = this._controllerInterior.isEnabledFloor(2);
               break;
            case EPlayerPosition.EPP_SECOND_FLOOR:
               this._locationLayers.viewDoorCenter.viewType = ViewDoorPrivateHouse.VIEW_TYPE_STAIRS_UP;
               this._locationLayers.viewDoorLeft.viewType = ViewDoorPrivateHouse.VIEW_TYPE_STAIRS_DOWN;
               this._locationLayers.viewDoorCenter.isEnabled = this._controllerInterior.isEnabledFloor(3);
               break;
            case EPlayerPosition.EPP_THIRD_FLOOR:
               this._locationLayers.viewDoorLeft.isEnabled = false;
               this._locationLayers.viewDoorCenter.viewType = ViewDoorPrivateHouse.VIEW_TYPE_STAIRS_DOWN;
               break;
            case EPlayerPosition.EPP_GARDEN:
               this._locationLayers.viewDoorCenter.itemsVisibility = false;
               this._locationLayers.viewDoorLeft.isEnabled = false;
         }
      }
      
      protected function onBuildModeUpdated() : void
      {
         var _loc1_:FieldChar = null;
         if(this._buildMode)
         {
            player.freeze();
            gui.deactivate();
         }
         else
         {
            player.unfreeze();
            gui.activate();
         }
         this.updateGridView();
         this._locationLayers.viewBuildingGrid.visible = this._buildMode;
         this._locationLayers.privateHouseEntrance.visible = !this._buildMode && this._playerPositionCurrent == EPlayerPosition.EPP_FIRST_FLOOR;
         gui.visible = !this._buildMode;
         this.setUIVisible(!this._buildMode);
         for each(_loc1_ in _charList)
         {
            _loc1_.visible = !this._buildMode;
         }
      }
      
      protected function onPlayerPositionChanged() : void
      {
         this._frozenUpdate = true;
         this._isOnChangingPosition = true;
         switch(this._playerPositionCurrent)
         {
            case EPlayerPosition.EPP_FIRST_FLOOR:
               switch(this._playerPositionNew)
               {
                  case EPlayerPosition.EPP_GARDEN:
                     _playerChar.freeze();
                     this.fadeBlack(this.setCharToGarden);
                     break;
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                     this.enterDoor(this.switchFloor);
               }
               break;
            case EPlayerPosition.EPP_SECOND_FLOOR:
               switch(this._playerPositionNew)
               {
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     this.enterDoor(this.switchFloor);
                     break;
                  case EPlayerPosition.EPP_THIRD_FLOOR:
                     this.enterDoor(this.switchFloor);
               }
               break;
            case EPlayerPosition.EPP_THIRD_FLOOR:
               switch(this._playerPositionNew)
               {
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                     this.enterDoor(this.switchFloor);
               }
               break;
            case EPlayerPosition.EPP_GARDEN:
               switch(this._playerPositionNew)
               {
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     _playerChar.freeze();
                     this.fadeBlack(this.setCharToHouse);
               }
         }
      }
      
      private function onBreedingDialogClosed(param1:Event) : void
      {
         if(breederDialog != null && breederDialog.hasEventListener(BreederRexFishSwfDialog.BREEDER_DIALOG_CLOSED))
         {
            breederDialog.removeEventListener(BreederRexFishSwfDialog.BREEDER_DIALOG_CLOSED,this.onBreedingDialogClosed);
         }
         breederDialog = null;
         (locationModel as LocationModelPrivateHouse).breederRexNPC.breedingDialogClosed();
      }
      
      private function onBreedingStatusDialogClosed(param1:Event) : void
      {
         var _loc2_:BreedingStatusDialog = app.dialogFactory.getBreedingStatusDialog();
         if(_loc2_.hasEventListener(BreedingStatusDialog.BREEDING_STATUS_DIALOG_CLOSED))
         {
            _loc2_.removeEventListener(BreedingStatusDialog.BREEDING_STATUS_DIALOG_CLOSED,this.onBreedingStatusDialogClosed);
         }
         (locationModel as LocationModelPrivateHouse).breederRexNPC.breedingStatusDialogClosed();
         breederDialog = null;
      }
      
      private function onBreedFish(param1:MouseEvent) : void
      {
         var _loc2_:Number = param1.localX;
         var _loc3_:int = param1.localY;
         this._managerBreeding.breedFish(_loc2_,Boolean(_loc3_));
         (locationModel as LocationModelPrivateHouse).breederRexNPC.tryBreed(_loc2_,_loc3_);
         breederDialog = null;
      }
      
      override protected function onLoadDynamicGraphicsComplete() : void
      {
         super.onLoadDynamicGraphicsComplete();
         onEnterLocationResponse(null);
         this.activateLoc();
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this.prevY = param1.stageY;
         this._isOnDragRoom = true;
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this._isOnDragRoom = false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this._isOnDragRoom)
         {
            _loc2_ = (param1.stageY - this.prevY) * -3;
            this.prevY = param1.stageY;
            _loc3_ = 1.5;
            if(this._locationLayers != null)
            {
               _loc4_ = this._locationLayers.scrollRect;
            }
            if(_playerChar != null && _loc4_ != null)
            {
               _loc5_ = 0;
               _loc6_ = _loc2_;
               if(_loc5_ * _loc5_ + _loc6_ * _loc6_ > 500 * 500)
               {
                  if(_playerChar != null && _loc4_ != null)
                  {
                     _loc4_.x = Math.round(limit(_playerChar.graphic.x - scrollRect.width / 2,0,this._locationLayers.fullWidth - scrollRect.width));
                     _loc4_.y = Math.round(limit(_playerChar.graphic.y - scrollRect.height / 2,0,this._locationLayers.fullHeight - scrollRect.height));
                     _loc4_.width = scrollRect.width;
                     _loc4_.height = scrollRect.height;
                     _loc4_ = this.inspectRectByLocationLayersSize(_loc4_);
                     this._locationLayers.scrollRect = _loc4_;
                  }
               }
               else
               {
                  _loc6_ = int(_loc6_ * (0.1 * _loc3_));
                  if(_loc6_ != 0)
                  {
                     _loc4_.y += _loc6_;
                     _loc4_.y = Math.round(limit(_loc4_.y,600,this._locationLayers.fullHeight - scrollRect.height + 100));
                     _loc4_ = this.inspectRectByLocationLayersSize(_loc4_);
                     this._locationLayers.scrollRect = _loc4_;
                  }
               }
            }
         }
         param1.stopPropagation();
      }
      
      override protected function onClick(param1:MouseEvent) : void
      {
         if(!this._buildMode)
         {
            super.onClick(param1);
         }
      }
      
      override protected function onActionWithResp(param1:ResponseNpcTalk) : void
      {
         if(param1.name == ENpcName.ENN_REX)
         {
            this.processBreederRexChat(param1);
         }
      }
      
      private function processBreederRexChat(param1:ResponseNpcTalk) : void
      {
         var _loc2_:BreedingStatusDialog = null;
         if(param1.message == "open_breeder_dialog")
         {
            if(GameSwf.inspectGuestLockedAction())
            {
               this._locationModel.breederRexNPC.dialogStep = 0;
               this._locationModel.breederRexNPC.noTalk();
               return;
            }
            breederDialog = app.dialogFactory.getBreederRexFishSwfDialog();
            breederDialog.addEventListener(BreederRexFishSwfDialog.BREEDER_DIALOG_CLOSED,this.onBreedingDialogClosed);
            breederDialog.addEventListener(BreederRexFishItemWrapper.BREEDER_BUTTON_CLICK,this.onBreedFish);
            breederDialog.updateFishes();
            breederDialog.show();
         }
         else if(param1.message == "open_breeding_status_dialog")
         {
            this._locationModel.breederRexNPC.dialogStep = 0;
            _loc2_ = app.dialogFactory.getBreedingStatusDialog();
            _loc2_.addEventListener(BreedingStatusDialog.BREEDING_STATUS_DIALOG_CLOSED,this.onBreedingStatusDialogClosed);
            _loc2_.show();
         }
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         LocationLayers.charMessagesLayer.addChild(this.blackRectangle);
         LocationLayers.charMessagesLayer.addChild(this.fadeBlackRectangle);
         if(!(this is LocationDialogDecorationMarket))
         {
            this._locationModel.updateBoardText();
            this._locationModel.updateFloorAccess();
         }
         this._locationLayers.viewMoneyTree.isEnabled = this.isOwnHouse;
      }
      
      protected function onGetInteriorData() : void
      {
         this._controllerInterior.interiorData = this._managerInterior.currentLocationItems;
         this._controllerInterior.load();
         if(this._controllerInterior.interiorDataToLoadLength == 0)
         {
            onLoadInteriorComplete();
         }
      }
      
      protected function onUpdateInteriorData() : void
      {
         this._controllerInterior.interiorData = this._managerInterior.currentLocationItems;
         this._controllerInterior.onInteriorUpdate();
      }
      
      protected function onUserChangedPosition() : void
      {
         var _loc1_:LocationUser = this._locationModel.getLocationUser(this._managerLocation.userChangedPositionLogin);
         if(_loc1_ != null)
         {
            _loc1_.fieldChar.roomCurrent = this._managerLocation.userChangedPositionPosition;
            if(_loc1_.fieldChar.roomCurrent == this._playerPositionCurrent)
            {
               placeCharOnEnterPoint(_loc1_.fieldChar);
            }
            else if(_loc1_.fieldChar.roomPrevious == this._playerPositionCurrent)
            {
               moveCharToExitPoint(_loc1_.fieldChar);
            }
         }
      }
      
      override protected function onProgramMoveFinished() : void
      {
         super.onProgramMoveFinished();
         if(this._onEnterDoorCallback != null)
         {
            _playerChar.freeze();
            this.fadeBlack(this._onEnterDoorCallback);
         }
         if(this._onExitDoorCallback != null)
         {
            this._onExitDoorCallback();
         }
      }
      
      private function onChangePositionAnimationComplete() : void
      {
         this._frozenUpdate = false;
         this._onExitDoorCallback = null;
      }
      
      private function onHideBlackRectFloors() : void
      {
         this.fadeBlackRectangle.visible = false;
         movePlayerCharTo(new Point(_playerChar.position.x,PRIVATE_HOUSE_GARDEN_HEIGHT - 17));
      }
      
      private function onHideBlackRectBackyard() : void
      {
         this.resetMovement();
         this._frozenUpdate = false;
         this.fadeBlackRectangle.visible = false;
      }
      
      private function init() : void
      {
         this._managerTutorial = GameSwf.instance.managerTutorial;
         this._managerBreeding = GameSwf.instance.managerBreeding;
         this._managerInterior = GameSwf.instance.managerInterior;
         this._managerLocation = GameSwf.instance.managerLocation;
         this._controllerInterior = new ControllerInterior();
         this._controllerInterior.locationDialog = this;
         this._controllerInterior.interiorItemsPlace = this.interiorItemsLocation;
         this._userInventory = app.user.inventory;
         this._locationModel = locationModel as LocationModelPrivateHouse;
         this._playerPositionCurrent = EPlayerPosition.EPP_FIRST_FLOOR;
         this._furnitureMap = [];
         this._furnitureMap.push(LocationModelPrivateHouse.generateFurnitureMapFloorFirst());
         this._furnitureMap.push(LocationModelPrivateHouse.generateFurnitureMapFloorSecond());
         this._furnitureMap.push(LocationModelPrivateHouse.generateFurnitureMapFloorThird());
         this.blackRectangle = new Sprite();
         this.blackRectangle.graphics.beginFill(0);
         this.blackRectangle.graphics.drawRect(0,0,610,800);
         this.blackRectangle.graphics.endFill();
         this.blackRectangle.x = 0;
         this.blackRectangle.y = -200;
         this.fadeBlackRectangle = new Sprite();
         this.fadeBlackRectangle.graphics.beginFill(0);
         this.fadeBlackRectangle.graphics.drawRect(0,0,610,1402);
         this.fadeBlackRectangle.graphics.endFill();
         this.fadeBlackRectangle.x = 0;
         this.fadeBlackRectangle.y = 0;
         this.fadeBlackRectangle.alpha = 0;
         this.fadeBlackRectangle.visible = false;
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersPrivateHouse;
         this._controllerInterior.locationLayers = this._locationLayers;
         return this._locationLayers;
      }
      
      override public function update(param1:uint, param2:uint) : void
      {
         if(this._locationLayers != null)
         {
            super.update(param1,param2);
         }
         if(this is LocationDialogPrivateHouse && _playerChar != null)
         {
            this.inspectPlayerPosition();
         }
      }
      
      override protected function handleKeyPressed() : void
      {
         if(this._frozenUpdate)
         {
            return;
         }
         super.handleKeyPressed();
      }
      
      private function updateItemsVisibility() : void
      {
         this._locationLayers.privateGardenGrass.visible = this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN;
         this._locationLayers.privateGardenBush_1.visible = this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN;
         this._locationLayers.privateGardenBush_2.visible = this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN;
         this._locationLayers.privateHouseWall.visible = this._playerPositionCurrent != EPlayerPosition.EPP_GARDEN;
         this._locationLayers.privateHouseFloor.visible = this._playerPositionCurrent != EPlayerPosition.EPP_GARDEN;
         this.updateMoneyTreeItemsVisibility();
         this._controllerInterior.updateItemsVisibility();
         this.updateDoors();
      }
      
      private function updateGridView() : void
      {
         switch(this._playerPositionCurrent)
         {
            case EPlayerPosition.EPP_FIRST_FLOOR:
               this._locationLayers.viewBuildingGrid.viewType = ViewBuildingGrid.TYPE_DEFAULT;
               break;
            case EPlayerPosition.EPP_SECOND_FLOOR:
            case EPlayerPosition.EPP_THIRD_FLOOR:
               this._locationLayers.viewBuildingGrid.viewType = ViewBuildingGrid.TYPE_EMPTY;
         }
      }
      
      private function updateExitLocation() : void
      {
         switch(this._playerPositionCurrent)
         {
            case EPlayerPosition.EPP_FIRST_FLOOR:
               this._locationLayers.locationExit = true;
               break;
            case EPlayerPosition.EPP_SECOND_FLOOR:
               this._locationLayers.locationExit = false;
               break;
            case EPlayerPosition.EPP_THIRD_FLOOR:
               this._locationLayers.locationExit = false;
         }
      }
      
      private function enterDoor(param1:Function) : void
      {
         movePlayerCharTo(new Point(_playerChar.position.x,PRIVATE_HOUSE_GARDEN_HEIGHT - 35));
         this._onEnterDoorCallback = param1;
      }
      
      private function setCharToGarden() : void
      {
         this.updatePosition();
         this._locationLayers.viewMoneyTree.show();
         this.updateItemsVisibility();
         this.forceCameraUpdate();
         this._isOnChangingPosition = false;
         this.blackRectangle.y = PRIVATE_HOUSE_HEIGHT_WITH_WALL;
         FishaoSoundManager.playLoop(FishaoSoundManager.SFX_001_AMB_Laketown);
         TweenCube.to(this.fadeBlackRectangle,SMOOTHNESS_DELAY,{"alpha":0},{"onComplete":this.onHideBlackRectBackyard});
      }
      
      private function setCharToHouse() : void
      {
         this.updatePosition();
         this._locationLayers.viewMoneyTree.hide();
         this.updateItemsVisibility();
         this.forceCameraUpdate();
         this._isOnChangingPosition = false;
         this.blackRectangle.y = 10 - this._locationLayers.privateHouseWall.height;
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_001_AMB_Laketown);
         TweenCube.to(this.fadeBlackRectangle,SMOOTHNESS_DELAY,{"alpha":0},{"onComplete":this.onHideBlackRectBackyard});
      }
      
      private function resetMovement() : void
      {
         _playerChar.unfreeze();
         var _loc1_:PathMoveStrategy = _playerChar.moveStrategy as PathMoveStrategy;
         if(_loc1_ != null)
         {
            _loc1_.stop();
         }
      }
      
      private function switchFloor() : void
      {
         this.updatePosition();
         this.resetMovement();
         this._onEnterDoorCallback = null;
         this._onExitDoorCallback = this.onChangePositionAnimationComplete;
         this._isOnChangingPosition = false;
         this._isOnSafeSwitchingFloor = true;
         _playerChar.position.rotation = 90;
         this.updateItemsVisibility();
         this.updateExitLocation();
         TweenCube.to(this.fadeBlackRectangle,SMOOTHNESS_DELAY,{"alpha":0},{"onComplete":this.onHideBlackRectFloors});
      }
      
      private function updatePosition() : void
      {
         this._playerPositionCurrent = this._playerPositionNew;
         _playerChar.roomCurrent = this._playerPositionCurrent;
         this._managerLocation.changePosition(this._playerPositionCurrent);
      }
      
      override protected function inspectPlayerPosition() : void
      {
         super.inspectPlayerPosition();
         this.updatePlayerPosition();
         this.inspectMoneyTreeReward();
         if(this._isOnChangingPosition)
         {
            return;
         }
         this.updateCharsVisibility();
      }
      
      protected function updateCharsVisibility() : void
      {
         var _loc1_:String = null;
         var _loc2_:FieldChar = null;
         if(locationModel != null && locationModel.locationUserByUsername != null)
         {
            for(_loc1_ in locationModel.locationUserByUsername)
            {
               if(_loc1_ != app.user.username)
               {
                  _loc2_ = getCharByUsername(_loc1_);
                  if(_loc2_ != null && _playerChar != null)
                  {
                     if(!_loc2_.isOnForceMove)
                     {
                        _loc2_.graphic.visible = this._playerPositionCurrent == _loc2_.roomCurrent;
                        if(_loc2_.visible != true)
                        {
                           _loc2_.chat.visible = false;
                           if(_loc2_.controllerUserPopup.view.source.visible)
                           {
                              _loc2_.controllerUserPopup.hide();
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected function updatePlayerPosition() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         if(_playerChar == null || _playerChar.programmedMove || this._frozenUpdate)
         {
            return;
         }
         if(this._isOnObstacleTrap)
         {
            this._isOnObstacleTrap = _playerChar.isAtObstacle() || _playerChar.isFreezed;
            this._isOnSafeSwitchingFloor = true;
            return;
         }
         if(this._isOnSafeSwitchingFloor)
         {
            _loc1_ = _playerChar.position.y > PRIVATE_HOUSE_GARDEN_HEIGHT;
            _loc2_ = _playerChar.position.y < PRIVATE_HOUSE_GARDEN_HEIGHT - 20;
            this._isOnSafeSwitchingFloor = !_loc1_ && !_loc2_;
            return;
         }
         if(this.isEnterAnyDoor && this._playerPositionCurrent != EPlayerPosition.EPP_GARDEN)
         {
            switch(this._playerPositionCurrent)
            {
               case EPlayerPosition.EPP_FIRST_FLOOR:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = EPlayerPosition.EPP_GARDEN;
                  }
                  else
                  {
                     this.playerPositionCurrent = EPlayerPosition.EPP_SECOND_FLOOR;
                  }
                  break;
               case EPlayerPosition.EPP_SECOND_FLOOR:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = EPlayerPosition.EPP_THIRD_FLOOR;
                  }
                  else
                  {
                     this.playerPositionCurrent = EPlayerPosition.EPP_FIRST_FLOOR;
                  }
                  break;
               case EPlayerPosition.EPP_THIRD_FLOOR:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = EPlayerPosition.EPP_SECOND_FLOOR;
                  }
            }
         }
         else if(!this.isEnterAnyDoor)
         {
            switch(this._playerPositionCurrent)
            {
               case EPlayerPosition.EPP_GARDEN:
                  if(this.isEnterCenterDoor)
                  {
                     this.playerPositionCurrent = EPlayerPosition.EPP_FIRST_FLOOR;
                  }
            }
         }
      }
      
      protected function fadeBlack(param1:Function) : void
      {
         this.fadeBlackRectangle.visible = true;
         TweenCube.to(this.fadeBlackRectangle,SMOOTHNESS_DELAY,{"alpha":1},{"onComplete":param1});
      }
      
      override protected function inspectRectByLocationLayersSize(param1:Rectangle) : Rectangle
      {
         var _loc2_:Number = NaN;
         if(height >= PRIVATE_HOUSE_HEIGHT_WITH_WALL)
         {
            _loc2_ = PRIVATE_HOUSE_HEIGHT_WITH_WALL;
         }
         if(this._locationLayers.fullWidth <= scrollRect.width)
         {
            this._locationLayers.x = Math.round(scrollRect.width / 2 - this._locationLayers.fullWidth / 2);
            param1.x = 0;
            param1.width = this._locationLayers.fullWidth;
         }
         else
         {
            this._locationLayers.x = 0;
         }
         if(_loc2_ <= scrollRect.height)
         {
            this._locationLayers.y = Math.round(scrollRect.height / 2 - _loc2_ / 2);
            if(_playerChar != null && this._playerPositionCurrent != EPlayerPosition.EPP_GARDEN && height >= PRIVATE_HOUSE_HEIGHT_WITH_WALL)
            {
               param1.y = PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
            }
            else if(_playerChar == null)
            {
               param1.y = PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
            }
            else
            {
               param1.y = 0;
            }
            param1.height = _loc2_;
         }
         else if(_playerChar == null)
         {
            param1.y = this._locationLayers.fullHeight - height;
         }
         else
         {
            this._locationLayers.y = 0;
         }
         return param1;
      }
      
      override public function moveCameraToChar(param1:Number) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Rectangle = null;
         if(this._buildMode || this._frozenUpdate)
         {
            return;
         }
         if(this._locationLayers != null)
         {
            _loc2_ = this._locationLayers.scrollRect;
         }
         if(_playerChar != null && _loc2_ != null)
         {
            _loc3_ = scrollRect.width / 2;
            _loc4_ = scrollRect.height / 2;
            _loc5_ = 0;
            if(_playerChar.position.x > _loc3_ && _playerChar.position.x < this._locationLayers.fullWidth - _loc3_)
            {
               _loc5_ = _playerChar.position.x - (_loc2_.x + scrollRect.width / 2);
            }
            else if(_loc2_.x > 0 && _loc2_.x + _loc2_.width < this._locationLayers.fullWidth)
            {
               _loc5_ = _playerChar.position.x - (_loc2_.x + scrollRect.width / 2);
            }
            _loc6_ = 0;
            _loc7_ = _playerChar.position.y;
            _loc8_ = _gui.mainMenu.height;
            if(_loc2_.y >= 0 && _loc2_.y + _loc2_.height <= this._locationLayers.fullHeight + _loc8_)
            {
               if(this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN && _loc7_ <= PRIVATE_HOUSE_GARDEN_HEIGHT)
               {
                  _loc6_ = _loc7_ - (_loc2_.y + _loc4_);
               }
               else if(this._playerPositionCurrent != EPlayerPosition.EPP_GARDEN && _loc7_ > PRIVATE_HOUSE_GARDEN_HEIGHT - PRIVATE_HOUSE_WALL_HEIGHT)
               {
                  _loc6_ = _loc7_ - (_loc2_.y + _loc4_);
               }
            }
            Watch.change("dY",_loc6_);
            if(_loc5_ * _loc5_ + _loc6_ * _loc6_ > 500 * 500)
            {
               if(_playerChar != null && _loc2_ != null)
               {
                  _loc2_.x = limit(_playerChar.graphic.x - scrollRect.width / 2,0,this._locationLayers.fullWidth - scrollRect.width);
                  _loc2_.y = limit(_playerChar.graphic.y - scrollRect.height / 2,0,this._locationLayers.fullHeight + _gui.mainMenu.height - scrollRect.height);
                  _loc2_.width = scrollRect.width;
                  _loc2_.height = scrollRect.height;
               }
            }
            else
            {
               _loc5_ = int(_loc5_ * (0.1 * param1));
               _loc6_ = int(_loc6_ * (0.1 * param1));
               if(_loc5_ != 0 || _loc6_ != 0)
               {
                  _loc2_.x += _loc5_;
                  _loc2_.y += _loc6_;
                  _loc2_.x = limit(_loc2_.x,0,this._locationLayers.fullWidth - scrollRect.width);
                  if(this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN)
                  {
                     _loc2_.y = limit(_loc2_.y,0,PRIVATE_HOUSE_GARDEN_HEIGHT + _gui.mainMenu.height - scrollRect.height);
                  }
                  else
                  {
                     _loc2_.y = limit(_loc2_.y,PRIVATE_HOUSE_GARDEN_HEIGHT - PRIVATE_HOUSE_WALL_HEIGHT,this._locationLayers.fullHeight + _gui.mainMenu.height - scrollRect.height);
                  }
                  _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
                  this._locationLayers.scrollRect = _loc2_;
                  FieldChar.mapOffset.x = _loc2_.x;
                  FieldChar.mapOffset.y = _loc2_.y;
               }
            }
            _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
            this._locationLayers.scrollRect = _loc2_;
            FieldChar.mapOffset.x = _loc2_.x;
            FieldChar.mapOffset.y = _loc2_.y;
         }
         if(this._locationLayers != null && this._locationLayers.scrollRect != null)
         {
            _loc9_ = this._locationLayers.scrollRect;
            FieldChar.mapOffset.x = _loc9_.x;
            FieldChar.mapOffset.y = _loc9_.y;
         }
         _tutorialHelpers.helperMask.updateMask();
      }
      
      override protected function createFieldChars() : void
      {
         var _loc1_:FieldChar = null;
         for each(_loc1_ in _charList)
         {
            if(!(_loc1_ is NPC && (_loc1_ as NPC).npcName == "Breeder Rex" && this.isOwnHouse))
            {
               createFieldChar(_loc1_);
            }
         }
      }
      
      override protected function loadDynamicGraphics(param1:ServerResp) : void
      {
         var response:ServerResp = param1;
         var resp:UpdateResp = null;
         try
         {
            resp = response as UpdateResp;
            if(resp.hasDataProperty("money_tree_level"))
            {
               this._locationLayers.viewMoneyTree.level = resp.getIntData("money_tree_level");
            }
            this._managerInterior.getLocationItems(this._locationModel.getOwnerUsername());
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("PrivateHouseLocationDialog.loadDynamicGraphics ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
      }
      
      public function activateLoc() : void
      {
         var _loc1_:LocationUser = null;
         this.tryAddMoneyTreeReward();
         this.updateItemsVisibility();
         this.updateExitLocation();
         this._needToShowUsers = true;
         this._isOnChangingPosition = false;
         _gui.mainMenu.tournamentIcon.disable();
         for each(_loc1_ in this._userList)
         {
            this.processLocationUser(_loc1_);
         }
         this._userList = new Vector.<LocationUser>();
         tryCleanupLoadingIndicator();
         Listeners.addEventListener(this,this._locationLayers,MouseEvent.CLICK,this.onClick);
         Listeners.addEventListener(this,this._locationLayers,MouseEvent.MOUSE_MOVE,onMove);
         Listeners.addEventListener(this,this._locationLayers,MouseEvent.DOUBLE_CLICK,onDoubleClick);
         updateCenterToRect();
         if(this.locationModel.id == LocationConfig.PRIVATE_HOUSE.id)
         {
            GameSwf.instance.managerTutorial.tryStartTutorialByType(ETutorialType.ETT_DECORATION);
         }
         if(this._managerTutorial.getTutorial(ETutorialType.ETT_DECORATION).isComplete || !this.isOwnHouse)
         {
            _programmedCharMoveTarget = ENTER_CHAR_POINT;
            if(_playerChar != null)
            {
               _playerChar.programmedMove = true;
               _playerChar.onMouseClick(_programmedCharMoveTarget.x,_programmedCharMoveTarget.y);
            }
         }
         if(Debug.AUTO_SELECT_BACKYARD)
         {
         }
      }
      
      override protected function create() : void
      {
         var _loc1_:String = null;
         this.createFieldChars();
         if(_scrollRect != null)
         {
            _scrollRect = this.inspectRectByLocationLayersSize(_scrollRect);
            this._locationLayers.scrollRect = _scrollRect;
         }
         TweenCube.to(_gui,1,{"alpha":1});
         _scrollRect = null;
         if(_waitForViewLoadUsernames != null && _waitForViewLoadUsernames.length > 0)
         {
            for each(_loc1_ in _waitForViewLoadUsernames)
            {
               GameSwf.charsManager.getViewForCallback(_loc1_,updateCharView,_loc1_);
            }
            _waitForViewLoadUsernames = [];
         }
         Listeners.addEventListener(this,locationModel,LocationModelEvent.ENTER_TO_LOCATION,onEnterLocationResponse);
         if(this._locationLayers)
         {
            activateLocation();
         }
         _playerMakeAnyMove = true;
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_001_AMB_Laketown);
         locationModel.sendEnterToLocation();
      }
      
      override public function wakeUp() : void
      {
      }
      
      public function addDragListeners() : void
      {
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
      }
      
      public function removeDragListeners() : void
      {
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
      }
      
      private function setUIVisible(param1:Boolean) : void
      {
         if(!this.isOwnHouse)
         {
            return;
         }
         _gui.privateHouseEditingMode(param1);
      }
      
      override protected function addChar(param1:FieldChar, param2:String) : void
      {
         if(param1 is NPC && (param1 as NPC).npcName == ENpcName.ENN_REX)
         {
            if(!this.isOwnHouse)
            {
               return;
            }
         }
         super.addChar(param1,param2);
         if(this._buildMode)
         {
            param1.visible = false;
         }
      }
      
      public function checkBreedingResult() : void
      {
         this._locationModel.breederRexNPC.breedingFinishedCheck();
      }
      
      public function tryAddMoneyTreeReward() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:LocationItem = null;
         var _loc4_:Array = null;
         if(!this.isOwnHouse)
         {
            return;
         }
         if(this._locationLayers == null || this._locationLayers.viewMoneyTree == null)
         {
            this._timeoutAddMoneyTreeReward = setTimeout(this.tryAddMoneyTreeReward,500);
            return;
         }
         var _loc5_:ManagerMoneyTree = GameSwf.instance.managerMoneyTree;
         var _loc6_:Array = _loc5_.fishcoinsPositions;
         for each(_loc1_ in _loc6_)
         {
            _loc2_ = new Point(_loc1_.x,_loc1_.y);
            _loc2_.x += this._locationLayers.viewMoneyTree.source.x;
            _loc2_.y += this._locationLayers.viewMoneyTree.source.y;
            _loc3_ = new LocationItem(ResourceType.FISHCOINS.id,0,_loc2_,_loc1_);
            _locationItems.addItem(_loc3_);
         }
         _loc4_ = _loc5_.fishbucksPositions;
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = new Point(_loc1_.x,_loc1_.y);
            _loc2_.x += this._locationLayers.viewMoneyTree.source.x;
            _loc2_.y += this._locationLayers.viewMoneyTree.source.y;
            _loc3_ = new LocationItem(ResourceType.FISHBUCKS.id,0,_loc2_,_loc1_);
            _locationItems.addItem(_loc3_);
         }
         this.updateMoneyTreeItemsVisibility();
      }
      
      private function inspectMoneyTreeReward() : void
      {
         if(this._locationLayers == null || _playerChar == null)
         {
            return;
         }
         _locationItems.tryCollectLocationItemAt(_playerChar.graphic.x,_playerChar.graphic.y,8);
      }
      
      public function addDecorationFromInventory(param1:int, param2:int) : void
      {
         if(!this.isOwnHouse)
         {
            return;
         }
         this._controllerInterior.addDecorationFromInventory(param1,param2);
      }
      
      public function moveItemToInventory(param1:int, param2:int) : void
      {
         var _loc3_:UserDecoration = new UserDecoration(null);
         _loc3_.id = param1;
         _loc3_.decoId = param2;
         _loc3_.infoId = param2;
         _loc3_.type = ResourceType.DECORATION.id;
         _loc3_.quantity = 1;
         _loc3_.worth = 0;
         this._userInventory.decoration.push(_loc3_);
      }
      
      public function removeItemFromInventory(param1:int) : void
      {
         var _loc2_:UserDecoration = this._userInventory.getResource(param1,ResourceType.DECORATION.id) as UserDecoration;
         this._userInventory.removeResource(_loc2_);
      }
      
      override protected function processLocationUser(param1:LocationUser) : void
      {
         if(!this._needToShowUsers)
         {
            this._userList.push(param1);
            return;
         }
         super.processLocationUser(param1);
      }
      
      override protected function enterToSublocation(param1:int) : void
      {
         if(param1 == 300)
         {
            GameSwf.instance.exitVirtualLocationThroughDoor(LocationConfig.LOCATION_2_RIO.id);
         }
         else
         {
            super.enterToSublocation(param1);
         }
      }
      
      private function forceCameraUpdate() : void
      {
         this._frozenUpdate = false;
         this.moveCameraToChar(1);
         this._frozenUpdate = true;
      }
      
      private function updateMoneyTreeItemsVisibility() : void
      {
         var _loc1_:ControllerLocationItem = null;
         var _loc2_:Array = null;
         if(!this.isOwnHouse)
         {
            return;
         }
         var _loc3_:Array = _locationItems.findAllWithType(ResourceType.FISHCOINS.id);
         for each(_loc1_ in _loc3_)
         {
            _loc1_.view.source.visible = this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN;
         }
         _loc2_ = _locationItems.findAllWithType(ResourceType.FISHBUCKS.id);
         for each(_loc1_ in _loc2_)
         {
            _loc1_.view.source.visible = this._playerPositionCurrent == EPlayerPosition.EPP_GARDEN;
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_INTERIOR_GET_DATA:
               this.onGetInteriorData();
               break;
            case EControllerUpdate.ECU_INTERIOR_UPDATE:
               this.onUpdateInteriorData();
               this.updateDoors();
               break;
            case EControllerUpdate.ECU_LOCATION_USER_CHANGE_POSITION:
               this.onUserChangedPosition();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}


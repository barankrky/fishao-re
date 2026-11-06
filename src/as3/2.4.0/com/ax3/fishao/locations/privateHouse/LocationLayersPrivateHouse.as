package com.ax3.fishao.locations.privateHouse
{
   import com.ax3.fishao.display.panels.EditorPanelWrapper;
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewBoardFish;
   import com.ax3.fishao.locations.objects.ViewBuildingGrid;
   import com.ax3.fishao.locations.objects.ViewDoorPrivateHouse;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class LocationLayersPrivateHouse extends LocationLayers
   {
      
      private var _viewMoneyTree:ViewMoneyTree;
      
      public var privateHouseWall:MovieClip;
      
      public var privateHouseFloor:MovieClip;
      
      public var privateHouseEntrance:MovieClip;
      
      public var privateHouseEditorPanel:EditorPanelWrapper;
      
      public var privateGardenGrass:MovieClip;
      
      public var privateGardenBush_1:MovieClip;
      
      public var privateGardenBush_2:MovieClip;
      
      private var _viewBuildingGrid:ViewBuildingGrid;
      
      public var _viewBoardFish:ViewBoardFish;
      
      private var _viewDoorCenter:ViewDoorPrivateHouse;
      
      private var _viewDoorLeft:ViewDoorPrivateHouse;
      
      public function LocationLayersPrivateHouse()
      {
         super();
      }
      
      public function get viewMoneyTree() : ViewMoneyTree
      {
         return this._viewMoneyTree;
      }
      
      public function get viewDoorCenter() : ViewDoorPrivateHouse
      {
         return this._viewDoorCenter;
      }
      
      public function get viewDoorLeft() : ViewDoorPrivateHouse
      {
         return this._viewDoorLeft;
      }
      
      public function get viewBuildingGrid() : ViewBuildingGrid
      {
         return this._viewBuildingGrid;
      }
      
      public function set locationExit(param1:Boolean) : void
      {
         var _loc2_:SublocationEnter = null;
         for each(_loc2_ in _sublocationEnters)
         {
            _loc2_.isEnabled = param1;
         }
         this.privateHouseEntrance.visible = param1;
      }
      
      override protected function onCompleteLoadingObstacleMap(param1:Event) : void
      {
         var _loc2_:Rectangle = null;
         super.onCompleteLoadingObstacleMap(param1);
         if(!GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            _loc2_ = new Rectangle(255,800,100,20);
            _obstacleMapBitmapData.fillRect(_loc2_,4294967295);
         }
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_MONEY_TREE:
               this._viewMoneyTree = new ViewMoneyTree(param1);
               this._viewMoneyTree.hide();
               moveLayer(this._viewMoneyTree.viewTrunk,mainLayer);
               _zSorter.handleAddChild(this._viewMoneyTree.viewTrunk);
               _visibilityManager.addObject(this._viewMoneyTree.viewTrunk);
               moveLayer(this._viewMoneyTree.viewShadow,_topLayer);
               moveLayer(this._viewMoneyTree.viewLeaves,_topLayer);
               super.parseDisplayObjectInternal(param1);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_BACKYARD_BOARD:
               this._viewBoardFish = new ViewBoardFish(_loc2_);
               this._viewBoardFish.source.visible = false;
               processChildAsISO(_loc2_);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_BUSH_1:
               this.privateGardenBush_1 = param1 as MovieClip;
               this.privateGardenBush_1.visible = false;
               processChildAsISO(_loc2_);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_BUSH_2:
               this.privateGardenBush_2 = param1 as MovieClip;
               this.privateGardenBush_2.visible = false;
               processChildAsISO(_loc2_);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_DOOR_CENTER:
               this._viewDoorCenter = new ViewDoorPrivateHouse(_loc2_);
               addChildrenToParse(_loc2_);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_DOOR_LEFT:
               this._viewDoorLeft = new ViewDoorPrivateHouse(_loc2_);
               addChildrenToParse(_loc2_);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_ENTRANCE:
               this.privateHouseEntrance = param1 as MovieClip;
               this.privateHouseEntrance.visible = false;
               processChildAsISO(_loc2_,true,false);
               break;
            case EDisplayObjectType.EDOT_PRIVATE_HOUSE_WALL:
               this.privateHouseWall = param1 as MovieClip;
               this.privateHouseWall.visible = false;
               processChildAsISO(_loc2_,false);
               break;
            case EDisplayObjectType.EDOT_GRID:
               this._viewBuildingGrid = new ViewBuildingGrid(_loc2_);
               _bottom2Layer.addChild(_loc2_);
               break;
            case EDisplayObjectType.EDOT_GROUND:
               this.parsePrivateHouseGround(param1);
               super.parseDisplayObjectInternal(param1);
               break;
            case EDisplayObjectType.EDOT_EDIT_BUTTONS:
               moveLayer(DisplayObjectContainer(param1),floatingGuiLayer);
               this.privateHouseEditorPanel = new EditorPanelWrapper();
               this.privateHouseEditorPanel.init(param1 as MovieClip);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
      
      override protected function moveChildrenToIsoLayer(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean = true) : void
      {
         super.moveChildrenToIsoLayer(param1,false,param3);
      }
      
      private function parsePrivateHouseGround(param1:DisplayObject) : void
      {
         this.privateHouseFloor = MovieClip((param1 as DisplayObjectContainer).getChildByName("$houseFloor"));
         if(this.privateHouseFloor != null)
         {
            this.privateHouseFloor.visible = false;
            (param1 as DisplayObjectContainer).removeChild(this.privateHouseFloor);
            _bottom2Layer.addChild(this.privateHouseFloor);
         }
         this.privateGardenGrass = MovieClip((param1 as DisplayObjectContainer).getChildByName("privateGardenGrass"));
         if(this.privateGardenGrass != null)
         {
            this.privateGardenGrass.visible = false;
            (param1 as DisplayObjectContainer).removeChild(this.privateGardenGrass);
            _bottomLayer.addChildAt(this.privateGardenGrass,0);
         }
      }
      
      public function updateZSorterState(param1:DisplayObject, param2:Boolean) : void
      {
         if(param2)
         {
            if(param1.parent != null && param1.parent == _bottomLayer)
            {
               _bottomLayer.removeChild(param1);
            }
            _zSorter.handleAddChild(param1);
         }
         else
         {
            if(_zSorter.isHandled(param1))
            {
               _zSorter.handleRemoveChild(param1);
            }
            _bottomLayer.addChild(param1);
         }
      }
      
      override public function destroy() : void
      {
         if(this._viewMoneyTree != null)
         {
            this._viewMoneyTree.cleanup();
            this._viewMoneyTree = null;
         }
         if(this._viewBoardFish != null)
         {
            this._viewBoardFish.cleanup();
            this._viewBoardFish = null;
         }
         if(this._viewDoorCenter != null)
         {
            this._viewDoorCenter.cleanup();
            this._viewDoorCenter = null;
         }
         if(this._viewDoorLeft != null)
         {
            this._viewDoorLeft.cleanup();
            this._viewDoorLeft = null;
         }
         super.destroy();
      }
   }
}


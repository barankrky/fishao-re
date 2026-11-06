package com.ax3.fishao.locations.marshville
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewBridge;
   import com.ax3.fishao.locations.objects.ViewDoorTreeCave;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersMarshville extends LocationLayers
   {
      
      private var _viewBridgeKey:ViewBridge;
      
      private var _viewBridgeTreeCave:ViewBridge;
      
      private var _viewDoorTreeCave:ViewDoorTreeCave;
      
      private var _key:DisplayObject;
      
      public function LocationLayersMarshville()
      {
         super();
      }
      
      public function get viewBridgeKey() : ViewBridge
      {
         return this._viewBridgeKey;
      }
      
      public function get viewBridgeTreeCave() : ViewBridge
      {
         return this._viewBridgeTreeCave;
      }
      
      public function get viewDoorTreeCave() : ViewDoorTreeCave
      {
         return this._viewDoorTreeCave;
      }
      
      public function get key() : DisplayObject
      {
         return this._key;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_SPECIAL_BRIDGE_KEY:
               this._viewBridgeKey = new ViewBridge(param1 as DisplayObjectContainer);
               addChildrenToParse(DisplayObjectContainer(param1));
               moveLayer(this._viewBridgeKey.source,_layerSpecial);
               break;
            case EDisplayObjectType.EDOT_SPECIAL_BRIDGE_TREE_CAVE:
               this._viewBridgeTreeCave = new ViewBridge(param1 as DisplayObjectContainer);
               addChildrenToParse(DisplayObjectContainer(param1));
               moveLayer(this._viewBridgeTreeCave.source,_layerSpecial);
               break;
            case EDisplayObjectType.EDOT_SPECIAL_DOOR_TREE_CAVE:
               this._viewDoorTreeCave = new ViewDoorTreeCave(param1 as DisplayObjectContainer);
               addChildrenToParse(DisplayObjectContainer(param1));
               moveLayer(this._viewDoorTreeCave.source,_layerSpecial);
               break;
            case EDisplayObjectType.EDOT_KEY:
               this._key = param1;
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
      
      override public function destroy() : void
      {
         if(this._viewBridgeTreeCave != null)
         {
            this._viewBridgeTreeCave.cleanup();
            this._viewBridgeTreeCave = null;
         }
         if(this._viewBridgeKey != null)
         {
            this._viewBridgeKey.cleanup();
            this._viewBridgeKey = null;
         }
         if(this._viewDoorTreeCave != null)
         {
            this._viewDoorTreeCave.cleanup();
            this._viewDoorTreeCave = null;
         }
         this._key = null;
         super.destroy();
      }
   }
}


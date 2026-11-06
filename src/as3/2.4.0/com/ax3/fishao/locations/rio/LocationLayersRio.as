package com.ax3.fishao.locations.rio
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewWaterfallCave;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersRio extends LocationLayers
   {
      
      private var _viewWaterfallCave:ViewWaterfallCave;
      
      public function LocationLayersRio()
      {
         super();
      }
      
      public function get viewWaterfallCave() : ViewWaterfallCave
      {
         return this._viewWaterfallCave;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_SPECIAL_WATERFALL_CAVE:
               this._viewWaterfallCave = new ViewWaterfallCave(param1 as DisplayObjectContainer);
               addChildrenToParse(DisplayObjectContainer(param1));
               this._viewWaterfallCave.hide();
               moveLayer(this._viewWaterfallCave.source,_layerSpecial);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
   }
}


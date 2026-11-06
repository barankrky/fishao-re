package com.ax3.fishao.locations.palmIsland
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewMegalodon;
   import com.ax3.fishao.locations.objects.ViewPirateCave;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersPalmIsland extends LocationLayers
   {
      
      private var _viewMegalodon:ViewMegalodon;
      
      private var _viewPirateCave:ViewPirateCave;
      
      public function LocationLayersPalmIsland()
      {
         super();
      }
      
      public function get viewMegalodon() : ViewMegalodon
      {
         return this._viewMegalodon;
      }
      
      public function get viewPirateCave() : ViewPirateCave
      {
         return this._viewPirateCave;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_SPECIAL_MEGALODON:
               this._viewMegalodon = new ViewMegalodon(param1 as DisplayObjectContainer);
               addChildrenToParse(DisplayObjectContainer(param1));
               moveLayer(this._viewMegalodon.source,_layerSpecial);
               break;
            case EDisplayObjectType.EDOT_SPECIAL_PIRATE_CAVE:
               this._viewPirateCave = new ViewPirateCave(param1 as DisplayObjectContainer);
               this._viewPirateCave.hide();
               addChildrenToParse(DisplayObjectContainer(param1));
               moveLayer(this._viewPirateCave.source,_layerSpecial);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
      
      override public function destroy() : void
      {
         if(this._viewMegalodon != null)
         {
            this._viewMegalodon.cleanup();
            this._viewMegalodon = null;
         }
         if(this._viewPirateCave != null)
         {
            this._viewPirateCave.cleanup();
            this._viewPirateCave = null;
         }
         super.destroy();
      }
   }
}


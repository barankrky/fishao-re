package com.ax3.fishao.locations.lostValley
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewRocksPond;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersLostValley extends LocationLayers
   {
      
      private var _viewRocksPond:ViewRocksPond;
      
      public function LocationLayersLostValley()
      {
         super();
      }
      
      public function get viewRocksPond() : ViewRocksPond
      {
         return this._viewRocksPond;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_SPECIAL_ROCKS_POND:
               this._viewRocksPond = new ViewRocksPond(param1 as DisplayObjectContainer);
               addChildrenToParse(DisplayObjectContainer(param1));
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
      
      override public function destroy() : void
      {
         if(this._viewRocksPond != null)
         {
            this._viewRocksPond.cleanup();
            this._viewRocksPond = null;
         }
         super.destroy();
      }
   }
}


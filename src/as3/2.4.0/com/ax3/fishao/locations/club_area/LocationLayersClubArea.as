package com.ax3.fishao.locations.club_area
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.club_area.views.ControllerClubViews;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersClubArea extends LocationLayers
   {
      
      private var _controller:ControllerClubViews;
      
      public function LocationLayersClubArea()
      {
         super();
         this._controller = new ControllerClubViews();
      }
      
      public function get controller() : ControllerClubViews
      {
         return this._controller;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         super.parseDisplayObjectInternal(param1);
         var _loc3_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_PLATE_FRESH:
               processChildAsISO(_loc3_);
               this._controller.addPlateFresh(_loc3_);
               break;
            case EDisplayObjectType.EDOT_PLATE_SALT:
               processChildAsISO(_loc3_);
               this._controller.addPlateSalt(_loc3_);
               break;
            case EDisplayObjectType.EDOT_CLUB_EMBLEM:
               this._controller.addViewEmblem(_loc3_);
               break;
            case EDisplayObjectType.EDOT_CLUB_BANNER:
               processChildAsISO(_loc3_);
               this._controller.addViewBanner(_loc3_);
               break;
            case EDisplayObjectType.EDOT_CLUB_TABLE:
               processChildAsISO(_loc3_);
               _loc2_ = Debug.assertProperty(_loc3_,EDisplayObjectType.EDOT_CLUB_EMBLEM);
               this._controller.addViewEmblem(_loc2_);
               break;
            case EDisplayObjectType.EDOT_MONSTER_FISH:
               addChildrenToParse(_loc3_);
               this._controller.addMonsterFish(_loc3_);
         }
      }
   }
}


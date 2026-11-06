package com.ax3.fishao.locations.with_club_entrance
{
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.club_area.entrance.ControllerClubEntrance;
   import com.ax3.fishao.locations.club_area.entrance.ViewClubEntrance;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import com.ax3.fishao.utils.UtilsBitmap;
   import com.ax3.fishao.vars.app;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class LocationLayersWithClubEntrance extends LocationLayers
   {
      
      private var _controllerClubEntrance:ControllerClubEntrance;
      
      public function LocationLayersWithClubEntrance()
      {
         super();
         this.init();
      }
      
      public function get clubEntrancePosition() : Point
      {
         return new Point(0,0);
      }
      
      override protected function onParseComplete() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc1_:Point = null;
         super.onParseComplete();
         _loc2_ = this._controllerClubEntrance.view.source;
         moveLayer(_loc2_,mainLayer);
         _zSorter.handleAddChild(_loc2_);
         _visibilityManager.addObject(_loc2_);
         _loc1_ = this.clubEntrancePosition;
         _loc2_.x = _loc1_.x;
         _loc2_.y = _loc1_.y;
         var _loc3_:ViewClubEntrance = this._controllerClubEntrance.viewEntrance;
         var _loc4_:Point = _loc3_.obstacleOffset;
         UtilsBitmap.merge(getObstacleMap(),_loc3_.obstacle,_loc2_.x + _loc4_.x,_loc2_.y + _loc4_.y);
         this.tryInitEnterToClub(_loc3_);
      }
      
      private function init() : void
      {
         this._controllerClubEntrance = new ControllerClubEntrance();
      }
      
      private function tryInitEnterToClub(param1:ViewClubEntrance) : void
      {
         if(app.user.isGuest)
         {
            return;
         }
         moveLayer(param1.viewEnter,mainLayer);
         var _loc2_:SublocationEnter = new SublocationEnter();
         _loc2_.process(param1.viewEnter);
         _loc2_.id = LocationConfig.CLUB_AREA.id;
         _sublocationEnters.push(_loc2_);
      }
   }
}


package com.ax3.fishao.locations.club_area
{
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.club_area.views.ControllerClubViews;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.fishao.view.dialogs.monster_fishes.ManagerMonsterFishes;
   import com.ax3.fishao.view.dialogs.monster_fishes.base.EMonsterFishType;
   import flash.events.Event;
   
   public class LocationDialogClubArea extends LocationDialog
   {
      
      private var _managerClubs:ManagerClubs;
      
      private var _managerMonsterFishes:ManagerMonsterFishes;
      
      private var _locationLayers:LocationLayersClubArea;
      
      public function LocationDialogClubArea(param1:LocationModel)
      {
         super(param1);
         this.init();
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this.updateViews(false);
      }
      
      override protected function onLoadDynamicGraphicsComplete() : void
      {
         super.onLoadDynamicGraphicsComplete();
         onEnterLocationResponse(null);
         _gui.mainMenu.tournamentIcon.disable();
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersClubArea;
         return this._locationLayers;
      }
      
      private function init() : void
      {
         this._managerClubs = GameSwf.instance.managerClubs;
         this._managerMonsterFishes = GameSwf.instance.managerMonsterFishes;
      }
      
      public function updateViews(param1:Boolean = true) : void
      {
         var _loc2_:ControllerClubViews = this._locationLayers.controller;
         var _loc3_:ClubInfo = this._managerClubs.userClub;
         _loc2_.emblemID = _loc3_.emblemID;
         _loc2_.name = _loc3_.name;
         var _loc4_:Number = this._managerMonsterFishes.getCurrentSizeByType(EMonsterFishType.EMFT_CLUB);
         _loc2_.updateMonsterFishSize(_loc4_,param1);
      }
      
      override protected function enterToSublocation(param1:int) : void
      {
         switch(param1)
         {
            case LocationConfig.CLUB_AREA.id:
               GameSwf.instance.exitVirtualLocationThroughDoor(this.locationModel.prevLocationID);
               break;
            default:
               super.enterToSublocation(param1);
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         super.updateWithType(param1);
         switch(param1)
         {
            case EControllerUpdate.ECU_MONSTER_FISH_UPDATE:
               this.updateViews();
         }
      }
   }
}


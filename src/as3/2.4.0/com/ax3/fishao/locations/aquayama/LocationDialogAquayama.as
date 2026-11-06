package com.ax3.fishao.locations.aquayama
{
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.with_club_entrance.LocationDialogWithClubEntrance;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import flash.events.Event;
   
   public class LocationDialogAquayama extends LocationDialogWithClubEntrance
   {
      
      private var _locationLayers:LocationLayersAquayama;
      
      private var _locationModel:LocationModelAquayama;
      
      public function LocationDialogAquayama(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelAquayama;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._locationModel.updateSecretWallEntance();
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersAquayama;
         return this._locationLayers;
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers != null && this._locationLayers.viewSecretEntranceWall.hitTest(param1,param2);
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_QUESTS_GAME_END_INFO_UPDATED:
               this._locationModel.updateSecretWallEntance();
               break;
            default:
               super.updateWithType(param1);
         }
      }
      
      override protected function enterToSublocation(param1:int) : void
      {
         var _loc2_:int = param1 < 100 ? int(param1 + 100) : param1;
         switch(_loc2_)
         {
            case LocationConfig.SUBLOCATION_7_LOST_VALLEY.id:
               if(this._locationModel.isLostValleyAvailable)
               {
                  super.enterToSublocation(param1);
               }
               break;
            default:
               super.enterToSublocation(param1);
         }
      }
   }
}


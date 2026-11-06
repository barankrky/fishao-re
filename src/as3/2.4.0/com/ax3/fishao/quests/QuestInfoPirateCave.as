package com.ax3.fishao.quests
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   
   public class QuestInfoPirateCave extends QuestInfoBase
   {
      
      private var _pirateCaveAccessible:Boolean;
      
      public function QuestInfoPirateCave()
      {
         super();
      }
      
      public function get pirateCaveAccessible() : Boolean
      {
         return this._pirateCaveAccessible;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         this._pirateCaveAccessible = Debug.getPropertyOrDefault(param1,"pirate_cave_accessible",this._pirateCaveAccessible);
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(EControllerUpdate.ECU_QUESTS_PIRATE_CAVE_INFO_UPDATED);
         }
      }
   }
}


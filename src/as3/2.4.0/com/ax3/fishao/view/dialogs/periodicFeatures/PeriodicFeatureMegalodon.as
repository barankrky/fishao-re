package com.ax3.fishao.view.dialogs.periodicFeatures
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   
   public class PeriodicFeatureMegalodon extends PeriodicFeatureBase
   {
      
      public function PeriodicFeatureMegalodon()
      {
         super();
      }
      
      override public function set state(param1:String) : void
      {
         super.state = param1;
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(EControllerUpdate.ECU_PERIODIC_FEATURES_MEGALODON_UPDATED);
         }
      }
   }
}


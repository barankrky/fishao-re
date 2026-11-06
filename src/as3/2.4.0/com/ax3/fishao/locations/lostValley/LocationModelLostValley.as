package com.ax3.fishao.locations.lostValley
{
   import com.ax3.fishao.locations.objects.ViewRocksPond;
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   
   public class LocationModelLostValley extends SublocationModel
   {
      
      private var _managerFeatures:ManagerFeatures;
      
      private var _locationLayers:LocationLayersLostValley;
      
      public function LocationModelLostValley(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogLostValley).locationLayersBase as LocationLayersLostValley;
      }
      
      private function init() : void
      {
         this._managerFeatures = GameSwf.instance.managerFeatures;
      }
      
      public function updateRocksPondVisibility() : void
      {
         var _loc1_:ViewRocksPond = this._locationLayers.viewRocksPond;
         _loc1_.isEnabled = !this._managerFeatures.isFeatureEnabled(EUserFeature.EUF_LOCATION_TREE_CAVE);
      }
   }
}


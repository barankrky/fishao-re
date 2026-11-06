package com.ax3.fishao.locations.rio
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.view.dialogs.featuresTemporary.EFeatureTemporaryType;
   import com.ax3.fishao.view.dialogs.featuresTemporary.ManagerFeaturesTemporary;
   
   public class LocationModelRio extends LocationModel
   {
      
      private var _managerFeaturesTemporary:ManagerFeaturesTemporary;
      
      private var _locationLayers:LocationLayersRio;
      
      public function LocationModelRio(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogRio).locationLayersBase as LocationLayersRio;
      }
      
      private function init() : void
      {
         this._managerFeaturesTemporary = GameSwf.instance.managerFeaturesTemporary;
      }
      
      override protected function initNpc(param1:String, param2:Object) : LocationUser
      {
         var _loc3_:LocationUser = super.initNpc(param1,param2);
         if(param1 == ENpcName.ENN_SAM)
         {
            this.updateSamVisibility();
         }
         return _loc3_;
      }
      
      private function updateSamVisibility() : void
      {
         var _loc1_:NPC = getNPCbyName(ENpcName.ENN_SAM);
         if(_loc1_ != null)
         {
            _loc1_.visible = !GameSwf.instance.managerTutorial.isTutorialCommonComplete;
         }
      }
      
      public function updateWaterfallCaveAccess() : void
      {
         if(this._locationLayers == null)
         {
            return;
         }
         var _loc1_:Boolean = this._managerFeaturesTemporary.isFeatureEnabled(EFeatureTemporaryType.EFTT_WATERFALL_CAVE);
         this._locationLayers.viewWaterfallCave.isEnabled = _loc1_;
      }
   }
}


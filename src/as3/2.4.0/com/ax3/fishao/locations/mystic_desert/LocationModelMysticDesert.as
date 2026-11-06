package com.ax3.fishao.locations.mystic_desert
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   
   public class LocationModelMysticDesert extends LocationModel
   {
      
      private var _managerFeatures:ManagerFeatures;
      
      public function LocationModelMysticDesert(param1:int)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         this._managerFeatures = GameSwf.instance.managerFeatures;
      }
      
      override protected function initNpc(param1:String, param2:Object) : LocationUser
      {
         var _loc3_:LocationUser = super.initNpc(param1,param2);
         if(param1 == ENpcName.ENN_HOUSSAM)
         {
            this.updateHoussamVisibility();
         }
         return _loc3_;
      }
      
      public function updateHoussamVisibility() : void
      {
         var _loc1_:NPC = getNPCbyName(ENpcName.ENN_HOUSSAM);
         var _loc2_:Boolean = this._managerFeatures.isFeatureEnabled(EUserFeature.EUF_LOCATION_TREE_CAVE);
         _loc1_.visible = _loc1_ != null && _loc2_;
      }
   }
}


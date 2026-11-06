package com.ax3.fishao.view.dialogs.periodicFeatures
{
   import com.ax3.fishao.debug.Debug;
   
   public class FactoryPeriodicFeatures
   {
      
      public function FactoryPeriodicFeatures()
      {
         super();
      }
      
      public static function createPeriodicFeature(param1:String) : PeriodicFeatureBase
      {
         var _loc2_:PeriodicFeatureBase = null;
         switch(param1)
         {
            case EPeriodicFeatureType.EPFT_MEGALODON:
               _loc2_ = new PeriodicFeatureMegalodon();
               break;
            default:
               Debug.assert(false,"Unsupported type on createPeriodicFeature of FactoryPeriodicFeatures: " + param1);
         }
         return _loc2_;
      }
   }
}


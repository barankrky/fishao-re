package com.ax3.fishao.view.dialogs.periodicFeatures
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.periodicFeatures.init.ResponsePeriodicFeaturesInit;
   import protocol.api.periodicFeatures.update.ResponsePeriodicFeatureUpdate;
   
   public class ManagerPeriodicFeatures extends ManagerBase
   {
      
      private var _periodicFeaturesMap:Dictionary;
      
      public function ManagerPeriodicFeatures()
      {
         super();
         this.init();
      }
      
      public function getFeatureByType(param1:String) : PeriodicFeatureBase
      {
         return this._periodicFeaturesMap[param1];
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:PeriodicFeatureBase = null;
         if(handleResponseError(param1))
         {
            return;
         }
         if(!this.isDataLoaded)
         {
            super.onInitDataLoaded(param1);
         }
         var _loc4_:ResponsePeriodicFeaturesInit = param1 as ResponsePeriodicFeaturesInit;
         var _loc5_:Array = decodeJson(_loc4_.data) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = FactoryPeriodicFeatures.createPeriodicFeature(_loc2_.type);
            _loc3_.deserialize(_loc2_);
            this._periodicFeaturesMap[_loc3_.type] = _loc3_;
         }
      }
      
      private function onPeriodicFeatureUpdated(param1:ServerResp) : void
      {
         if(!this.isDataLoaded)
         {
            return;
         }
         var _loc2_:ResponsePeriodicFeatureUpdate = param1 as ResponsePeriodicFeatureUpdate;
         var _loc3_:PeriodicFeatureBase = this._periodicFeaturesMap[_loc2_.type];
         Debug.assertNotEqual(_loc3_,null,"Couldn\'t find periodic feature on getPeriodicFeatureByType method of ManagerPeriodicFeatures with type: " + _loc2_.type);
         _loc3_.state = _loc2_.state;
      }
      
      private function init() : void
      {
         this._periodicFeaturesMap = new Dictionary(true);
         _remoteExtension = FishaoFscModelManager.fscModel.extensionPeriodicFeatures;
         addResponseHandler(ResponsePeriodicFeatureUpdate,this.onPeriodicFeatureUpdated);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         super.loadInitData(param1);
      }
   }
}


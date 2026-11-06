package com.ax3.fishao.view.dialogs.featuresTemporary
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.featuresTemporary.activate.ResponseFeatureTemporaryActivate;
   import protocol.api.featuresTemporary.deactivate.ResponseFeatureTemporaryDeactivate;
   import protocol.api.featuresTemporary.init.ResponseFeaturesTemporaryInit;
   
   public class ManagerFeaturesTemporary extends ManagerBase
   {
      
      private var _featuresTemporary:Array;
      
      public function ManagerFeaturesTemporary()
      {
         super();
         this.init();
      }
      
      private function onDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseFeaturesTemporaryInit = param1 as ResponseFeaturesTemporaryInit;
         this._featuresTemporary = _loc2_.featuresTemporary;
      }
      
      private function onFeatureActivated(param1:ServerResp) : void
      {
         var _loc2_:ResponseFeatureTemporaryActivate = param1 as ResponseFeatureTemporaryActivate;
         if(_loc2_ == null)
         {
            return;
         }
         if(!this.isFeatureEnabled(_loc2_.type))
         {
            this._featuresTemporary.push(_loc2_.type);
         }
         else
         {
            Debug.assert(false,"Impossible to Activate temporary feature that already exists");
         }
         var _loc3_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(EControllerUpdate.ECU_FEATURE_TEMPORARY_WATERFALL_CAVE_UPDATED);
         }
      }
      
      private function onFeatureDeactivated(param1:ServerResp) : void
      {
         var _loc2_:ResponseFeatureTemporaryDeactivate = param1 as ResponseFeatureTemporaryDeactivate;
         if(_loc2_ == null)
         {
            return;
         }
         if(this.isFeatureEnabled(_loc2_.type))
         {
            UtilsArray.removeValue(this._featuresTemporary,_loc2_.type);
         }
         else
         {
            Debug.assert(false,"Impossible to Deactivate non existing temporary feature");
         }
         var _loc3_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(EControllerUpdate.ECU_FEATURE_TEMPORARY_WATERFALL_CAVE_UPDATED);
         }
      }
      
      private function init() : void
      {
         this._featuresTemporary = [];
         _remoteExtension = FishaoFscModelManager.fscModel.extensionFeaturesTemporary;
         addResponseHandler(ResponseFeaturesTemporaryInit,this.onDataLoaded);
         addResponseHandler(ResponseFeatureTemporaryActivate,this.onFeatureActivated);
         addResponseHandler(ResponseFeatureTemporaryDeactivate,this.onFeatureDeactivated);
      }
      
      public function isFeatureEnabled(param1:String) : Boolean
      {
         return this._featuresTemporary.indexOf(param1) != ConstantsBase.INDEX_NONE;
      }
   }
}


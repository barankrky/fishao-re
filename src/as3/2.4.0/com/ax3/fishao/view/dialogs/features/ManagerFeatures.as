package com.ax3.fishao.view.dialogs.features
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.features.update.ResponseFeaturesUpdate;
   
   public class ManagerFeatures extends ManagerBase
   {
      
      private var _features:Array;
      
      public function ManagerFeatures()
      {
         super();
         this.init();
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseFeaturesUpdate = param1 as ResponseFeaturesUpdate;
         this._features = _loc2_.features;
         if(this.isFeatureEnabled(EUserFeature.EUF_SHINY_FISH))
         {
            GameSwf.tryUpdateGUI(EControllerUpdate.ECU_SHINY_STATE);
         }
      }
      
      private function init() : void
      {
         this._features = [];
         _remoteExtension = FishaoFscModelManager.fscModel.extensionFeatures;
         addResponseHandler(ResponseFeaturesUpdate,this.onInitDataLoaded);
      }
      
      public function isFeatureEnabled(param1:String) : Boolean
      {
         return this._features.indexOf(param1) != ConstantsBase.INDEX_NONE;
      }
   }
}


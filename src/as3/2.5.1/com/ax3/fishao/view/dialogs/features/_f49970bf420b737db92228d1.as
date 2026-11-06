package com.ax3.fishao.view.dialogs.features
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.features.update.ResponseFeaturesUpdate;
   
   public class _f49970bf420b737db92228d1 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _e7bb0232bfa7d19dc59f2d1f:Array;
      
      public function _f49970bf420b737db92228d1()
      {
         super();
         this.init();
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseFeaturesUpdate = param1 as ResponseFeaturesUpdate;
         this._e7bb0232bfa7d19dc59f2d1f = _loc2_.features;
         if(this.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_SHINY_FISH))
         {
            GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_SHINY_STATE);
         }
      }
      
      private function init() : void
      {
         this._e7bb0232bfa7d19dc59f2d1f = [];
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionFeatures;
         _4575c3ec15103b43cbf2be04(ResponseFeaturesUpdate,this._fcd2ab11aa6496ff709ec1ea);
      }
      
      public function isFeatureEnabled(param1:String) : Boolean
      {
         return this._e7bb0232bfa7d19dc59f2d1f.indexOf(param1) != ConstantsBase.INDEX_NONE;
      }
   }
}


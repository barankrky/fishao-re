package com.ax3.fishao.view.dialogs.base
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.jss.requests.server.ServerResp;
   import com.junkbyte.console.Cc;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import protocol.api.base.FscExtensionBase;
   import protocol.api.base.ResponseError;
   
   public class ManagerBase
   {
      
      private var _isDataLoaded:Boolean;
      
      protected var _remoteExtension:FscExtensionBase;
      
      protected var _isAlreadyConnectedToWorld:Boolean;
      
      protected var _handlers:Dictionary;
      
      public function ManagerBase()
      {
         super();
         this._handlers = new Dictionary();
      }
      
      protected static function handleResponseError(param1:ServerResp) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:ResponseError = param1 as ResponseError;
         if(_loc3_ != null)
         {
            PopupManager.getInstance().showMessageDialog(_loc3_.description);
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function get isDataLoaded() : Boolean
      {
         return this._isDataLoaded;
      }
      
      protected function onInitDataLoaded(param1:ServerResp) : void
      {
         this._isDataLoaded = true;
      }
      
      public function onConnectToWorld() : void
      {
         if(!this._isAlreadyConnectedToWorld)
         {
            this.onConnectedToWorldAtFirst();
         }
         this._isAlreadyConnectedToWorld = true;
      }
      
      protected function onConnectedToWorldAtFirst() : void
      {
      }
      
      public function loadInitData(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onInitDataLoaded(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         if(this._remoteExtension != null)
         {
            this._remoteExtension.loadInitData(callbackWrapper);
         }
         else
         {
            Cc.warn(getQualifiedClassName(this) + " do not use remote extension. Simulate response for this manager.");
            callbackWrapper(null);
         }
      }
      
      public function postInit() : void
      {
      }
      
      protected function addResponseHandler(param1:Class, param2:Function) : void
      {
         this._handlers[param1] = param2;
         FishaoFscModelManager.fscModel.addRequestHandler(param1,param2);
      }
      
      public function cleanup() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Function = null;
         var _loc3_:Class = null;
         for(_loc1_ in this._handlers)
         {
            _loc2_ = this._handlers[_loc1_];
            _loc3_ = _loc1_ as Class;
            FishaoFscModelManager.fscModel.removeRequestHandler(_loc3_,_loc2_);
         }
      }
   }
}


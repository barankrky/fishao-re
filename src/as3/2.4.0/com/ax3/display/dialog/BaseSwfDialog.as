package com.ax3.display.dialog
{
   import com.ax3.net.LoadingIndicator;
   import com.ax3.utils.KeyCallbacksDispatcher;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class BaseSwfDialog extends BaseDialog implements ISwfDialog
   {
      
      protected var _config:SWFDialogConfig;
      
      protected var _state:DialogState = DialogState.NONE;
      
      protected var _loadingIndicator:LoadingIndicator = new LoadingIndicator();
      
      protected var _asset:DisplayObjectContainer;
      
      private var _stateCallbacks:KeyCallbacksDispatcher = new KeyCallbacksDispatcher();
      
      public function BaseSwfDialog(param1:SWFDialogConfig)
      {
         super();
         this._config = param1;
         this.addStateCallback(DialogState.ASSET_COMPLETE,this.onAssetCreationComplete);
         if(this._config.swfFileNameRaw == "")
         {
            this.state = DialogState.READY;
         }
      }
      
      override public function show() : void
      {
         this.addStateCallback(DialogState.READY,super.show);
         if(this._state == DialogState.NONE)
         {
            _app.dialogManager.onDialogAssetCreating(this);
            this.create();
            showByDialogManager();
         }
      }
      
      public function addStateCallback(param1:DialogState, param2:Function) : void
      {
         if(this._state == param1)
         {
            param2();
         }
         else
         {
            this._stateCallbacks.add(param1.name,param2);
         }
      }
      
      protected function set state(param1:DialogState) : void
      {
         if(this._state != param1)
         {
            this._state = param1;
            this._stateCallbacks.dispatchAndDestroy(this._state.name);
         }
      }
      
      protected function get dialogAssetURL() : String
      {
         return _app.config.getDialogURL(this._config.swfFileName);
      }
      
      protected function create() : void
      {
         this.state = DialogState.ASSET_CREATING;
         this._loadingIndicator.start();
         this._loadingIndicator.progressHandler = this.getCurrentSwfLoadingProgress;
         _app.resourceManager.getSwfInstance(this.dialogAssetURL,this.onAssetLoadingComplete);
      }
      
      protected function getCurrentSwfLoadingProgress() : Number
      {
         return _app.resourceManager.getSwfInstanceLoadingProgress(this.dialogAssetURL);
      }
      
      protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._asset = param1;
         this._asset.addEventListener(Event.COMPLETE,this.onAssetInitComplete);
         (this._asset as MovieClip).play();
         addChild(param1);
      }
      
      protected function onAssetInitComplete(param1:Event) : void
      {
         _app.dialogManager.assetWrappersProcessor.configurateFactory(_app,this.dialogAssetURL);
         _app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.assetCreationComplete();
      }
      
      private function assetCreationComplete() : void
      {
         this.state = DialogState.ASSET_COMPLETE;
      }
      
      protected function onAssetCreationComplete() : void
      {
         this._loadingIndicator.stop();
         this.state = DialogState.READY;
         _app.dialogManager.onCreatingDialogComplete(this);
      }
      
      override public function isReady() : Boolean
      {
         return this._loadingIndicator.isCompleted() && this.isCreated();
      }
      
      public function isCreated() : Boolean
      {
         return this._state == DialogState.READY;
      }
   }
}


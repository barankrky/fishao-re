package com.ax3.core
{
   import com.ax3.config.ApplicationConfig;
   import com.ax3.signals.impl.AppSignals;
   import flash.events.EventDispatcher;
   
   public class App extends EventDispatcher
   {
      
      public var resourceManager:IResourceManager;
      
      public var dialogManager:SwfDialogManager;
      
      public var dispatcher:AppSignals = new AppSignals();
      
      private var _config:ApplicationConfig;
      
      public function App(param1:ApplicationConfig = null)
      {
         super();
         this.config = param1;
      }
      
      public function set config(param1:ApplicationConfig) : void
      {
         param1.invalidate();
         this._config = param1;
         this.resourceManager = new this._config.resourceManagerClass(this);
         this.dialogManager = new this._config.dialogManagerClass(this);
         this.dialogManager.assetWrappersProcessor = this._config.assetWrappersProcessor;
      }
      
      public function get config() : ApplicationConfig
      {
         return this._config;
      }
   }
}


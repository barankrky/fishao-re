package com.ax3.display.dialog
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.WorldMapSwfDialogAsset2;
   import com.ax3.fishao.view.wrappers.impl.WorldMapButton;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.net.LoadingIndicator;
   import com.ax3.utils.ColorMatrix;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.sr.WorldMapDataResp;
   
   public class WorldMapSwfDialog extends WorldMapSwfDialogAsset2
   {
      
      private static var globalInstanceId:int = 0;
      
      private var _updateTimeoutId:uint;
      
      protected var _locationById:Object = {};
      
      private var _locations:Array;
      
      private var _dataIndicator:LoadingIndicator = new LoadingIndicator(LoadingScreen.TYPE_SIMPLE);
      
      private var _stopped:Boolean = false;
      
      protected var _isAssetsComplete:Boolean = false;
      
      protected var _isDataComplete:Boolean = false;
      
      private var _dataResp:ServerResp;
      
      private var instanceId:int = -1;
      
      public function WorldMapSwfDialog()
      {
         super();
         tabChildren = false;
         this.instanceId = globalInstanceId++;
      }
      
      public function get isAssetsComplete() : Boolean
      {
         return this._isAssetsComplete;
      }
      
      public function get isDataComplete() : Boolean
      {
         return this._isDataComplete;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         if(lockedFilters != null)
         {
            _filters.lockedFilters = this.findFilters(lockedFilters);
            if(lockedFilters.parent != null)
            {
               lockedFilters.parent.removeChild(lockedFilters);
            }
         }
         if(unlockedFilters != null)
         {
            _filters.unlockedFilters = this.findFilters(unlockedFilters);
            if(unlockedFilters.parent != null)
            {
               unlockedFilters.parent.removeChild(unlockedFilters);
            }
         }
         if(lockedOverFilters != null)
         {
            _filters.lockedOverFilters = this.findFilters(lockedOverFilters);
            if(lockedOverFilters.parent != null)
            {
               lockedOverFilters.parent.removeChild(lockedOverFilters);
            }
         }
         if(unlockedOverFilters != null)
         {
            _filters.unlockedOverFilters = this.findFilters(unlockedOverFilters);
            if(unlockedOverFilters.parent != null)
            {
               unlockedOverFilters.parent.removeChild(unlockedOverFilters);
            }
         }
         rainforest.init(LocationConfig.LOCATION_2_RIO,this.areaClickHandler,_filters);
         tropicalBeach.init(LocationConfig.LOCATION_3_PINHEIRA_BEACH,this.areaClickHandler,_filters);
         grass.init(LocationConfig.LOCATION_1_LAKETOWN,this.areaClickHandler,_filters);
         port.init(LocationConfig.LOCATION_8_SEAGULL_HARBOR,this.areaClickHandler,_filters);
         nordic.init(LocationConfig.LOCATION_4_COOL_MOUNTAIN,this.areaClickHandler,_filters);
         pole.init(LocationConfig.LOCATION_6_SIBIRI_CITY,this.areaClickHandler,_filters);
         desert.init(LocationConfig.LOCATION_5_MYSTIC_DESERT,this.areaClickHandler,_filters);
         africa.init(LocationConfig.LOCATION_9_THOMBANI_TOWN,this.areaClickHandler,_filters);
         asia.init(LocationConfig.LOCATION_7_AQUAYAMA,this.areaClickHandler,_filters);
         marsh.init(LocationConfig.LOCATION_10_MARSHVILLE,this.areaClickHandler,_filters);
         palmIsland.init(LocationConfig.LOCATION_11_PALM_ISLAND,this.areaClickHandler,_filters);
         luckyRaft.init(LocationConfig.LOCATION_12_LUCKY_RAFT,this.areaClickHandler,_filters);
         this._locations = [];
         this._locationById[grass.locationId] = grass;
         this._locations.push(grass);
         this._locationById[rainforest.locationId] = rainforest;
         this._locations.push(rainforest);
         this._locationById[tropicalBeach.locationId] = tropicalBeach;
         this._locations.push(tropicalBeach);
         this._locationById[nordic.locationId] = nordic;
         this._locations.push(nordic);
         this._locationById[desert.locationId] = desert;
         this._locations.push(desert);
         this._locationById[pole.locationId] = pole;
         this._locations.push(pole);
         this._locationById[asia.locationId] = asia;
         this._locations.push(asia);
         this._locationById[port.locationId] = port;
         this._locations.push(port);
         this._locationById[africa.locationId] = africa;
         this._locations.push(africa);
         this._locationById[marsh.locationId] = marsh;
         this._locations.push(marsh);
         this._locationById[palmIsland.locationId] = palmIsland;
         this._locations.push(palmIsland);
         this._locationById[luckyRaft.locationId] = luckyRaft;
         this._locations.push(luckyRaft);
         this._isAssetsComplete = true;
         if(this._isDataComplete)
         {
            this.dataReceive(this._dataResp);
         }
         if(Debug.AUTO_SELECT_LOCATION)
         {
         }
      }
      
      override public function showByDialogManager() : void
      {
         _app.dialogManager.showAt(PopupManager.GAME_FIELD_LAYER,this);
      }
      
      protected function areaClickHandler(param1:MouseEvent) : void
      {
         Cc.log(this.toString() + ".areaClickHandler()");
         if(!this._isAssetsComplete && !this._isDataComplete)
         {
            return;
         }
         this.cleanupMapAreas();
         this.stopMapUpdate();
         FishaoSoundManager.stopCurrentAmbientMusic();
         var _loc2_:WorldMapButton = WorldMapButton(param1.currentTarget);
         this.sendRequest(_loc2_.locationId);
         this.deactivate();
      }
      
      private function cleanupMapAreas() : void
      {
         var _loc1_:WorldMapButton = null;
         for each(_loc1_ in this._locations)
         {
            _loc1_.cleanup();
         }
      }
      
      public function enterIntoLocationById(param1:int) : void
      {
         if(!this._isAssetsComplete && !this._isDataComplete)
         {
            return;
         }
         this.stopMapUpdate();
         FishaoSoundManager.stopCurrentAmbientMusic();
         this.sendRequest(param1);
         this.deactivate();
      }
      
      private function sendRequest(param1:int) : void
      {
         Cc.log(this.toString() + ".sendRequest(id=" + param1 + ")");
         GameSwf.instance.enterToLocation(param1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(this._stopped)
         {
            this._stopped = false;
            this.playAllChildren(_asset);
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.hideAllButtons();
         if(this._stopped == false)
         {
            this._stopped = true;
            if(_asset != null)
            {
               this.stopAllChildren(_asset);
            }
         }
      }
      
      protected function hideAllButtons() : void
      {
         var _loc1_:String = null;
         var _loc2_:WorldMapButton = null;
         for(_loc1_ in this._locationById)
         {
            _loc2_ = this._locationById[_loc1_];
            _loc2_.hide(0);
         }
      }
      
      private function stopAllChildren(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:uint = uint(param1.numChildren);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(_loc2_ is MovieClip)
            {
               MovieClip(_loc2_).stop();
            }
            if(_loc2_ is DisplayObjectContainer)
            {
               this.stopAllChildren(DisplayObjectContainer(_loc2_));
            }
            _loc4_++;
         }
      }
      
      private function playAllChildren(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:uint = uint(param1.numChildren);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_ = param1.getChildAt(_loc4_);
            if(_loc2_ is MovieClip)
            {
               MovieClip(_loc2_).play();
            }
            if(_loc2_ is DisplayObjectContainer)
            {
               this.playAllChildren(DisplayObjectContainer(_loc2_));
            }
            _loc4_++;
         }
      }
      
      public function dataReceive(param1:ServerResp) : void
      {
         var _loc2_:WorldMapDataResp = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         this._isDataComplete = true;
         this._dataResp = param1;
         if(!this._isAssetsComplete)
         {
            return;
         }
         if(param1 is WorldMapDataResp)
         {
            this._dataIndicator.stop();
            Preloader.removeIndicator(this._dataIndicator);
            _loc2_ = WorldMapDataResp(param1);
            if(_loc2_.userLocations != null)
            {
               _loc3_ = JSON.parse(_loc2_.userLocations);
               for(_loc4_ in _loc3_)
               {
                  if(this._locationById.hasOwnProperty(_loc4_))
                  {
                     WorldMapButton(this._locationById[_loc4_]).update(_loc3_[_loc4_]);
                  }
               }
            }
            if(parent != null)
            {
               this._updateTimeoutId = setTimeout(this.mapUpdate,10000);
            }
         }
      }
      
      public function startMapUpdate() : void
      {
         Cc.log(this.toString() + ".startMapUpdate()");
         this._dataIndicator.start();
         if(GameSwf.currentLocationDialog == null)
         {
            Preloader.addIndicator(this._dataIndicator);
         }
         FishaoSoundManager.playAmbientForLocation(LocationConfig.WORLD_MAP_999.id);
         this.mapUpdate();
      }
      
      private function mapUpdate() : void
      {
         Cc.log(this.toString() + ".mapUpdate()","_updateTimeoutId = ",this._updateTimeoutId);
         this.stopMapUpdate();
         FishaoFscModelManager.locationExtension.getWorldMapStatus(this.dataReceive);
      }
      
      public function stopMapUpdate() : void
      {
         Cc.log(this.toString() + ".stopMapUpdate()");
         clearTimeout(this._updateTimeoutId);
      }
      
      override public function show() : void
      {
         if(parent == null)
         {
            if(_asset != null)
            {
               _asset.alpha = 0;
               super.show();
               TweenCube.to(_asset,1,{"alpha":1});
            }
            else
            {
               super.show();
            }
         }
      }
      
      private function findFilters(param1:DisplayObject) : Array
      {
         var _loc2_:ColorMatrix = null;
         var _loc3_:Array = null;
         var _loc4_:Boolean = ColorMatrix.isColorTransformNotEmpty(param1.transform.colorTransform);
         if(_loc4_)
         {
            if(_loc3_ == null)
            {
               _loc3_ = [];
            }
            _loc2_ = new ColorMatrix();
            _loc2_.readFromColorTransform(param1.transform.colorTransform);
            _loc3_.push(_loc2_.filter);
         }
         var _loc5_:Array = param1.filters;
         if(_loc5_ != null && _loc5_.length > 0)
         {
            if(_loc3_ == null)
            {
               _loc3_ = [];
            }
            _loc3_ = _loc3_.concat(_loc5_);
         }
         return _loc3_;
      }
      
      override public function toString() : String
      {
         return "WorldMapSwfDialog(instanceId=" + this.instanceId + ")";
      }
   }
}


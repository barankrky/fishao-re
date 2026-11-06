package com.ax3.net
{
   import com.ax3.display.autoscalable.CenteredBitmap;
   import com.ax3.display.autoscalable.FilledBitmap;
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.autoscalable.ScaledBitmapWithPreloader;
   import com.ax3.events.URLBitmapLoaderEvent;
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.isBitmapDataValid;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class URLBitmapLoader extends EventDispatcher
   {
      
      private static const MAX_BITMAP_IDLE_TIME_MINUTES:int = int.MAX_VALUE;
      
      private static const CACHE_CHECK_PERIOD_MINUTES:int = 4000;
      
      private var _waitLoadBitmapURL:Dictionary = new Dictionary();
      
      private var _waitLoadBitmapDataURL:Dictionary = new Dictionary();
      
      private var _bitmapsDataCache:Dictionary = new Dictionary();
      
      private var _urlByLoader:Dictionary = new Dictionary();
      
      private var _loaderInProgressByURL:Dictionary = new Dictionary();
      
      private var _loadersQueue:Array = new Array();
      
      private var _lastUsingTimestampMSByURL:Dictionary = new Dictionary();
      
      private var _numThreads:int;
      
      private const MAX_THREADS:int = 3;
      
      private var _clearCacheTimer:Timer;
      
      private var _context:LoaderContext;
      
      private const REPEAT_COUNT:int = 3;
      
      public function URLBitmapLoader()
      {
         super();
         this._context = new LoaderContext(true);
      }
      
      private function onTimerTick(param1:TimerEvent) : void
      {
         this.checkAndClearCache();
      }
      
      public function getBitmapDataFromURL(param1:String) : BitmapData
      {
         var _loc2_:BitmapData = null;
         var _loc3_:LoaderRepeatable = null;
         if(this._loaderInProgressByURL[param1] == null)
         {
            if(this._bitmapsDataCache[param1] != null && isBitmapDataValid(this._bitmapsDataCache[param1]))
            {
               this._lastUsingTimestampMSByURL[param1] = new Date().valueOf();
               return this._bitmapsDataCache[param1];
            }
            _loc2_ = this.createAndSubscribeTempBitmapData(param1);
            _loc3_ = new LoaderRepeatable(this.REPEAT_COUNT);
            this._loaderInProgressByURL[param1] = _loc3_;
            this._urlByLoader[_loc3_] = param1;
            this._loadersQueue.push(_loc3_);
            this.updateQueue();
            return _loc2_;
         }
         return this.createAndSubscribeTempBitmapData(param1);
      }
      
      public function getScaledBitmapFromURL(param1:String) : ScaledBitmap
      {
         var _loc2_:ScaledBitmap = null;
         var _loc3_:LoaderRepeatable = null;
         if(this._loaderInProgressByURL[param1] == null)
         {
            if(this._bitmapsDataCache[param1] != null)
            {
               this._lastUsingTimestampMSByURL[param1] = new Date().valueOf();
               return new ScaledBitmap(this._bitmapsDataCache[param1]);
            }
            _loc2_ = this.createAndSubscribeTempScaledBitmap(param1);
            _loc3_ = new LoaderRepeatable(this.REPEAT_COUNT);
            this._loaderInProgressByURL[param1] = _loc3_;
            this._urlByLoader[_loc3_] = param1;
            this._loadersQueue.push(_loc3_);
            this.updateQueue();
            return _loc2_;
         }
         return this.createAndSubscribeTempScaledBitmap(param1);
      }
      
      public function getFilledBitmapFromURL(param1:String) : FilledBitmap
      {
         var _loc2_:FilledBitmap = null;
         if(this._loaderInProgressByURL[param1] == null)
         {
            if(this._bitmapsDataCache[param1] != null)
            {
               this._lastUsingTimestampMSByURL[param1] = new Date().valueOf();
               return new FilledBitmap(this._bitmapsDataCache[param1]);
            }
            _loc2_ = this.createAndSubscribeTempFilledBitmap(param1);
            this.replaceBitmapDataFromURL(_loc2_,param1);
            return _loc2_;
         }
         return this.createAndSubscribeTempFilledBitmap(param1);
      }
      
      protected function getCenteredBitmapFromURL(param1:String) : CenteredBitmap
      {
         var _loc2_:CenteredBitmap = null;
         var _loc3_:LoaderRepeatable = null;
         if(this._loaderInProgressByURL[param1] == null)
         {
            if(this._bitmapsDataCache[param1] != null)
            {
               this._lastUsingTimestampMSByURL[param1] = new Date().valueOf();
               return new CenteredBitmap(this._bitmapsDataCache[param1]);
            }
            _loc2_ = this.createAndSubscribeTempCenteredBitmap(param1);
            _loc3_ = new LoaderRepeatable(this.REPEAT_COUNT);
            this._loaderInProgressByURL[param1] = _loc3_;
            this._urlByLoader[_loc3_] = param1;
            this._loadersQueue.push(_loc3_);
            this.updateQueue();
            return _loc2_;
         }
         return this.createAndSubscribeTempCenteredBitmap(param1);
      }
      
      protected function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : Bitmap
      {
         var _loc3_:LoaderRepeatable = null;
         if(this._loaderInProgressByURL[param2] == null)
         {
            if(this._bitmapsDataCache[param2] != null)
            {
               this._lastUsingTimestampMSByURL[param2] = new Date().valueOf();
               param1.bitmapData = this._bitmapsDataCache[param2];
               return param1;
            }
            this.subscribeBitmapForUpdate(param1,param2);
            _loc3_ = new LoaderRepeatable(this.REPEAT_COUNT);
            this._loaderInProgressByURL[param2] = _loc3_;
            this._urlByLoader[_loc3_] = param2;
            this._loadersQueue.push(_loc3_);
            this.updateQueue();
            return param1;
         }
         this.subscribeBitmapForUpdate(param1,param2);
         return param1;
      }
      
      public function getBitmapFromURL(param1:String) : Bitmap
      {
         var _loc2_:Bitmap = null;
         var _loc3_:LoaderRepeatable = null;
         if(this._loaderInProgressByURL[param1] == null)
         {
            if(this._bitmapsDataCache[param1] != null)
            {
               this._lastUsingTimestampMSByURL[param1] = new Date().valueOf();
               return new Bitmap(this._bitmapsDataCache[param1]);
            }
            _loc2_ = this.createAndSubscribeTempBitmap(param1);
            _loc3_ = new LoaderRepeatable(this.REPEAT_COUNT);
            this._loaderInProgressByURL[param1] = _loc3_;
            this._urlByLoader[_loc3_] = param1;
            this._loadersQueue.push(_loc3_);
            this.updateQueue();
            return _loc2_;
         }
         return this.createAndSubscribeTempBitmap(param1);
      }
      
      private function createAndSubscribeTempBitmapData(param1:String) : BitmapData
      {
         var _loc2_:BitmapData = new BitmapData(1,1,true,0);
         if(this._waitLoadBitmapDataURL[param1] == null)
         {
            this._waitLoadBitmapDataURL[param1] = new Array();
         }
         (this._waitLoadBitmapDataURL[param1] as Array).push(_loc2_);
         return _loc2_;
      }
      
      private function createAndSubscribeTempBitmap(param1:String) : Bitmap
      {
         var _loc2_:BitmapData = this.createAndSubscribeTempBitmapData(param1);
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         if(this._waitLoadBitmapURL[param1] == null)
         {
            this._waitLoadBitmapURL[param1] = new Array();
         }
         (this._waitLoadBitmapURL[param1] as Array).push(_loc3_);
         return _loc3_;
      }
      
      private function createAndSubscribeTempScaledBitmap(param1:String) : ScaledBitmap
      {
         var _loc2_:BitmapData = this.createAndSubscribeTempBitmapData(param1);
         var _loc3_:ScaledBitmap = new ScaledBitmapWithPreloader(_loc2_);
         this.subscribeBitmapForUpdate(_loc3_,param1);
         return _loc3_;
      }
      
      private function createAndSubscribeTempFilledBitmap(param1:String) : FilledBitmap
      {
         var _loc2_:BitmapData = this.createAndSubscribeTempBitmapData(param1);
         var _loc3_:FilledBitmap = new FilledBitmap(_loc2_);
         this.subscribeBitmapForUpdate(_loc3_,param1);
         return _loc3_;
      }
      
      private function subscribeBitmapForUpdate(param1:Bitmap, param2:String) : void
      {
         if(this._waitLoadBitmapURL[param2] == null)
         {
            this._waitLoadBitmapURL[param2] = new Array();
         }
         (this._waitLoadBitmapURL[param2] as Array).push(param1);
      }
      
      private function createAndSubscribeTempCenteredBitmap(param1:String) : CenteredBitmap
      {
         var _loc2_:BitmapData = this.createAndSubscribeTempBitmapData(param1);
         var _loc3_:CenteredBitmap = new CenteredBitmap(_loc2_);
         if(this._waitLoadBitmapURL[param1] == null)
         {
            this._waitLoadBitmapURL[param1] = new Array();
         }
         (this._waitLoadBitmapURL[param1] as Array).push(_loc3_);
         return _loc3_;
      }
      
      private function updateQueue() : void
      {
         var loader:LoaderRepeatable = null;
         var url:String = null;
         var urlRequest:URLRequest = null;
         if(this._numThreads < this.MAX_THREADS)
         {
            if(this._loadersQueue.length != 0)
            {
               loader = this._loadersQueue.shift();
               url = this._urlByLoader[loader];
               urlRequest = new URLRequest(url);
               loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onBitmapLoad);
               loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
               try
               {
                  ++this._numThreads;
                  this._urlByLoader[loader] = null;
                  delete this._urlByLoader[loader];
                  loader.load(urlRequest,this._context);
               }
               catch(error:Error)
               {
                  Cc.error(error.getStackTrace());
                  --_numThreads;
                  updateQueue();
                  throw error;
               }
            }
         }
      }
      
      private function onBitmapLoad(param1:Event) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:BitmapData = null;
         var _loc4_:String = param1.target.url;
         this._bitmapsDataCache[_loc4_] = (param1.target.content as Bitmap).bitmapData;
         if(this._waitLoadBitmapURL[_loc4_] != null)
         {
            for each(_loc2_ in this._waitLoadBitmapURL[_loc4_])
            {
               _loc2_.bitmapData = this._bitmapsDataCache[_loc4_];
            }
            this._waitLoadBitmapURL[_loc4_] = null;
            delete this._waitLoadBitmapURL[_loc4_];
         }
         if(this._waitLoadBitmapDataURL[_loc4_] != null)
         {
            for each(_loc3_ in this._waitLoadBitmapDataURL[_loc4_])
            {
               _loc3_.dispose();
            }
            this._waitLoadBitmapDataURL[_loc4_] = null;
            delete this._waitLoadBitmapDataURL[_loc4_];
         }
         this.removeloaderFromThread(_loc4_);
         this.updateQueue();
      }
      
      private function removeloaderFromThread(param1:String) : void
      {
         LoaderRepeatable(this._loaderInProgressByURL[param1]).removeEventListener(IOErrorEvent.IO_ERROR,this.onLoadError);
         this._loaderInProgressByURL[param1] = null;
         delete this._loaderInProgressByURL[param1];
         dispatchEvent(new URLBitmapLoaderEvent(URLBitmapLoaderEvent.BITMAP_LOADED_FROM_URL,param1));
         this._lastUsingTimestampMSByURL[param1] = new Date().valueOf();
         --this._numThreads;
      }
      
      private function onLoadError(param1:IOErrorEvent) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:LoaderRepeatable = LoaderRepeatable(_loc2_.loader);
         var _loc4_:String = _loc3_.url;
         this.removeloaderFromThread(_loc4_);
         this.updateQueue();
      }
      
      private function checkAndClearCache() : void
      {
         var _loc1_:String = null;
         var _loc2_:Number = new Date().valueOf();
         for(_loc1_ in this._bitmapsDataCache)
         {
            if(this._lastUsingTimestampMSByURL[_loc1_] + TimeConverter.fromMinutes(MAX_BITMAP_IDLE_TIME_MINUTES) < _loc2_)
            {
               this.removeBitmapFromCache(_loc1_);
            }
         }
      }
      
      private function removeBitmapFromCache(param1:String) : void
      {
         this._bitmapsDataCache[param1].dispose();
         this._bitmapsDataCache[param1] = null;
         delete this._bitmapsDataCache[param1];
      }
      
      public function isLoadBitmapURL(param1:String) : Boolean
      {
         if(this._bitmapsDataCache[param1] == null || this._loaderInProgressByURL[param1] == null)
         {
            return false;
         }
         return true;
      }
      
      public function isBitmapURLLoaded(param1:String) : Boolean
      {
         if(this._bitmapsDataCache[param1] != null)
         {
            return true;
         }
         return false;
      }
   }
}


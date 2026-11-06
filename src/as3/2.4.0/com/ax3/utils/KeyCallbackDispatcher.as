package com.ax3.utils
{
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class KeyCallbackDispatcher
   {
      
      private var _callbackByKey:Dictionary = new Dictionary();
      
      private var callbackTimestamps:Dictionary = new Dictionary();
      
      public var averageTimeMS:AverageNumber = new AverageNumber();
      
      public function KeyCallbackDispatcher()
      {
         super();
      }
      
      public function add(param1:Object, param2:Function = null) : void
      {
         if(param2 != null)
         {
            if(this._callbackByKey[param1])
            {
               throw new Error("Double setting of callback");
            }
            this._callbackByKey[param1] = param2;
            this.callbackTimestamps[param1] = getTimer();
         }
      }
      
      public function clear() : int
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         for(_loc2_ in this._callbackByKey)
         {
            this._callbackByKey[_loc2_] = null;
            delete this._callbackByKey[_loc2_];
            this.callbackTimestamps[_loc2_] = null;
            delete this.callbackTimestamps[_loc2_];
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function dispatch(param1:Object, param2:Array) : void
      {
         var _loc3_:uint = 0;
         if(param1 in this._callbackByKey && this._callbackByKey[param1] is Function)
         {
            (this._callbackByKey[param1] as Function).apply(this,param2);
            this._callbackByKey[param1] = null;
            delete this._callbackByKey[param1];
            _loc3_ = getTimer() - this.callbackTimestamps[param1];
            this.averageTimeMS.push(_loc3_);
            this.callbackTimestamps[param1] = null;
            delete this.callbackTimestamps[param1];
         }
      }
   }
}


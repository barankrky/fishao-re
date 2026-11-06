package com.ax3.utils
{
   import flash.utils.Dictionary;
   
   public class KeyCallbacksDispatcher
   {
      
      private var _callbacks:Dictionary;
      
      public function KeyCallbacksDispatcher()
      {
         super();
         this._callbacks = new Dictionary();
      }
      
      public function destroy() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in this._callbacks)
         {
            this.destroyListeners(_loc1_);
         }
         this._callbacks = null;
      }
      
      public function dispatchAndDestroy(param1:Object, ... rest) : void
      {
         this.dispatch(param1,rest);
         this.destroyListeners(param1);
      }
      
      private function destroyListeners(param1:Object) : void
      {
         if(param1 in this._callbacks)
         {
            (this._callbacks[param1] as CallbackDispatcher).destroy();
            this._callbacks[param1] = null;
            delete this._callbacks[param1];
         }
      }
      
      public function dispatch(param1:Object, param2:Array = null) : void
      {
         if(param1 in this._callbacks)
         {
            (this._callbacks[param1] as CallbackDispatcher).dispatch(param2);
         }
      }
      
      public function add(param1:Object, param2:Function, param3:Boolean = true) : void
      {
         if(!(param1 in this._callbacks))
         {
            this._callbacks[param1] = new CallbackDispatcher();
         }
         var _loc4_:CallbackDispatcher = this._callbacks[param1] as CallbackDispatcher;
         if(!_loc4_.hasCallback(param2) || param3 == false)
         {
            _loc4_.add(param2);
         }
      }
      
      public function hasListeners(param1:Object) : Boolean
      {
         return param1 in this._callbacks && (this._callbacks[param1] as Array).length > 0;
      }
   }
}


package com.ax3.utils
{
   public class CallbackDispatcher
   {
      
      private var _callbacks:Array;
      
      public function CallbackDispatcher()
      {
         super();
         this._callbacks = [];
      }
      
      public function destroy() : void
      {
         this._callbacks = null;
      }
      
      public function dispatchAndDestroy(... rest) : void
      {
         this.dispatchWithArgs(rest);
         this.destroyAllListeners();
      }
      
      private function destroyAllListeners() : void
      {
         this._callbacks = [];
      }
      
      public function dispatch(param1:Object, ... rest) : void
      {
         this.dispatchWithArgs(rest);
      }
      
      private function dispatchWithArgs(param1:Array) : void
      {
         var _loc2_:Callback = null;
         for each(_loc2_ in this._callbacks)
         {
            _loc2_.callWithArgs(this,param1);
         }
      }
      
      public function add(param1:Function, ... rest) : void
      {
         this.addWithArgs(param1,rest);
      }
      
      public function hasCallback(param1:Function) : Boolean
      {
         return this._callbacks.indexOf(param1) != -1;
      }
      
      public function addWithArgs(param1:Function, param2:Array) : void
      {
         var _loc3_:Callback = new Callback(param1);
         _loc3_.args = param2;
         this._callbacks.push(_loc3_);
      }
      
      public function dispatchAndShift(... rest) : void
      {
         this.dispatchAndShiftWithArgs(rest);
      }
      
      private function dispatchAndShiftWithArgs(param1:Array) : void
      {
         var _loc2_:Callback = this._callbacks.shift();
         if(_loc2_ != null)
         {
            _loc2_.callWithArgs(this,param1);
         }
      }
      
      public function get length() : Number
      {
         return this._callbacks.length;
      }
   }
}


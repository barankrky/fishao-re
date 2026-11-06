package com.ax3.utils
{
   public class Callback
   {
      
      private var _callback:Function;
      
      private var _args:Array;
      
      public function Callback(param1:Function = null, ... rest)
      {
         super();
         this._callback = param1;
         this._args = rest;
      }
      
      public function call(param1:* = null, ... rest) : void
      {
         if(rest.length > 0)
         {
            this._args = rest;
         }
         this.callWithArgs(param1,this._args);
      }
      
      public function callWithArgs(param1:* = null, param2:Array = null) : void
      {
         if(param2 != null)
         {
            this._args = param2;
         }
         if(this._args == null)
         {
            this._args = [];
         }
         (this._callback as Function).apply(param1,this._args);
      }
      
      public function get func() : Function
      {
         return this._callback;
      }
      
      public function set args(param1:Array) : void
      {
         this._args = param1;
      }
   }
}


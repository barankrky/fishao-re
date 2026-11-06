package com.ax3.jss.ext
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   
   public class _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      protected var _dispatcher:IEventDispatcher;
      
      protected var _connection:_30b7fef66889ed3a5e0f6633;
      
      protected var _fscModel:_8037b27a84f7a4943b0eb5f7;
      
      public function _d23481b750999df4f0e00416()
      {
         super();
      }
      
      public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         this._dispatcher = param1;
         this._connection = param2;
         this._fscModel = param3;
      }
   }
}


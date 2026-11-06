package com.ax3.fishao
{
   public class KeyCallback
   {
      
      private static var _instance:KeyCallback;
      
      private var _callbackStack:Object = {};
      
      public function KeyCallback()
      {
         super();
      }
      
      public static function getInstance() : KeyCallback
      {
         if(_instance == null)
         {
            _instance = new KeyCallback();
         }
         return _instance;
      }
      
      public function addCallback(param1:int, param2:Function = null) : void
      {
         this._callbackStack[param1] = param2;
      }
      
      public function doCallback(param1:Object) : void
      {
         if(this._callbackStack.hasOwnProperty(param1.reqId))
         {
            if(this._callbackStack[param1.reqId] != null)
            {
               this._callbackStack[param1.reqId].call(null,param1);
            }
         }
      }
   }
}


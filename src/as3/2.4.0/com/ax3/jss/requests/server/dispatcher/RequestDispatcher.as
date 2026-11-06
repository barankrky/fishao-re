package com.ax3.jss.requests.server.dispatcher
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.getClass;
   import flash.utils.Dictionary;
   
   public class RequestDispatcher
   {
      
      private var _requestListeners:Dictionary = new Dictionary();
      
      public function RequestDispatcher()
      {
         super();
      }
      
      public function addRequestListener(param1:Class, param2:Function) : void
      {
         if(this._requestListeners[param1] == null)
         {
            this._requestListeners[param1] = [];
         }
         if((this._requestListeners[param1] as Array).indexOf(param2) == -1)
         {
            (this._requestListeners[param1] as Array).push(param2);
         }
      }
      
      public function removeRequestListener(param1:Class, param2:Function) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Array = this._requestListeners[param1] as Array;
         if(_loc4_ != null && _loc4_.length > 0)
         {
            _loc3_ = _loc4_.indexOf(param2);
            if(_loc3_ != -1)
            {
               _loc4_.splice(_loc3_,1);
            }
         }
      }
      
      public function handleRequest(param1:ServerResp) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Function = null;
         var _loc4_:Class = getClass(param1);
         if(this._requestListeners[_loc4_] != null)
         {
            _loc2_ = this._requestListeners[_loc4_];
            for each(_loc3_ in _loc2_)
            {
               _loc3_(param1);
            }
         }
      }
      
      public function hasHandler(param1:ServerResp) : Boolean
      {
         var _loc2_:Class = getClass(param1);
         return this._requestListeners[_loc2_] != null && (this._requestListeners[_loc2_] as Array).length > 0;
      }
   }
}


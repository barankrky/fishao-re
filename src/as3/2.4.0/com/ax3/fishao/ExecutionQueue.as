package com.ax3.fishao
{
   import com.ax3.net.LoadHandler;
   import flash.utils.Dictionary;
   
   public class ExecutionQueue
   {
      
      private static var _instance:ExecutionQueue;
      
      public static var LOGIN:int = 1;
      
      public static var CHARACTER_EDITOR:int = 2;
      
      public static var MAP:int = 3;
      
      private var _loadHandlerByType:Dictionary;
      
      private var _queue:Array;
      
      public function ExecutionQueue()
      {
         super();
         this._loadHandlerByType = new Dictionary();
         this._queue = [];
      }
      
      public static function getInstance() : ExecutionQueue
      {
         if(_instance == null)
         {
            _instance = new ExecutionQueue();
         }
         return _instance;
      }
      
      public function addLoadHandler(param1:LoadHandler) : void
      {
         this._loadHandlerByType[param1.itemType] = param1;
         if(this._queue.indexOf(param1.itemType) == -1)
         {
            this._queue.push(param1.itemType);
         }
      }
      
      public function doQueue() : void
      {
         var _loc1_:LoadHandler = null;
         if(this._queue.length == 0)
         {
            this._loadHandlerByType = new Dictionary();
            return;
         }
         var _loc2_:int = this._queue.shift();
         if(this._loadHandlerByType[_loc2_] != null)
         {
            _loc1_ = this._loadHandlerByType[_loc2_];
            if(_loc1_.executionChecker == null || Boolean(_loc1_.executionChecker.apply(this)))
            {
               _loc1_.executor.apply(this);
            }
            else
            {
               this.doQueue();
            }
         }
         else
         {
            this.doQueue();
         }
      }
   }
}


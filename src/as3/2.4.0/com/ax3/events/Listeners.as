package com.ax3.events
{
   import com.ax3.core.EventDispatcherHandler;
   import flash.events.IEventDispatcher;
   
   public class Listeners
   {
      
      private static var eventDispatcherHandler:EventDispatcherHandler = new EventDispatcherHandler();
      
      public function Listeners()
      {
         super();
      }
      
      public static function addEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false, param6:int = 0, param7:Boolean = false) : void
      {
         eventDispatcherHandler.addEventListener(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function removeEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false) : void
      {
         eventDispatcherHandler.removeEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function getHandlerCountByTarget(param1:IEventDispatcher) : int
      {
         var _loc2_:Vector.<EvenSubscription> = eventDispatcherHandler.getHandlersByTarget(param1);
         return _loc2_ == null ? 0 : int(_loc2_.length);
      }
      
      public static function getTargetCountByHandler(param1:Object) : int
      {
         var _loc2_:Vector.<EvenSubscription> = eventDispatcherHandler.getTargetsByHandler(param1);
         return _loc2_ == null ? 0 : int(_loc2_.length);
      }
      
      public static function destroyAllSubscriptions(param1:Object) : void
      {
         eventDispatcherHandler.destroyAllSubscriptions(param1);
      }
      
      public static function createWatchReport() : String
      {
         return String(eventDispatcherHandler.count);
      }
      
      public static function createListenersReport() : String
      {
         return eventDispatcherHandler.createListenersReport();
      }
   }
}


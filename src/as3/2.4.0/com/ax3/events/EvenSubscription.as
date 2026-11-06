package com.ax3.events
{
   import flash.events.IEventDispatcher;
   
   public class EvenSubscription
   {
      
      public static var globalInstanceId:int;
      
      public var handler:Object;
      
      public var target:IEventDispatcher;
      
      public var type:String;
      
      public var listener:Function;
      
      public var useCapture:Boolean;
      
      public var priority:int;
      
      public var useWeakReference:Boolean;
      
      public var instanceId:int;
      
      public function EvenSubscription(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean, param6:int, param7:Boolean)
      {
         super();
         this.instanceId = globalInstanceId++;
         this.handler = param1;
         this.target = param2;
         this.type = param3;
         this.listener = param4;
         this.useCapture = param5;
         this.priority = param6;
         this.useWeakReference = param7;
      }
      
      public function equal(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean) : Boolean
      {
         return this.handler == param1 && this.target == param2 && this.type == param3 && this.listener == param4 && this.useCapture == param5;
      }
      
      public function removeAndDestroy() : void
      {
         this.removeListener();
         this.destroy();
      }
      
      private function removeListener() : void
      {
         this.target.removeEventListener(this.type,this.listener,this.useCapture);
      }
      
      private function destroy() : void
      {
         this.handler = null;
         this.target = null;
         this.type = null;
         this.listener = null;
      }
      
      public function toString() : String
      {
         return "[EvenSubscription(" + this.instanceId + "). " + this.handler + "->" + this.target + " (type=" + this.type + ")]";
      }
   }
}


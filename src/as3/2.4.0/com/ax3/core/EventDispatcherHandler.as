package com.ax3.core
{
   import com.ax3.events.EvenSubscription;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class EventDispatcherHandler
   {
      
      public var count:int = 0;
      
      private var _subscriptionsByHandler:Dictionary = new Dictionary(true);
      
      private var _subscriptionsByTarget:Dictionary = new Dictionary(true);
      
      public function EventDispatcherHandler()
      {
         super();
      }
      
      public function addEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false, param6:int = 0, param7:Boolean = false) : void
      {
         var _loc8_:EvenSubscription = null;
         if(this.findSubscription(param1,param2,param3,param4,param5) == null)
         {
            _loc8_ = new EvenSubscription(param1,param2,param3,param4,param5,param6,param7);
            this.linkWithHandlerMap(_loc8_);
            this.linkWithTargetMap(_loc8_);
            param2.addEventListener(param3,param4,param5,param6,param7);
            ++this.count;
         }
      }
      
      private function linkWithHandlerMap(param1:EvenSubscription) : void
      {
         var _loc2_:Object = param1.handler;
         if(!(_loc2_ in this._subscriptionsByHandler))
         {
            this._subscriptionsByHandler[_loc2_] = new Vector.<EvenSubscription>();
         }
         (this._subscriptionsByHandler[_loc2_] as Vector.<EvenSubscription>).push(param1);
      }
      
      private function linkWithTargetMap(param1:EvenSubscription) : void
      {
         var _loc2_:Object = param1.target;
         if(!(_loc2_ in this._subscriptionsByTarget))
         {
            this._subscriptionsByTarget[_loc2_] = new Vector.<EvenSubscription>();
         }
         (this._subscriptionsByTarget[_loc2_] as Vector.<EvenSubscription>).push(param1);
      }
      
      public function removeEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false) : void
      {
         var _loc6_:EvenSubscription = this.findSubscription(param1,param2,param3,param4,param5);
         if(_loc6_ != null)
         {
            this.unlinkFromHandlerMap(_loc6_);
            this.unlinkFromTargetMap(_loc6_);
            _loc6_.removeAndDestroy();
            --this.count;
         }
      }
      
      private function findSubscription(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean) : EvenSubscription
      {
         var _loc6_:Vector.<EvenSubscription> = null;
         var _loc7_:EvenSubscription = null;
         if(param2 in this._subscriptionsByTarget)
         {
            _loc6_ = this._subscriptionsByTarget[param2];
            for each(_loc7_ in _loc6_)
            {
               if(_loc7_.equal(param1,param2,param3,param4,param5))
               {
                  return _loc7_;
               }
            }
         }
         return null;
      }
      
      private function unlinkFromHandlerMap(param1:EvenSubscription) : void
      {
         var _loc2_:Vector.<EvenSubscription> = null;
         var _loc3_:int = 0;
         if(param1.handler in this._subscriptionsByHandler)
         {
            _loc2_ = this._subscriptionsByHandler[param1.handler];
            _loc3_ = _loc2_.indexOf(param1);
            if(_loc3_ > -1)
            {
               _loc2_.splice(_loc3_,1);
            }
            if(_loc2_.length == 0)
            {
               this._subscriptionsByHandler[param1.handler] = null;
               delete this._subscriptionsByHandler[param1.handler];
            }
         }
      }
      
      private function unlinkFromTargetMap(param1:EvenSubscription) : void
      {
         var _loc2_:Vector.<EvenSubscription> = null;
         var _loc3_:int = 0;
         if(param1.target in this._subscriptionsByTarget)
         {
            _loc2_ = this._subscriptionsByTarget[param1.target];
            _loc3_ = _loc2_.indexOf(param1);
            if(_loc3_ > -1)
            {
               _loc2_.splice(_loc3_,1);
            }
            if(_loc2_.length == 0)
            {
               this._subscriptionsByTarget[param1.target] = null;
               delete this._subscriptionsByTarget[param1.target];
            }
         }
      }
      
      public function getHandlersByTarget(param1:IEventDispatcher) : Vector.<EvenSubscription>
      {
         return param1 in this._subscriptionsByTarget ? this._subscriptionsByTarget[param1] : null;
      }
      
      public function getTargetsByHandler(param1:Object) : Vector.<EvenSubscription>
      {
         return param1 in this._subscriptionsByHandler ? this._subscriptionsByHandler[param1] : null;
      }
      
      public function destroyAllSubscriptions(param1:Object) : void
      {
         this.destroyAllListenersOfHandler(param1);
         if(param1 is IEventDispatcher)
         {
            this.destroyAllHandlersOfTarget(IEventDispatcher(param1));
         }
      }
      
      private function destroyAllListenersOfHandler(param1:Object) : void
      {
         var _loc2_:Vector.<EvenSubscription> = null;
         var _loc3_:EvenSubscription = null;
         if(param1 in this._subscriptionsByHandler)
         {
            _loc2_ = this._subscriptionsByHandler[param1];
            for each(_loc3_ in _loc2_)
            {
               this.unlinkFromTargetMap(_loc3_);
               _loc3_.removeAndDestroy();
               --this.count;
            }
            this._subscriptionsByHandler[param1] = null;
            delete this._subscriptionsByHandler[param1];
         }
      }
      
      private function destroyAllHandlersOfTarget(param1:IEventDispatcher) : void
      {
         var _loc2_:Vector.<EvenSubscription> = null;
         var _loc3_:EvenSubscription = null;
         if(param1 in this._subscriptionsByTarget)
         {
            _loc2_ = this._subscriptionsByTarget[param1];
            for each(_loc3_ in _loc2_)
            {
               this.unlinkFromHandlerMap(_loc3_);
               _loc3_.removeAndDestroy();
            }
            this._subscriptionsByTarget[param1] = null;
            delete this._subscriptionsByTarget[param1];
         }
      }
      
      public function createListenersReport() : String
      {
         var _loc1_:Vector.<EvenSubscription> = null;
         var _loc2_:EvenSubscription = null;
         var _loc3_:String = "";
         var _loc4_:int = 1;
         for each(_loc1_ in this._subscriptionsByHandler)
         {
            for each(_loc2_ in _loc1_)
            {
               if(_loc3_.length > 0)
               {
                  _loc3_ += "\n";
               }
               _loc3_ += _loc4_ + "\t" + _loc2_.toString();
            }
         }
         return _loc3_;
      }
   }
}


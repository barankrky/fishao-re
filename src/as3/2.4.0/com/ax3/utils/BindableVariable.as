package com.ax3.utils
{
   import com.ax3.events.VariableChangeEvent;
   import flash.events.EventDispatcher;
   
   public class BindableVariable extends EventDispatcher
   {
      
      private var _value:* = null;
      
      private var listeners:int = 0;
      
      public function BindableVariable(param1:* = null)
      {
         super();
         this._value = param1;
      }
      
      public function set value(param1:*) : void
      {
         if(this._value == param1)
         {
            return;
         }
         var _loc2_:VariableChangeEvent = new VariableChangeEvent(null,param1,this._value);
         this._value = param1;
         dispatchEvent(_loc2_);
      }
      
      public function get value() : *
      {
         return this._value;
      }
      
      public function destroy() : void
      {
         if(this.listeners != 0)
         {
            throw new Error("Remove all listeners before destroy");
         }
         this._value = null;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         ++this.listeners;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         --this.listeners;
         super.removeEventListener(param1,param2,param3);
      }
   }
}


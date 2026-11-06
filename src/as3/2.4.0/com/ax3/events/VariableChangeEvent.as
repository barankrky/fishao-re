package com.ax3.events
{
   import flash.events.Event;
   
   public class VariableChangeEvent extends Event
   {
      
      public static const CHANGE:String = "variableChange";
      
      public var varName:String;
      
      public var newValue:Object;
      
      public var oldValue:Object;
      
      public function VariableChangeEvent(param1:String, param2:Object = null, param3:Object = null)
      {
         super(CHANGE,false,false);
         this.varName = param1;
         this.newValue = param2;
         this.oldValue = param3;
      }
      
      override public function clone() : Event
      {
         return new VariableChangeEvent(this.varName,this.newValue,this.oldValue);
      }
   }
}


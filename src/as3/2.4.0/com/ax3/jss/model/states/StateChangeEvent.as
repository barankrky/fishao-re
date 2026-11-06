package com.ax3.jss.model.states
{
   import flash.events.Event;
   
   public class StateChangeEvent extends Event
   {
      
      public static const UPDATE_STATE:String = "updateState";
      
      public var newState:IState;
      
      public var oldState:IState;
      
      public function StateChangeEvent(param1:IState, param2:IState, param3:Boolean = false, param4:Boolean = false)
      {
         super(UPDATE_STATE,param3,param4);
         this.newState = param1;
         this.oldState = param2;
      }
      
      override public function clone() : Event
      {
         return new StateChangeEvent(this.newState,this.oldState,bubbles,cancelable);
      }
   }
}


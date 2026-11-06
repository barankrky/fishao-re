package com.ax3.jss.model.states
{
   import com.ax3.utils.KeyCallbacksDispatcher;
   import flash.events.IEventDispatcher;
   
   public class DispatchedStateMachine extends StateMachine
   {
      
      private var _handlers:KeyCallbacksDispatcher = new KeyCallbacksDispatcher();
      
      public function DispatchedStateMachine(param1:IEventDispatcher, param2:IState = null)
      {
         super(param1,param2);
      }
      
      override protected function changeState(param1:IState) : void
      {
         super.changeState(param1);
         this._handlers.dispatch(param1);
      }
      
      public function addStateChangeListener(param1:IState, param2:Function) : void
      {
         this._handlers.add(param1,param2);
      }
   }
}


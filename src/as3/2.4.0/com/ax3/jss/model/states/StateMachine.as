package com.ax3.jss.model.states
{
   import flash.events.IEventDispatcher;
   
   public class StateMachine
   {
      
      private var _state:IState;
      
      private var _stateChangeDispatcher:IEventDispatcher;
      
      public function StateMachine(param1:IEventDispatcher, param2:IState = null)
      {
         super();
         this._stateChangeDispatcher = param1;
         this._state = param2;
      }
      
      public function set state(param1:IState) : void
      {
         if(this._state != param1)
         {
            this.changeState(param1);
         }
      }
      
      protected function changeState(param1:IState) : void
      {
         var _loc2_:StateChangeEvent = new StateChangeEvent(param1,this._state);
         this._state = param1;
         this._stateChangeDispatcher.dispatchEvent(_loc2_);
      }
      
      public function get state() : IState
      {
         return this._state;
      }
   }
}


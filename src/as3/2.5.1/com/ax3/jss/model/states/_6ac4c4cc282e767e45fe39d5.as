package com.ax3.jss.model.states
{
   import com.ax3.utils._47ac5d7bf27669781d94aacf;
   import flash.events.IEventDispatcher;
   
   public class _6ac4c4cc282e767e45fe39d5 extends _98d0967d384969c2c6f02e26
   {
      
      private var _24d49f2ee5f41c8002cbd7ff:_47ac5d7bf27669781d94aacf = new _47ac5d7bf27669781d94aacf();
      
      public function _6ac4c4cc282e767e45fe39d5(param1:IEventDispatcher, param2:_6ad0e2821c6ebbf3ebab748d = null)
      {
         super(param1,param2);
      }
      
      override protected function _485b69e69c0faa3d8de32269(param1:_6ad0e2821c6ebbf3ebab748d) : void
      {
         super._485b69e69c0faa3d8de32269(param1);
         this._24d49f2ee5f41c8002cbd7ff.dispatch(param1);
      }
      
      public function _e612ecab33b21de0d3fa5fb0(param1:_6ad0e2821c6ebbf3ebab748d, param2:Function) : void
      {
         this._24d49f2ee5f41c8002cbd7ff.add(param1,param2);
      }
   }
}


package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.DailyQuestCompleteReq;
   import protocol.cr.GetDailyQuestReq;
   
   public class _bcbedc5cbf3e5e8677e15bac extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _bcbedc5cbf3e5e8677e15bac()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _b8cb5ec7c1ba5f343109f1cc(param1:Function) : void
      {
         _connection.send(new DailyQuestCompleteReq(),param1);
      }
      
      public function _f95b6a18cf3e1d7d67dc60f9(param1:Function) : void
      {
         _connection.send(new GetDailyQuestReq(),param1);
      }
   }
}


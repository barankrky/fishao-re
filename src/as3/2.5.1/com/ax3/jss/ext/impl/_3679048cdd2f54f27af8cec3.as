package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetFriendsHouseReq;
   
   public class _3679048cdd2f54f27af8cec3 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _3679048cdd2f54f27af8cec3()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _6c7381c6193f1c6f849e48ed(param1:Function) : void
      {
         _connection.send(new GetFriendsHouseReq(),param1);
      }
   }
}


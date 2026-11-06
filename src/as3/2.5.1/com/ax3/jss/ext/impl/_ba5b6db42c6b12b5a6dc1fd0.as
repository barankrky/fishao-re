package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.SellFishReq;
   
   public class _ba5b6db42c6b12b5a6dc1fd0 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _ba5b6db42c6b12b5a6dc1fd0()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _3d2a6d31a485421facc249c3(param1:int, param2:int, param3:int, param4:Function = null) : void
      {
         var _loc5_:SellFishReq = new SellFishReq();
         _loc5_.fishId = param1;
         _loc5_.fishType = param2;
         _loc5_.amount = param3;
         _connection.send(_loc5_,param4);
      }
   }
}


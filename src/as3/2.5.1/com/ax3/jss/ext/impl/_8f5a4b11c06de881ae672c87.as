package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.BuyEnergyReq;
   import protocol.cr.GetDataReq;
   
   public class _8f5a4b11c06de881ae672c87 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _8f5a4b11c06de881ae672c87()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _ac965e2298f5d0b7c6852a45(param1:Function) : void
      {
         var _loc2_:GetDataReq = null;
         _loc2_ = new GetDataReq();
         _loc2_.data = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揅捶揘捺揉掱揫掺捲揀掺揥挶捅掫掐掖揘捚揳控据捵挝揞挎掱捊揸掕捌掀","捄掍捷揖揻挍捵捶接挗插掿指掉掜揅")):0x5490D4B5 ^ 0x7E158433 ^ -540737915 ^ -180244990};
         _connection.send(_loc2_,param1);
      }
      
      public function _289b95e3780da3da5f06a2c5(param1:int, param2:Function = null) : void
      {
         var _loc3_:BuyEnergyReq = new BuyEnergyReq(param1);
         _connection.send(_loc3_,param2);
      }
   }
}


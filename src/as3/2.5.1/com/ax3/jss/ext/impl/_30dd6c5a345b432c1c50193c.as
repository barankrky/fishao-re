package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.missions.AcceptMissionReq;
   import protocol.cr.missions.CollectMissionRewardReq;
   import protocol.cr.missions.GetActiveMissionsReq;
   import protocol.cr.missions.GetCompletedMissionsReq;
   
   public class _30dd6c5a345b432c1c50193c extends _d23481b750999df4f0e00416
   {
      
      public function _30dd6c5a345b432c1c50193c()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _febe16403fb83fc5e669f36c(param1:Function) : void
      {
         _connection.send(new GetActiveMissionsReq(),param1);
      }
      
      public function _c519f797bf66dca70b864d5b(param1:Function) : void
      {
         _connection.send(new GetCompletedMissionsReq(),param1);
      }
      
      public function _7b9fc05c9d419ba00af2174d(param1:String, param2:Function) : void
      {
         _connection.send(new AcceptMissionReq(param1),param2);
      }
      
      public function collectReward(param1:String, param2:Function) : void
      {
         _connection.send(new CollectMissionRewardReq(param1),param2);
      }
   }
}


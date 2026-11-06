package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.missions.AcceptMissionReq;
   import protocol.cr.missions.CollectMissionRewardReq;
   import protocol.cr.missions.GetActiveMissionsReq;
   import protocol.cr.missions.GetCompletedMissionsReq;
   
   public class MissionExtension extends BaseFscExtension
   {
      
      public function MissionExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getActiveMissions(param1:Function) : void
      {
         _connection.send(new GetActiveMissionsReq(),param1);
      }
      
      public function getCompletedMissions(param1:Function) : void
      {
         _connection.send(new GetCompletedMissionsReq(),param1);
      }
      
      public function acceptMission(param1:String, param2:Function) : void
      {
         _connection.send(new AcceptMissionReq(param1),param2);
      }
      
      public function collectReward(param1:String, param2:Function) : void
      {
         _connection.send(new CollectMissionRewardReq(param1),param2);
      }
   }
}


package com.ax3.jss.ext.impl
{
   import com.ax3.geom.GraphPoint;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import flash.geom.Point;
   import protocol.api.locations.buyAccess.RequestLocationBuyAccess;
   import protocol.api.locations.collectItem.RequestLocationCollectItem;
   import protocol.api.locations.enterPrivateHouse.RequestLocationsEnterPrivateHouse;
   import protocol.api.locations.enter_club_area.RequestLocationsEnterClubArea;
   import protocol.api.miniGameBob.collect.RequestMiniGameBobCollect;
   import protocol.api.npc.talk.RequestNpcTalk;
   import protocol.api.npc.talkStop.RequestNpcTalkStop;
   import protocol.cr.CollectShellReq;
   import protocol.cr.DailyQuestFishboneCollect;
   import protocol.cr.EnterLocation;
   import protocol.cr.EnterSublocationReq;
   import protocol.cr.FishingRsltReq;
   import protocol.cr.GetDataReq;
   import protocol.cr.GetIglooListReq;
   import protocol.cr.GetWorldMapDataReq;
   import protocol.cr.LeaveLocationReq;
   import protocol.cr.LeaveSublocationReq;
   import protocol.cr.MoveBoatToReq;
   import protocol.cr.MvUsrToRq;
   import protocol.cr.dayState.GetTimeOfDayReq;
   
   public class LocationFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function LocationFscExtension()
      {
         super();
      }
      
      public function enterToLocation(param1:int, param2:int, param3:int, param4:Function = null) : void
      {
         var _loc5_:EnterLocation = new EnterLocation(param1,param2);
         _loc5_.lastVirtualLocationId = param3;
         _connection.send(_loc5_,param4);
      }
      
      public function enterToSublocation(param1:int, param2:Function = null) : void
      {
         var _loc3_:EnterSublocationReq = new EnterSublocationReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function enterClubArea(param1:Function) : void
      {
         _connection.send(new RequestLocationsEnterClubArea(),param1);
      }
      
      public function enterPrivateHouse(param1:String, param2:Function = null) : void
      {
         var _loc3_:RequestLocationsEnterPrivateHouse = new RequestLocationsEnterPrivateHouse(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function leaveLocation(param1:Function) : void
      {
         var _loc2_:LeaveLocationReq = new LeaveLocationReq();
         _connection.send(_loc2_,param1);
      }
      
      public function leaveSublocation(param1:Boolean, param2:Function) : void
      {
         var _loc3_:LeaveSublocationReq = new LeaveSublocationReq();
         _loc3_.isTournamentLogin = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function moveTo(param1:int, param2:int, param3:int, param4:Number, param5:Number, param6:Number = -1) : void
      {
         var _loc7_:MvUsrToRq = new MvUsrToRq(param1,param2,param3,param4,param5,param6);
         _connection.send(_loc7_,null);
      }
      
      public function moveBoatTo(param1:Number, param2:Number, param3:Number = -1) : void
      {
         var _loc4_:MoveBoatToReq = new MoveBoatToReq(param1,param2,param3);
         _connection.send(_loc4_,null);
      }
      
      public function isCatched(param1:Boolean, param2:String, param3:String) : void
      {
         var _loc4_:FishingRsltReq = new FishingRsltReq(param1);
         _loc4_.tournament_id = param2;
         _loc4_.protect_key = param3;
         _connection.send(_loc4_,null);
      }
      
      public function talkWithNpc(param1:String, param2:GraphPoint, param3:int = 0, param4:String = "no", param5:Function = null) : void
      {
         var _loc6_:RequestNpcTalk = new RequestNpcTalk();
         _loc6_.name = param1;
         _loc6_.step = param3;
         _loc6_.answer = param4;
         _loc6_.x = param2.x;
         _loc6_.y = param2.y;
         _connection.send(_loc6_,param5);
      }
      
      public function talkWithNpcStop(param1:String, param2:Function = null) : void
      {
         var _loc3_:RequestNpcTalkStop = new RequestNpcTalkStop();
         _loc3_.name = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function collectShellAt(param1:int, param2:int) : void
      {
         _connection.send(new CollectShellReq(param1,param2),null);
      }
      
      public function collectFishCoinAt(param1:GraphPoint) : void
      {
         _connection.send(new RequestMiniGameBobCollect(param1),null);
      }
      
      public function collectFishboneAt(param1:GraphPoint, param2:int) : void
      {
         _connection.send(new DailyQuestFishboneCollect(param1,param2),null);
      }
      
      public function collectItem(param1:int, param2:int, param3:Point = null) : void
      {
         var _loc4_:RequestLocationCollectItem = new RequestLocationCollectItem();
         param3 = param3 == null ? new Point() : param3;
         _loc4_.type = param1;
         _loc4_.id = param2;
         _loc4_.x = param3.x;
         _loc4_.y = param3.y;
         _connection.send(_loc4_,null);
      }
      
      public function buyAccess(param1:int, param2:Function = null) : void
      {
         var _loc3_:RequestLocationBuyAccess = new RequestLocationBuyAccess();
         _loc3_.locationId = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function getSibiriTopUsers(param1:Function = null) : void
      {
         _connection.send(new GetIglooListReq(),param1);
      }
      
      public function getCurrentTime(param1:String, param2:Function) : void
      {
         var _loc3_:GetDataReq = new GetDataReq();
         _loc3_.data["getTimeForTimeZone"] = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function getWorldMapStatus(param1:Function) : void
      {
         var _loc2_:GetWorldMapDataReq = new GetWorldMapDataReq();
         _connection.send(_loc2_,param1);
      }
      
      public function getTimeOfDay(param1:Function) : void
      {
         var _loc2_:GetTimeOfDayReq = new GetTimeOfDayReq();
         _connection.send(_loc2_,param1);
      }
   }
}


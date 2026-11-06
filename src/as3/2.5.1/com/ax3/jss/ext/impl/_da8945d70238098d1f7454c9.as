package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
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
   
   public class _da8945d70238098d1f7454c9 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _da8945d70238098d1f7454c9()
      {
         super();
      }
      
      public function enterToLocation(param1:int, param2:int, param3:int, param4:Function = null) : void
      {
         var _loc5_:EnterLocation = new EnterLocation(param1,param2);
         _loc5_.lastVirtualLocationId = param3;
         _connection.send(_loc5_,param4);
      }
      
      public function _8baab790e59e91e8d64bc4d2(param1:int, param2:Function = null) : void
      {
         var _loc3_:EnterSublocationReq = new EnterSublocationReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _df816f93264e69cddcda0540(param1:Function) : void
      {
         _connection.send(new RequestLocationsEnterClubArea(),param1);
      }
      
      public function _0bcd23177a136eba1c7dbe4f(param1:String, param2:Function = null) : void
      {
         var _loc3_:RequestLocationsEnterPrivateHouse = new RequestLocationsEnterPrivateHouse(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function leaveLocation(param1:Function) : void
      {
         var _loc2_:LeaveLocationReq = new LeaveLocationReq();
         _connection.send(_loc2_,param1);
      }
      
      public function _8876436071a5742647af8899(param1:Boolean, param2:Function) : void
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
      
      public function _185c93e4d739a7d877299b25(param1:Number, param2:Number, param3:Number = -1) : void
      {
         var _loc4_:MoveBoatToReq = new MoveBoatToReq(param1,param2,param3);
         _connection.send(_loc4_,null);
      }
      
      public function _26c692ee41e73769a6113192(param1:Boolean, param2:String, param3:String) : void
      {
         var _loc4_:FishingRsltReq = new FishingRsltReq(param1);
         _loc4_.tournament_id = param2;
         _loc4_.protect_key = param3;
         _connection.send(_loc4_,null);
      }
      
      public function _abd393c870e6d7f9e4acc6dd(param1:String, param2:_a5c3dbdfbeb709a5bf92d27c, param3:int = 0, param4:String = "no", param5:Function = null) : void
      {
         var _loc6_:RequestNpcTalk = new RequestNpcTalk();
         _loc6_.name = param1;
         _loc6_.step = param3;
         _loc6_.answer = param4;
         _loc6_.x = param2.x;
         _loc6_.y = param2.y;
         _connection.send(_loc6_,param5);
      }
      
      public function _e6ed5ca811912fa8200ba0f8(param1:String, param2:Function = null) : void
      {
         var _loc3_:RequestNpcTalkStop = new RequestNpcTalkStop();
         _loc3_.name = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function _7753d28b513efa07432294ed(param1:int, param2:int) : void
      {
         _connection.send(new CollectShellReq(param1,param2),null);
      }
      
      public function _d7d961e1d4a5147011f55ea8(param1:_a5c3dbdfbeb709a5bf92d27c) : void
      {
         _connection.send(new RequestMiniGameBobCollect(param1),null);
      }
      
      public function _22fe78e089646fa26d02d454(param1:_a5c3dbdfbeb709a5bf92d27c, param2:int) : void
      {
         _connection.send(new DailyQuestFishboneCollect(param1,param2),null);
      }
      
      public function _c56c77ab235d896dae852856(param1:int, param2:int, param3:Point = null) : void
      {
         var _loc4_:RequestLocationCollectItem = new RequestLocationCollectItem();
         param3 = param3 == null ? new Point() : param3;
         _loc4_.type = param1;
         _loc4_.id = param2;
         _loc4_.x = param3.x;
         _loc4_.y = param3.y;
         _connection.send(_loc4_,null);
      }
      
      public function _683ea47aff4c6dd25d45c8e2(param1:int, param2:Function = null) : void
      {
         var _loc3_:RequestLocationBuyAccess = new RequestLocationBuyAccess();
         _loc3_.locationId = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function _297aa7138eb1e83a218418bf(param1:Function = null) : void
      {
         _connection.send(new GetIglooListReq(),param1);
      }
      
      public function _1216f7fd628901500cc4236e(param1:String, param2:Function) : void
      {
         var _loc3_:GetDataReq = new GetDataReq();
         _loc3_.data[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掜损掸揍挷揜挔揵据捎捙挒排接挚掌捾挣挝捵掌控振掄揀揩揷换捙掦掱掊挗捻捊揅揯捹捶掅掱捅挮推","掛捨捡捹揝挟按掃掲揬挩挹掝掷揍挪")] = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function _a5e396b6f65ca2cc7b6b3cec(param1:Function) : void
      {
         var _loc2_:GetWorldMapDataReq = new GetWorldMapDataReq();
         _connection.send(_loc2_,param1);
      }
      
      public function _5899c0b5ac6e593c9ce1ae96(param1:Function) : void
      {
         var _loc2_:GetTimeOfDayReq = new GetTimeOfDayReq();
         _connection.send(_loc2_,param1);
      }
   }
}


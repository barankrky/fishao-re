package com.ax3.jss.ext.impl
{
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import protocol.cr.CancelFishingReq;
   import protocol.cr.FishingRsltReq;
   import protocol.cr.StartFishingReq;
   
   public class _1501c4ebe74cc49f0245f36e extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _1501c4ebe74cc49f0245f36e()
      {
         super();
      }
      
      public function _bb388056cd31eb71678cb6d4(param1:int, param2:int, param3:Number, param4:Number, param5:Function) : void
      {
         var _loc6_:StartFishingReq = new StartFishingReq(param1,param2,param3,param4);
         _connection.send(_loc6_,param5);
      }
      
      public function _1db0863d41287aad98511f3e(param1:Boolean, param2:String) : void
      {
         var _loc3_:FishingRsltReq = new FishingRsltReq(param1);
         _loc3_.tournament_id = param2;
         _connection.send(_loc3_,null);
      }
      
      public function _366c3e3bcf5cdf552265c88f() : void
      {
         var _loc1_:CancelFishingReq = new CancelFishingReq();
         _connection.send(_loc1_,null);
      }
   }
}


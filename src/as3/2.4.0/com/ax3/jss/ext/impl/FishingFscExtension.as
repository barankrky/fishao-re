package com.ax3.jss.ext.impl
{
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import protocol.cr.CancelFishingReq;
   import protocol.cr.FishingRsltReq;
   import protocol.cr.StartFishingReq;
   
   public class FishingFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function FishingFscExtension()
      {
         super();
      }
      
      public function startFish(param1:int, param2:int, param3:Number, param4:Number, param5:Function) : void
      {
         var _loc6_:StartFishingReq = new StartFishingReq(param1,param2,param3,param4);
         _connection.send(_loc6_,param5);
      }
      
      public function sendIsFishCaught(param1:Boolean, param2:String) : void
      {
         var _loc3_:FishingRsltReq = new FishingRsltReq(param1);
         _loc3_.tournament_id = param2;
         _connection.send(_loc3_,null);
      }
      
      public function sendCancelFishing() : void
      {
         var _loc1_:CancelFishingReq = new CancelFishingReq();
         _connection.send(_loc1_,null);
      }
   }
}


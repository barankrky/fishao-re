package com.ax3.jss.ext
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import com.ax3.utils.math.limit;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   import protocol.cr.PmConfirmReq;
   import protocol.cr.PmDeleteReq;
   import protocol.cr.PmHistoryReq;
   import protocol.cr.chat.PrivateMsgReq;
   
   public class _77bcce15c2905bc50fc9fb7e extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _77bcce15c2905bc50fc9fb7e()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _9d2c868c8cc4b509a2b293a8(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:PrivateMsgReq = null;
         if(param1 != null && param3 != null && param3.length > (-93989680 ^ 0x17CA54DD ^ -1278214036 ^ 0x5E7F8061))
         {
            _loc5_ = new PrivateMsgReq(param1,param2,param3);
            _connection.send(_loc5_,param4);
         }
      }
      
      public function _98e35842f4afa4fe049c366a(param1:int = 0, param2:Function = null, param3:String = null) : void
      {
         this._7d3ff55bdcf83e6ea9f0c4e5(param1,true,param2,param3);
      }
      
      public function _28612b9edf05fcfe3a6a8668(param1:int = 0, param2:Function = null, param3:String = null) : void
      {
         this._7d3ff55bdcf83e6ea9f0c4e5(param1,false,param2,param3);
      }
      
      public function _7d3ff55bdcf83e6ea9f0c4e5(param1:int = 0, param2:Boolean = false, param3:Function = null, param4:String = null) : void
      {
         param1 = limit(param1,-1506732569 ^ -116840416 ^ 0x3426AAE4 ^ 0x6B1E9722,int.MAX_VALUE);
         var _loc5_:PmHistoryReq = new PmHistoryReq();
         _loc5_.pageId = param1 - 1;
         _loc5_.recipient = param4;
         _loc5_.isInbox = param2;
         _connection.send(_loc5_,param3);
      }
      
      public function _bb5368eac3431cb98abf6022(param1:Array, param2:Boolean = true, param3:Function = null) : void
      {
         var _loc4_:PmDeleteReq = new PmDeleteReq();
         _loc4_.pmIdsJson = JSON.stringify(param1);
         _loc4_.inbox = param2;
         _connection.send(_loc4_,param3);
      }
      
      public function _1438a6090ec0a17e3abd0046(param1:int = 0, param2:Function = null) : void
      {
         var _loc3_:GetDataReq = new GetDataReq();
         _loc3_.data = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刅勼勠勣刞剹劷勛勂劆劼刚剻剞刿刑刟剈剩剭","剒則勳勝勐劊刖创剧剁剄劮刉剅前刂")):param1};
         _connection.send(_loc3_,param2);
      }
      
      public function _2be648127b974d9498c131ea(param1:int = 0, param2:Function = null) : void
      {
         var _loc3_:PmConfirmReq = new PmConfirmReq();
         _loc3_.msgId = param1;
         _connection.send(_loc3_,param2);
      }
   }
}


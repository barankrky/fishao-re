package com.ax3.jss.ext
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.model.IFscModel;
   import com.ax3.utils.math.limit;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   import protocol.cr.PmConfirmReq;
   import protocol.cr.PmDeleteReq;
   import protocol.cr.PmHistoryReq;
   import protocol.cr.chat.PrivateMsgReq;
   
   public class PrivateMsgFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function PrivateMsgFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function sendPrivateMessage(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:PrivateMsgReq = null;
         if(param1 != null && param3 != null && param3.length > 0)
         {
            _loc5_ = new PrivateMsgReq(param1,param2,param3);
            _connection.send(_loc5_,param4);
         }
      }
      
      public function getInboxMessages(param1:int = 0, param2:Function = null, param3:String = null) : void
      {
         this.getMailboxMessages(param1,true,param2,param3);
      }
      
      public function getOutboxMessages(param1:int = 0, param2:Function = null, param3:String = null) : void
      {
         this.getMailboxMessages(param1,false,param2,param3);
      }
      
      public function getMailboxMessages(param1:int = 0, param2:Boolean = false, param3:Function = null, param4:String = null) : void
      {
         param1 = limit(param1,1,int.MAX_VALUE);
         var _loc5_:PmHistoryReq = new PmHistoryReq();
         _loc5_.pageId = param1 - 1;
         _loc5_.recipient = param4;
         _loc5_.isInbox = param2;
         _connection.send(_loc5_,param3);
      }
      
      public function deleteMessages(param1:Array, param2:Boolean = true, param3:Function = null) : void
      {
         var _loc4_:PmDeleteReq = new PmDeleteReq();
         _loc4_.pmIdsJson = JSON.stringify(param1);
         _loc4_.inbox = param2;
         _connection.send(_loc4_,param3);
      }
      
      public function getMessage(param1:int = 0, param2:Function = null) : void
      {
         var _loc3_:GetDataReq = new GetDataReq();
         _loc3_.data = {"newMsg":param1};
         _connection.send(_loc3_,param2);
      }
      
      public function setAsReadMessage(param1:int = 0, param2:Function = null) : void
      {
         var _loc3_:PmConfirmReq = new PmConfirmReq();
         _loc3_.msgId = param1;
         _connection.send(_loc3_,param2);
      }
   }
}


package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import com.ax3.utils.empty;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   
   public class LogsFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function LogsFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getTradeLogs(param1:int, param2:Function, param3:String) : void
      {
         this.sendRequest("logsTrade",param1,param2,param3);
      }
      
      public function getChatLogs(param1:int, param2:Function, param3:String) : void
      {
         this.sendRequest("logsChat",param1,param2,param3);
      }
      
      public function getFishcoinsLogs(param1:int, param2:Function, param3:String) : void
      {
         this.sendRequest("logsFishcoins",param1,param2,param3);
      }
      
      public function getFishbuckLogs(param1:int, param2:Function, param3:String) : void
      {
         this.sendRequest("logsFishbuck",param1,param2,param3);
      }
      
      private function sendRequest(param1:String, param2:int, param3:Function, param4:String) : void
      {
         var _loc5_:GetDataReq = new GetDataReq();
         _loc5_.data[param1] = 1;
         _loc5_.data["pageId"] = Math.max(0,param2 - 1);
         if(!empty(param4))
         {
            _loc5_.data["login"] = param4;
         }
         _connection.send(_loc5_,param3);
      }
      
      public function getUserModLogs(param1:int, param2:Function, param3:String) : void
      {
         this.sendRequest("logsMod",param1,param2,param3);
      }
   }
}


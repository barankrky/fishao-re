package com.ax3.jss.requests.server
{
   public class ServerResp
   {
      
      public var reqId:int;
      
      public var maintenanceTime:int;
      
      public var maintenanceIn:int;
      
      public var needLog:Boolean;
      
      public function ServerResp()
      {
         super();
         this.needLog = true;
      }
   }
}


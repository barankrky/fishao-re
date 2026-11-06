package com.ax3.jss.requests.client
{
   public class ClientRequest implements IClientRequest
   {
      
      public var reqId:int = -1;
      
      public function ClientRequest()
      {
         super();
      }
      
      public function setReqId(param1:int) : void
      {
         this.reqId = param1;
      }
   }
}


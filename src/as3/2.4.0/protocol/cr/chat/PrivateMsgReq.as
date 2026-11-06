package protocol.cr.chat
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class PrivateMsgReq extends ClientRequest
   {
      
      public var login:String;
      
      public var subject:String;
      
      public var body:String;
      
      public function PrivateMsgReq(param1:String, param2:String, param3:String)
      {
         super();
         this.login = param1;
         this.subject = param2;
         this.body = param3;
      }
   }
}


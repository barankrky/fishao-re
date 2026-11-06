package protocol.cr.chat
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class ChatReq extends ClientRequest
   {
      
      public var type:int;
      
      public var targetLogin:String;
      
      public var msg:String;
      
      public function ChatReq(param1:int, param2:String, param3:String = null)
      {
         super();
         this.type = param1;
         this.msg = param2;
         this.targetLogin = param3;
      }
   }
}


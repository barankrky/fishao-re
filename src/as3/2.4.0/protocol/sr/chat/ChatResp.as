package protocol.sr.chat
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ChatResp extends ServerResp
   {
      
      public var type:int;
      
      public var senderLogin:String;
      
      public var msg:String;
      
      public function ChatResp()
      {
         super();
      }
   }
}


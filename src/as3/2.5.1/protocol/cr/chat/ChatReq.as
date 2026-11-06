package protocol.cr.chat
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class ChatReq extends _ccb739c00378004f39879793
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


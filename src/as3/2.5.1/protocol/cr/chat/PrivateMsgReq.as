package protocol.cr.chat
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class PrivateMsgReq extends _ccb739c00378004f39879793
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


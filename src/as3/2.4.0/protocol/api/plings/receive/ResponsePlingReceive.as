package protocol.api.plings.receive
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ResponsePlingReceive extends ServerResp
   {
      
      public var id:int;
      
      public var isMustBeRead:Boolean;
      
      public var type:int;
      
      public var params:String;
      
      public var timestampSec:int;
      
      public function ResponsePlingReceive()
      {
         super();
      }
   }
}


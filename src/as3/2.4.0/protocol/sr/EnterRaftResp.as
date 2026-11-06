package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class EnterRaftResp extends ServerResp
   {
      
      public var login:String;
      
      public var x:int;
      
      public var y:int;
      
      public var timeToStartSec:int;
      
      public var fullTimeSec:int;
      
      public function EnterRaftResp()
      {
         super();
      }
   }
}


package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class LeaveRaftResp extends ServerResp
   {
      
      public var list:String;
      
      public function LeaveRaftResp()
      {
         super();
      }
   }
}


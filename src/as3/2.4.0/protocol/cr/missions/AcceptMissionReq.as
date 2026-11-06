package protocol.cr.missions
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class AcceptMissionReq extends ClientRequest
   {
      
      public var missionID:String;
      
      public function AcceptMissionReq(param1:String)
      {
         super();
         this.missionID = param1;
      }
      
      public function ActionWithReq() : void
      {
      }
   }
}


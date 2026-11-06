package protocol.cr.missions
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class AcceptMissionReq extends _ccb739c00378004f39879793
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


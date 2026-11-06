package protocol.sr.missions
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class CompletedMissionsResp extends ServerResp
   {
      
      public var list:String;
      
      public var allMissions:int;
      
      public var completedMissions:int;
      
      public function CompletedMissionsResp()
      {
         super();
      }
   }
}


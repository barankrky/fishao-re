package protocol.sr.profile
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ProfileInventoryResp extends ServerResp
   {
      
      public var inventory:String;
      
      public function ProfileInventoryResp()
      {
         super();
      }
   }
}


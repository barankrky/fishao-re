package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ChangeBoatStateResp extends ServerResp
   {
      
      public var boatId:int;
      
      public var isSteering:Boolean;
      
      public function ChangeBoatStateResp()
      {
         super();
      }
   }
}


package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ActivationErrorResp extends ServerResp
   {
      
      public var errDesc:String;
      
      public function ActivationErrorResp()
      {
         super();
      }
   }
}


package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class EnterLocationErrorResp extends ServerResp
   {
      
      public var errDesc:int;
      
      public function EnterLocationErrorResp()
      {
         super();
      }
   }
}


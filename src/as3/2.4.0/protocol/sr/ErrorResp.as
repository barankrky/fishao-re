package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ErrorResp extends ServerResp
   {
      
      public var descr:String;
      
      public var params:String;
      
      public function ErrorResp()
      {
         super();
      }
   }
}


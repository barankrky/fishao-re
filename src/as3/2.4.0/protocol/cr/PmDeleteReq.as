package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class PmDeleteReq extends ClientRequest
   {
      
      public var pmIdsJson:String;
      
      public var inbox:Boolean;
      
      public function PmDeleteReq()
      {
         super();
      }
   }
}


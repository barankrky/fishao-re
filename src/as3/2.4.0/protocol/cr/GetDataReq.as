package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetDataReq extends ClientRequest
   {
      
      public var data:Object;
      
      public function GetDataReq()
      {
         super();
         this.data = new Object();
      }
   }
}


package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class ShowPlingReq extends ClientRequest
   {
      
      public var plingType:int;
      
      public function ShowPlingReq(param1:int)
      {
         super();
         this.plingType = param1;
      }
   }
}


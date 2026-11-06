package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class EnterSublocationReq extends ClientRequest
   {
      
      public var id:int;
      
      public function EnterSublocationReq(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}


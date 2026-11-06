package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class UpdateReq extends ClientRequest
   {
      
      public var sid:String;
      
      public var data:Object;
      
      public function UpdateReq()
      {
         super();
         this.data = new Object();
      }
   }
}


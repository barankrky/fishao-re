package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class CollectShellReq extends ClientRequest
   {
      
      public var x:int;
      
      public var y:int;
      
      public function CollectShellReq(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
   }
}


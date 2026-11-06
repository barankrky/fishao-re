package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class SellFishReq extends ClientRequest
   {
      
      public var fishId:int;
      
      public var fishType:int;
      
      public var amount:int;
      
      public function SellFishReq()
      {
         super();
      }
   }
}


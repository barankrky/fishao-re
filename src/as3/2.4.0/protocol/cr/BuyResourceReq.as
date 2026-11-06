package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class BuyResourceReq extends ClientRequest
   {
      
      public var type:int;
      
      public var id:int;
      
      public var currencyId:int;
      
      public var rodColor:String;
      
      public function BuyResourceReq(param1:int, param2:int, param3:int, param4:String = null)
      {
         super();
         this.type = param1;
         this.id = param2;
         this.currencyId = param3;
         this.rodColor = param4;
      }
   }
}


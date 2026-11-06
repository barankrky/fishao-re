package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class FishingRsltReq extends ClientRequest
   {
      
      public var isCaught:Boolean;
      
      public var tournament_id:String;
      
      public var protect_key:String;
      
      public function FishingRsltReq(param1:Boolean)
      {
         super();
         this.isCaught = param1;
      }
   }
}


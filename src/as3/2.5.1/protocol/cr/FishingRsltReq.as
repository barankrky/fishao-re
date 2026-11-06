package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class FishingRsltReq extends _ccb739c00378004f39879793
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


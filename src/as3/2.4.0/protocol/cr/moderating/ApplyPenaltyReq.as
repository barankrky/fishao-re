package protocol.cr.moderating
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class ApplyPenaltyReq extends ClientRequest
   {
      
      public var punishebleLogin:String;
      
      public var banType:String;
      
      public var banPeriod:String;
      
      public var reportKey:String;
      
      public var descr:String;
      
      public var penaltyKey:String;
      
      public function ApplyPenaltyReq()
      {
         super();
      }
   }
}


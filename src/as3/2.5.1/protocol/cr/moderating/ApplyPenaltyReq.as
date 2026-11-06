package protocol.cr.moderating
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class ApplyPenaltyReq extends _ccb739c00378004f39879793
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


package protocol.cr.profile
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class ProfileReportReq extends ClientRequest
   {
      
      public var login:String;
      
      public var subject:String;
      
      public var text:String;
      
      public function ProfileReportReq(param1:String, param2:String, param3:String)
      {
         super();
         this.login = param1;
         this.subject = param2;
         this.text = param3;
      }
   }
}


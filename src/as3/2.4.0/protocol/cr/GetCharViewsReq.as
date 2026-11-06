package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetCharViewsReq extends ClientRequest
   {
      
      public var userLogins:Array;
      
      public function GetCharViewsReq(param1:Array)
      {
         super();
         this.userLogins = param1;
      }
   }
}


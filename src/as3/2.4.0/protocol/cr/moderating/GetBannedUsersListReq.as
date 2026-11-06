package protocol.cr.moderating
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetBannedUsersListReq extends ClientRequest
   {
      
      public var pageId:int;
      
      public var loginFilter:String;
      
      public function GetBannedUsersListReq()
      {
         super();
      }
   }
}


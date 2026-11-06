package protocol.sr.moderating
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class BannedUsersListResp extends ServerResp
   {
      
      public var pageId:int;
      
      public var maxPageId:int;
      
      public var list:String;
      
      public function BannedUsersListResp()
      {
         super();
      }
   }
}


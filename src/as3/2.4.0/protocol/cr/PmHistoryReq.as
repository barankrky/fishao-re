package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class PmHistoryReq extends ClientRequest
   {
      
      public var pageId:int;
      
      public var isInbox:Boolean;
      
      public var recipient:String;
      
      public function PmHistoryReq()
      {
         super();
      }
   }
}


package protocol.sr.moderating
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ReportListResp extends ServerResp
   {
      
      public var list:String;
      
      public var pageId:int;
      
      public var maxPageId:int;
      
      public function ReportListResp()
      {
         super();
      }
   }
}


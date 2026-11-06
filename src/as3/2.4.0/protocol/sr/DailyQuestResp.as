package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class DailyQuestResp extends ServerResp
   {
      
      public var isComplete:int;
      
      public var step:int;
      
      public var currentQuestLeftSec:int;
      
      public var requirements:String;
      
      public var conditions:String;
      
      public var prizeIsCollect:int;
      
      public function DailyQuestResp()
      {
         super();
      }
   }
}


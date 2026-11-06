package protocol.cr
{
   import com.ax3.geom.GraphPoint;
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class DailyQuestFishboneCollect extends ClientRequest
   {
      
      public var x:int;
      
      public var y:int;
      
      public var locationID:int;
      
      public function DailyQuestFishboneCollect(param1:GraphPoint, param2:int)
      {
         super();
         this.x = param1.x;
         this.y = param1.y;
         this.locationID = param2;
      }
   }
}


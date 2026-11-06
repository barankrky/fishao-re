package protocol.api.miniGameBob.collect
{
   import com.ax3.geom.GraphPoint;
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestMiniGameBobCollect extends ClientRequest
   {
      
      public var x:int;
      
      public var y:int;
      
      public function RequestMiniGameBobCollect(param1:GraphPoint)
      {
         super();
         this.x = param1.x;
         this.y = param1.y;
      }
   }
}


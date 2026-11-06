package protocol.api.miniGameBob.start
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class ResponseMiniGameBobStart extends _5e1bab759fcaea6d1f84faa7
   {
      
      public var timeLeftSec:int;
      
      public var positions:String;
      
      public function ResponseMiniGameBobStart()
      {
         super();
      }
      
      public function getPositions() : Object
      {
         return JSON.parse(this.positions);
      }
   }
}


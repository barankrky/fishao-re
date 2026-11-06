package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class MoveBoatToReq extends _ccb739c00378004f39879793
   {
      
      public var x:int;
      
      public var y:int;
      
      public var rotation:int;
      
      public function MoveBoatToReq(param1:int, param2:int, param3:int)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.rotation = param3;
      }
   }
}


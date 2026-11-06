package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class StartFishingReq extends _ccb739c00378004f39879793
   {
      
      public var lakeId:int;
      
      public var blockId:int;
      
      public var x:int;
      
      public var y:int;
      
      public var isDebugMode:Boolean;
      
      public function StartFishingReq(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.lakeId = param1;
         this.blockId = param2;
         this.x = param3;
         this.y = param4;
      }
   }
}


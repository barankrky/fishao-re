package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class MvUsrToRq extends _ccb739c00378004f39879793
   {
      
      public var x:int;
      
      public var y:int;
      
      public var r:int;
      
      public var cx:int;
      
      public var cy:int;
      
      public var crs:int;
      
      public function MvUsrToRq(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1)
      {
         super();
         this.x = param4;
         this.y = param5;
         this.r = param6;
         this.cx = param1;
         this.cy = param2;
         this.crs = param3;
      }
   }
}


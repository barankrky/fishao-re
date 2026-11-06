package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class EnterWorld extends _ccb739c00378004f39879793
   {
      
      public var worldId:String;
      
      public var fromUrl:String;
      
      public var sid:String;
      
      public function EnterWorld(param1:String, param2:String, param3:String)
      {
         super();
         this.worldId = param1;
         this.fromUrl = param2;
         this.sid = param3;
      }
   }
}


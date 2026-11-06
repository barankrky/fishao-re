package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class EnterWorld extends ClientRequest
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


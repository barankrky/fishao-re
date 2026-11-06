package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class FishingResp extends ServerResp
   {
      
      public var fishId:int;
      
      public var fishLength:int;
      
      public var isShiny:Boolean;
      
      public var timestamp:int;
      
      public var data:String;
      
      public function FishingResp()
      {
         super();
      }
   }
}


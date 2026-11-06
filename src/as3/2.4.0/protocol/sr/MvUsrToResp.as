package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class MvUsrToResp extends ServerResp
   {
      
      public var login:String;
      
      public var x:int;
      
      public var y:int;
      
      public var r:int;
      
      public var cx:int;
      
      public var cy:int;
      
      public var cr:int;
      
      public function MvUsrToResp()
      {
         super();
         needLog = false;
      }
   }
}


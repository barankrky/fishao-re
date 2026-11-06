package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class ActivationRequest extends _ccb739c00378004f39879793
   {
      
      public var login:String;
      
      public var key:String;
      
      public function ActivationRequest(param1:String, param2:String)
      {
         super();
         this.login = param1;
         this.key = param2;
      }
   }
}


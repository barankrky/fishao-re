package protocol.cr.profile
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class GetProfileUserInfoReq extends _ccb739c00378004f39879793
   {
      
      public var login:String;
      
      public var tabId:String;
      
      public function GetProfileUserInfoReq(param1:String, param2:String)
      {
         super();
         this.login = param1;
         this.tabId = param2;
      }
   }
}


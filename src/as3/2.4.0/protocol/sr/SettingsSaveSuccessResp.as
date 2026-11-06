package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class SettingsSaveSuccessResp extends ServerResp
   {
      
      public var emailChanged:Boolean = false;
      
      public function SettingsSaveSuccessResp()
      {
         super();
      }
   }
}


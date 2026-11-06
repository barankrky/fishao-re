package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class UpdateSoundSettingsReq extends ClientRequest
   {
      
      public var backMusic:Number;
      
      public var soundEffects:Number;
      
      public function UpdateSoundSettingsReq(param1:Object)
      {
         var _loc2_:String = null;
         super();
         for(_loc2_ in param1)
         {
            this[_loc2_] = param1[_loc2_];
         }
      }
   }
}


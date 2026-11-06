package protocol.api.featuresTemporary.init
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseFeaturesTemporaryInit extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _featuresTemporary:Array;
      
      public function ResponseFeaturesTemporaryInit()
      {
         super();
      }
      
      public function get featuresTemporary() : Array
      {
         return this._featuresTemporary;
      }
      
      public function set features_temporary(param1:String) : void
      {
         this._featuresTemporary = decodeJson(param1) as Array;
      }
   }
}


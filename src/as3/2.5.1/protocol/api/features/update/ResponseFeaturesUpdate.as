package protocol.api.features.update
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseFeaturesUpdate extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _features:Array;
      
      public function ResponseFeaturesUpdate()
      {
         super();
      }
      
      public function get features() : Array
      {
         return this._features;
      }
      
      public function set featuresJson(param1:String) : void
      {
         this._features = decodeJson(param1) as Array;
      }
   }
}


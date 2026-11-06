package protocol.api.periodicFeatures.update
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ResponsePeriodicFeatureUpdate extends ServerResp
   {
      
      private var _type:String;
      
      private var _state:String;
      
      public function ResponsePeriodicFeatureUpdate()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
   }
}


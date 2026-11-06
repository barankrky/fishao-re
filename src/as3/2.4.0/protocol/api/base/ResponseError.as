package protocol.api.base
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseError extends ServerResp
   {
      
      private var _description:String;
      
      private var _data:Object;
      
      public function ResponseError()
      {
         super();
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get descriptionData() : Object
      {
         return this._data;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = decodeJson(param1);
      }
   }
}


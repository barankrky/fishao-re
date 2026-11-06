package protocol.api.base
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseWithData extends ServerResp
   {
      
      public var data:Object;
      
      public function ResponseWithData()
      {
         super();
         this.data = {};
      }
      
      public function hasDataProperty(param1:String) : Boolean
      {
         return this.data != null && this.data.hasOwnProperty(param1);
      }
      
      public function getJsonData(param1:String) : Object
      {
         var _loc2_:Object = null;
         if(this.data[param1] != null)
         {
            _loc2_ = decodeJson(this.data[param1]);
         }
         return _loc2_;
      }
      
      public function getArrayData(param1:String) : Array
      {
         var _loc2_:* = this.data[param1];
         if(_loc2_ is String)
         {
            _loc2_ = decodeJson(_loc2_);
         }
         return _loc2_;
      }
      
      public function getStringData(param1:String) : String
      {
         return this.data[param1];
      }
      
      public function getIntData(param1:String) : int
      {
         var _loc2_:* = this.data[param1];
         if(_loc2_ is String)
         {
            return parseInt(_loc2_);
         }
         if(_loc2_ is Number || _loc2_ is int)
         {
            return _loc2_;
         }
         return -1;
      }
   }
}


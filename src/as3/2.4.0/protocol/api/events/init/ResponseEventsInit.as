package protocol.api.events.init
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.events.data.EventInfo;
   
   public class ResponseEventsInit extends ServerResp
   {
      
      private var _events:Array;
      
      private var _coefficients:Dictionary;
      
      public function ResponseEventsInit()
      {
         super();
         this._events = [];
         this._coefficients = new Dictionary(true);
      }
      
      public function set data(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:EventInfo = null;
         var _loc4_:Array = decodeJson(param1) as Array;
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new EventInfo();
            _loc3_.deserialize(_loc2_);
            this._events.push(_loc3_);
         }
      }
      
      public function get events() : Array
      {
         return this._events;
      }
      
      public function set data_coefficients(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Array = decodeJson(param1) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"position");
            _loc4_ = Debug.assertProperty(_loc2_,"reward_percent");
            this._coefficients[_loc3_] = _loc4_;
         }
      }
   }
}


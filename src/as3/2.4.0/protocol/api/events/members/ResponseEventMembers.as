package protocol.api.events.members
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import protocol.api.events.data.EventMemberInfo;
   
   public class ResponseEventMembers extends ServerResp
   {
      
      private var _members:Array;
      
      private var _position:uint;
      
      private var _length:uint;
      
      public function ResponseEventMembers()
      {
         super();
         this._members = [];
      }
      
      public function get members() : Array
      {
         return this._members;
      }
      
      public function set data_members(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:EventMemberInfo = null;
         var _loc4_:Array = decodeJson(param1) as Array;
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new EventMemberInfo();
            _loc3_.deserialize(_loc2_);
            this._members.push(_loc3_);
         }
      }
      
      public function get position() : uint
      {
         return this._position;
      }
      
      public function set position(param1:uint) : void
      {
         this._position = param1;
      }
      
      public function get length() : uint
      {
         return this._length;
      }
      
      public function set length(param1:uint) : void
      {
         this._length = param1;
      }
   }
}


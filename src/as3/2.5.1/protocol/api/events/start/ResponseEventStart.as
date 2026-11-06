package protocol.api.events.start
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class ResponseEventStart extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _eventID:String;
      
      private var _timeLeft:uint;
      
      public function ResponseEventStart()
      {
         super();
      }
      
      public function get eventID() : String
      {
         return this._eventID;
      }
      
      public function get timeLeft() : uint
      {
         return this._timeLeft;
      }
      
      public function set event_id(param1:String) : void
      {
         this._eventID = param1;
      }
      
      public function set time_left(param1:uint) : void
      {
         this._timeLeft = param1;
      }
   }
}


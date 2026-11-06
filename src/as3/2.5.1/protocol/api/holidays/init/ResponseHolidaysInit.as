package protocol.api.holidays.init
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseHolidaysInit extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _holidays:Array;
      
      public function ResponseHolidaysInit()
      {
         super();
      }
      
      public function set data(param1:String) : void
      {
         this._holidays = decodeJson(param1) as Array;
      }
      
      public function get holidays() : Array
      {
         return this._holidays;
      }
   }
}


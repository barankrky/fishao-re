package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class WeatherChangedResp extends ServerResp
   {
      
      public var newWeather:int;
      
      public function WeatherChangedResp()
      {
         super();
      }
   }
}


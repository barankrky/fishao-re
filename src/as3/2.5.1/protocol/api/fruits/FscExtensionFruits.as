package protocol.api.fruits
{
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import protocol.api.fruits.crush.RequestFruitsCrush;
   
   public class FscExtensionFruits extends _d23481b750999df4f0e00416
   {
      
      public function FscExtensionFruits()
      {
         super();
      }
      
      public function crushFruits(param1:Array, param2:Function = null) : void
      {
         var _loc3_:RequestFruitsCrush = new RequestFruitsCrush();
         _loc3_.items = JSON.stringify(param1);
         _connection.send(_loc3_,param2);
      }
   }
}


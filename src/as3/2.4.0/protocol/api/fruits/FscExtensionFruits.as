package protocol.api.fruits
{
   import com.ax3.jss.ext.BaseFscExtension;
   import protocol.api.fruits.crush.RequestFruitsCrush;
   
   public class FscExtensionFruits extends BaseFscExtension
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


package protocol.api.sales
{
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import protocol.api.sales.init.RequestSalesInit;
   
   public class FscExtensionSales extends _d23481b750999df4f0e00416
   {
      
      public function FscExtensionSales()
      {
         super();
      }
      
      public function getDataInit(param1:Function = null) : void
      {
         var _loc2_:RequestSalesInit = new RequestSalesInit();
         _connection.send(_loc2_,param1);
      }
   }
}


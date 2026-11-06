package protocol.api.sales
{
   import com.ax3.jss.ext.BaseFscExtension;
   import protocol.api.sales.init.RequestSalesInit;
   
   public class FscExtensionSales extends BaseFscExtension
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


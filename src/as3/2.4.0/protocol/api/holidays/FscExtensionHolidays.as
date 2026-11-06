package protocol.api.holidays
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.holidays.init.RequestHolidaysInit;
   
   public class FscExtensionHolidays extends FscExtensionBase
   {
      
      public function FscExtensionHolidays()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestHolidaysInit(),param1);
      }
   }
}


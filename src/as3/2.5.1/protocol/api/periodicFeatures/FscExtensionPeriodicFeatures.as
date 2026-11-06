package protocol.api.periodicFeatures
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.periodicFeatures.init.RequestPeriodicFeaturesInit;
   
   public class FscExtensionPeriodicFeatures extends FscExtensionBase
   {
      
      public function FscExtensionPeriodicFeatures()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestPeriodicFeaturesInit(),param1);
      }
   }
}


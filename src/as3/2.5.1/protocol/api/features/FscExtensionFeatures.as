package protocol.api.features
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.features.update.RequestFeaturesUpdate;
   
   public class FscExtensionFeatures extends FscExtensionBase
   {
      
      public function FscExtensionFeatures()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestFeaturesUpdate(),param1);
      }
   }
}


package protocol.api.featuresTemporary
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.featuresTemporary.init.RequestFeaturesTemporaryInit;
   
   public class FscExtensionFeaturesTemporary extends FscExtensionBase
   {
      
      public function FscExtensionFeaturesTemporary()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestFeaturesTemporaryInit(),param1);
      }
   }
}


package protocol.api.collections
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.collections.init.RequestCollectionsInit;
   
   public class FscExtensionCollections extends FscExtensionBase
   {
      
      public function FscExtensionCollections()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestCollectionsInit(),param1);
      }
   }
}


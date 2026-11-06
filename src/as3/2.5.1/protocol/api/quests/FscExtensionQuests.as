package protocol.api.quests
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.quests.init.RequestQuestsInit;
   
   public class FscExtensionQuests extends FscExtensionBase
   {
      
      public function FscExtensionQuests()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestQuestsInit(),param1);
      }
   }
}


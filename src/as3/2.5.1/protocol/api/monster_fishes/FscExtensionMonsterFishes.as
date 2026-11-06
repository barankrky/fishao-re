package protocol.api.monster_fishes
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.monster_fishes.init.RequestMonsterFishesInit;
   
   public class FscExtensionMonsterFishes extends FscExtensionBase
   {
      
      public function FscExtensionMonsterFishes()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestMonsterFishesInit(),param1);
      }
   }
}


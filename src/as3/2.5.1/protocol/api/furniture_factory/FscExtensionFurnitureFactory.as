package protocol.api.furniture_factory
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.furniture_factory.get_info.RequestFurnitureFactoryGetInfo;
   import protocol.api.furniture_factory.get_reward.RequestFurnitureFactoryGetReward;
   import protocol.api.furniture_factory.skip_time.RequestFurnitureFactorySkipTime;
   
   public class FscExtensionFurnitureFactory extends FscExtensionBase
   {
      
      public function FscExtensionFurnitureFactory()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         this.getInfo(param1);
      }
      
      public function getInfo(param1:Function = null) : void
      {
         _connection.send(new RequestFurnitureFactoryGetInfo(),param1);
      }
      
      public function skipTime(param1:Function = null) : void
      {
         _connection.send(new RequestFurnitureFactorySkipTime(),param1);
      }
      
      public function getReward(param1:Function = null) : void
      {
         _connection.send(new RequestFurnitureFactoryGetReward(),param1);
      }
   }
}


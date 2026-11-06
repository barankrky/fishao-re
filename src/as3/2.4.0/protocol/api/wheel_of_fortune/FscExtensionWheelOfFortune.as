package protocol.api.wheel_of_fortune
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.wheel_of_fortune.get_info.RequestWheelOfFortuneGetInfo;
   import protocol.api.wheel_of_fortune.init.RequestWheelOfFortuneInit;
   import protocol.api.wheel_of_fortune.spin.RequestWheelOfFortuneSpin;
   
   public class FscExtensionWheelOfFortune extends FscExtensionBase
   {
      
      public function FscExtensionWheelOfFortune()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestWheelOfFortuneInit(),param1);
      }
      
      public function getInfo(param1:Function = null) : void
      {
         _connection.send(new RequestWheelOfFortuneGetInfo(),param1);
      }
      
      public function spin(param1:Boolean, param2:Function = null) : void
      {
         var _loc3_:RequestWheelOfFortuneSpin = new RequestWheelOfFortuneSpin();
         _loc3_.is_free_spin = param1;
         _connection.send(_loc3_,param2);
      }
   }
}


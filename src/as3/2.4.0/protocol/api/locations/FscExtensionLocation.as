package protocol.api.locations
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.locations.change_position.RequestLocationChangePosition;
   
   public class FscExtensionLocation extends FscExtensionBase
   {
      
      public function FscExtensionLocation()
      {
         super();
      }
      
      public function changePosition(param1:String, param2:Function = null) : void
      {
         var _loc3_:RequestLocationChangePosition = new RequestLocationChangePosition();
         _loc3_.position_new = param1;
         _connection.send(_loc3_,param2);
      }
   }
}


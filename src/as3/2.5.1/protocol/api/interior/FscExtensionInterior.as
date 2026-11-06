package protocol.api.interior
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.interior.buy.RequestInteriorBuy;
   import protocol.api.interior.get_info.RequestInteriorGetInfo;
   import protocol.api.interior.save.RequestInteriorSave;
   
   public class FscExtensionInterior extends FscExtensionBase
   {
      
      public function FscExtensionInterior()
      {
         super();
      }
      
      public function buyItem(param1:int, param2:int, param3:Function = null) : void
      {
         var _loc4_:RequestInteriorBuy = new RequestInteriorBuy();
         _loc4_.item_id = param1;
         _loc4_.currency_id = param2;
         _connection.send(_loc4_,param3);
      }
      
      public function getInfo(param1:String, param2:Boolean, param3:Function = null) : void
      {
         var _loc4_:RequestInteriorGetInfo = new RequestInteriorGetInfo();
         _loc4_.owner_nickname = param1;
         _loc4_.is_decoration_shop = param2;
         _connection.send(_loc4_,param3);
      }
      
      public function save(param1:String, param2:Function = null) : void
      {
         var _loc3_:RequestInteriorSave = new RequestInteriorSave();
         _loc3_.interior_json = param1;
         _connection.send(_loc3_,param2);
      }
   }
}


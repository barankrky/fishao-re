package protocol.api.fishes
{
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import protocol.api.fishes.getRelevant.RequestFishesGetRelevant;
   import protocol.api.fishes.get_club.RequestFishesGetClub;
   import protocol.api.fishes.unlock_club.RequestFishesUnlockClub;
   
   public class FscExtensionFishes extends _d23481b750999df4f0e00416
   {
      
      public function FscExtensionFishes()
      {
         super();
      }
      
      public function getRelevant(param1:Function) : void
      {
         _connection.send(new RequestFishesGetRelevant(),param1);
      }
      
      public function getClub(param1:Boolean, param2:Function) : void
      {
         var _loc3_:RequestFishesGetClub = new RequestFishesGetClub();
         _loc3_.is_salt = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function unlockClub(param1:int, param2:Function) : void
      {
         var _loc3_:RequestFishesUnlockClub = new RequestFishesUnlockClub();
         _loc3_.fish_id = param1;
         _connection.send(_loc3_,param2);
      }
   }
}


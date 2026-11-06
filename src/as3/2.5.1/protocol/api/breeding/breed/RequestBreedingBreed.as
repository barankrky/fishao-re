package protocol.api.breeding.breed
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class RequestBreedingBreed extends _ccb739c00378004f39879793
   {
      
      public static const ACTION_BREED_FISHCOINS:String = "breedCoins";
      
      public static const ACTION_BREED_FISHBUCKS:String = "breedBucks";
      
      public static const DECREASE_BREEDING_TIME:String = "decTime";
      
      public static const INCREASE_BREEDING_CHANCE:String = "incChance";
      
      public var fishId:Number;
      
      public var action:String;
      
      public function RequestBreedingBreed(param1:String, param2:Number = 0)
      {
         super();
         this.fishId = param2;
         this.action = param1;
      }
   }
}


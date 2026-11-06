package protocol.api.breeding
{
   import protocol.api.base.FscExtensionBase;
   import protocol.api.breeding.breed.RequestBreedingBreed;
   
   public class FscExtensionBreeding extends FscExtensionBase
   {
      
      public function FscExtensionBreeding()
      {
         super();
      }
      
      public function breedFishPayFishcoins(param1:Number, param2:Function = null) : void
      {
         this.breedFish(RequestBreedingBreed.ACTION_BREED_FISHCOINS,param1,param2);
      }
      
      public function breedFishPayFishbucks(param1:Number, param2:Function = null) : void
      {
         this.breedFish(RequestBreedingBreed.ACTION_BREED_FISHBUCKS,param1,param2);
      }
      
      public function decreaseBreedingTime(param1:Function = null) : void
      {
         this.breedFish(RequestBreedingBreed.DECREASE_BREEDING_TIME,0,param1);
      }
      
      public function increaseBreedingChance(param1:Function = null) : void
      {
         this.breedFish(RequestBreedingBreed.INCREASE_BREEDING_CHANCE,0,param1);
      }
      
      private function breedFish(param1:String, param2:Number = 0, param3:Function = null) : void
      {
         var _loc4_:RequestBreedingBreed = new RequestBreedingBreed(param1,param2);
         _connection.send(_loc4_,param3);
      }
   }
}


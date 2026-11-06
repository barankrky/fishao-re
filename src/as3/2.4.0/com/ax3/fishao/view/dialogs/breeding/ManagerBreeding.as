package com.ax3.fishao.view.dialogs.breeding
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.breeding.model.BreedingFish;
   import protocol.api.breeding.FscExtensionBreeding;
   import protocol.api.breeding.getCurrent.ResponseBreedingGetCurrent;
   import protocol.api.breeding.getFishes.ResponseBreedingGetFishes;
   
   public class ManagerBreeding extends ManagerBase
   {
      
      private var _extensionBreeding:FscExtensionBreeding;
      
      private var _fishes:Array;
      
      private var _currentlyBreeding:BreedingFish;
      
      public function ManagerBreeding()
      {
         super();
         this._extensionBreeding = FishaoFscModelManager.fscModel.extensionBreeding;
         _remoteExtension = this._extensionBreeding;
         addResponseHandler(ResponseBreedingGetFishes,this.onGetFishes);
         addResponseHandler(ResponseBreedingGetCurrent,this.onGetCurrent);
      }
      
      public static function get fishIncreaseChanceMultiplierFishcoins() : Number
      {
         var _loc1_:Number = 1;
         _loc1_ *= 1.5;
         _loc1_ /= 40;
         return _loc1_ * 0.05;
      }
      
      public function get fishes() : Array
      {
         return this._fishes;
      }
      
      public function get currentlyBreeding() : BreedingFish
      {
         return this._currentlyBreeding;
      }
      
      private function onGetFishes(param1:ResponseBreedingGetFishes) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BreedingFish = null;
         this._fishes = [];
         var _loc4_:Array = param1.fishes;
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new BreedingFish();
            _loc3_.deserialize(_loc2_);
            this._fishes.push(_loc3_);
         }
      }
      
      private function onGetCurrent(param1:ResponseBreedingGetCurrent) : void
      {
         var _loc2_:BreedingFish = new BreedingFish();
         _loc2_.deserialize(param1.fish);
         this._currentlyBreeding = _loc2_;
      }
      
      public function decreaseBreedingTime(param1:Function) : void
      {
         this._extensionBreeding.decreaseBreedingTime(param1);
      }
      
      public function increaseBreedingChance(param1:Function) : void
      {
         this._extensionBreeding.increaseBreedingChance(param1);
      }
      
      public function breedFish(param1:int, param2:Boolean) : void
      {
         if(param2)
         {
            this._extensionBreeding.breedFishPayFishcoins(param1);
         }
         else
         {
            this._extensionBreeding.breedFishPayFishbucks(param1);
         }
      }
   }
}


package com.ax3.fishao.view.dialogs.breeding.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class BreedingFish
   {
      
      private var _id:int;
      
      private var _timeLeft:int;
      
      private var _succesRate:Number;
      
      public function BreedingFish()
      {
         super();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get timeLeft() : int
      {
         return this._timeLeft;
      }
      
      public function get succesRate() : Number
      {
         return this._succesRate;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.assertProperty(param1,"fish_id");
         this._timeLeft = Debug.assertProperty(param1,"time_left");
         this._succesRate = Debug.assertProperty(param1,"success_rate");
      }
   }
}


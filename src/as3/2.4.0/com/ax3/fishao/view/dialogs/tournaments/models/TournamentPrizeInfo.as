package com.ax3.fishao.view.dialogs.tournaments.models
{
   public class TournamentPrizeInfo
   {
      
      private var _type:String;
      
      private var _rewardFishcoins:int;
      
      private var _prizePosition:int;
      
      private var _rewardCoefficient:Number;
      
      public function TournamentPrizeInfo(param1:int, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this._prizePosition = param1;
         this._type = param2;
         this._rewardCoefficient = param3;
         this._rewardFishcoins = param4;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get rewardFishcoins() : int
      {
         return this._rewardFishcoins;
      }
      
      public function get prizePosition() : int
      {
         return this._prizePosition;
      }
      
      public function get rewardCoefficient() : Number
      {
         return this._rewardCoefficient;
      }
   }
}


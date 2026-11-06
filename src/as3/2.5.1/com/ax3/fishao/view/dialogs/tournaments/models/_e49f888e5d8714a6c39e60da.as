package com.ax3.fishao.view.dialogs.tournaments.models
{
   public class _e49f888e5d8714a6c39e60da
   {
      
      private var _cd3c0e10c6951058a4a12fa2:String;
      
      private var _5ecc992519bc2b5bca982629:int;
      
      private var _6c9c24216a094627b78dab6d:int;
      
      private var _0aa8cdfcb535f3834de44794:Number;
      
      public function _e49f888e5d8714a6c39e60da(param1:int, param2:String, param3:Number, param4:int = 0)
      {
         super();
         this._6c9c24216a094627b78dab6d = param1;
         this._cd3c0e10c6951058a4a12fa2 = param2;
         this._0aa8cdfcb535f3834de44794 = param3;
         this._5ecc992519bc2b5bca982629 = param4;
      }
      
      public function get type() : String
      {
         return this._cd3c0e10c6951058a4a12fa2;
      }
      
      public function get rewardFishcoins() : int
      {
         return this._5ecc992519bc2b5bca982629;
      }
      
      public function get prizePosition() : int
      {
         return this._6c9c24216a094627b78dab6d;
      }
      
      public function get rewardCoefficient() : Number
      {
         return this._0aa8cdfcb535f3834de44794;
      }
   }
}


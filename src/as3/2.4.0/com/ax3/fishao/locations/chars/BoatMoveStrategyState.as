package com.ax3.fishao.locations.chars
{
   public class BoatMoveStrategyState
   {
      
      public static const MOVE_CLOSE_TO_BOAT:BoatMoveStrategyState = new BoatMoveStrategyState("moveCloseToBoat");
      
      public static const MOVE_TO_BOAT:BoatMoveStrategyState = new BoatMoveStrategyState("moveToBoat");
      
      public static const ON_BOAT:BoatMoveStrategyState = new BoatMoveStrategyState("onBoat");
      
      public var name:String;
      
      public function BoatMoveStrategyState(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public function toString() : String
      {
         return this.name;
      }
   }
}


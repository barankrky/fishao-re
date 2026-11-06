package com.ax3.fishao.locations.chars
{
   public class CharStateType
   {
      
      public static const NORMAL:CharStateType = new CharStateType("normal");
      
      public static const SAIL_BY_BOAT:CharStateType = new CharStateType("sailByBoat");
      
      public var name:String;
      
      public function CharStateType(param1:String)
      {
         super();
         this.name = param1;
      }
   }
}


package com.ax3.fishao.locations.objects.boat
{
   public class BoatStatusType
   {
      
      public static const NORMAL:BoatStatusType = new BoatStatusType("normal");
      
      public static const SAIL:BoatStatusType = new BoatStatusType("sail");
      
      public static const DEFAULT:BoatStatusType = NORMAL;
      
      public var name:String;
      
      public function BoatStatusType(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public static function findStatusByName(param1:String) : BoatStatusType
      {
         if(param1 == NORMAL.name)
         {
            return NORMAL;
         }
         if(param1 == SAIL.name)
         {
            return SAIL;
         }
         throw new Error("Unknown status name: " + param1);
      }
   }
}


package com.ax3.display.rod
{
   public class RodState
   {
      
      public static const READY:RodState = new RodState("ready",false);
      
      public static const THROW_IN_ANIMATION:RodState = new RodState("throwInAnimation",true);
      
      public static const FISHING:RodState = new RodState("fishing",true);
      
      public static const BITE_START:RodState = new RodState("bite_start",true);
      
      public static const BITE:RodState = new RodState("bite",true);
      
      public static const REEL_IN:RodState = new RodState("reelIn",false);
      
      public var name:String;
      
      public var isInWater:Boolean = false;
      
      public function RodState(param1:String, param2:Boolean)
      {
         super();
         this.name = param1;
         this.isInWater = param2;
      }
      
      public function toString() : String
      {
         return "RodState(" + this.name + ")";
      }
   }
}


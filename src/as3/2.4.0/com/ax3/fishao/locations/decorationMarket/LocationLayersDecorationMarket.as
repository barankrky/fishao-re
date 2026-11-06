package com.ax3.fishao.locations.decorationMarket
{
   import com.ax3.fishao.locations.privateHouse.LocationLayersPrivateHouse;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   
   public class LocationLayersDecorationMarket extends LocationLayersPrivateHouse
   {
      
      public function LocationLayersDecorationMarket()
      {
         super();
         this.init();
      }
      
      override protected function onParseComplete() : void
      {
         var _loc1_:SublocationEnter = null;
         super.onParseComplete();
         for each(_loc1_ in _sublocationEnters)
         {
            if(_loc1_.id == 300)
            {
               _loc1_.id = -1;
            }
         }
      }
      
      private function init() : void
      {
      }
   }
}


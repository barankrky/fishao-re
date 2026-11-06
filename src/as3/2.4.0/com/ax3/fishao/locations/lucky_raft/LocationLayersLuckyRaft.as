package com.ax3.fishao.locations.lucky_raft
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewBoardFish;
   import com.ax3.fishao.locations.objects.ViewWheelOfLuckObject;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersLuckyRaft extends LocationLayers
   {
      
      private var _boardFish:ViewBoardFish;
      
      private var _wheelOfLuck:ViewWheelOfLuckObject;
      
      public function LocationLayersLuckyRaft()
      {
         super();
      }
      
      public function get boardFish() : ViewBoardFish
      {
         return this._boardFish;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(param1.name)
         {
            case EDisplayObjectType.EDOT_WHEEL_OF_LUCK:
               processChildAsISO(_loc2_);
               this._wheelOfLuck = new ViewWheelOfLuckObject(_loc2_);
               break;
            case EDisplayObjectType.EDOT_BOARD_FISH:
               processChildAsISO(_loc2_);
               this._boardFish = new ViewBoardFish(_loc2_);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
      
      override public function destroy() : void
      {
         if(this._boardFish != null)
         {
            this._boardFish.cleanup();
            this._boardFish = null;
         }
         if(this._wheelOfLuck != null)
         {
            this._wheelOfLuck.cleanup();
            this._wheelOfLuck = null;
         }
         super.destroy();
      }
   }
}


package com.ax3.fishao.locations.furniture_factory
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.objects.ViewBoardFish;
   import com.ax3.fishao.locations.objects.ViewFurnitureBox;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class LocationLayersFurnitureFactory extends LocationLayers
   {
      
      private var _boardFish:ViewBoardFish;
      
      private var _furnitureBox:ViewFurnitureBox;
      
      public function LocationLayersFurnitureFactory()
      {
         super();
      }
      
      public function get boardFish() : ViewBoardFish
      {
         return this._boardFish;
      }
      
      public function get furnitureBox() : ViewFurnitureBox
      {
         return this._furnitureBox;
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         var _loc3_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(_loc2_)
         {
            case EDisplayObjectType.EDOT_BOARD_FISH:
               processChildAsISO(_loc3_);
               this._boardFish = new ViewBoardFish(_loc3_);
               break;
            case EDisplayObjectType.EDOT_FURNITURE_BOX:
               processChildAsISO(_loc3_);
               this._furnitureBox = new ViewFurnitureBox(_loc3_);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
   }
}


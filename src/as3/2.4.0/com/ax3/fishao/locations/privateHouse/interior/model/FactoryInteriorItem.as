package com.ax3.fishao.locations.privateHouse.interior.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class FactoryInteriorItem
   {
      
      public function FactoryInteriorItem()
      {
         super();
      }
      
      public static function createInteriorItem(param1:Object, param2:String) : InteriorItemModel
      {
         var _loc3_:InteriorItemModel = null;
         switch(param2)
         {
            case EInteriorItemType.EIIT_FLOOR:
               _loc3_ = new InteriorItemFloor();
               break;
            case EInteriorItemType.EIIT_FURNITURE:
               _loc3_ = new InteriorItemFurniture();
               break;
            case EInteriorItemType.EIIT_WALL:
               _loc3_ = new InteriorItemWall();
               break;
            default:
               Debug.assert(false,"Unsupported type on createInteriorItem of FactoryInteriorItem: " + param2);
         }
         if(_loc3_ != null)
         {
            _loc3_.deserialize(param1);
         }
         return _loc3_;
      }
   }
}


package com.ax3.fishao.locations.privateHouse.interior.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInterior;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorFloor;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorFurniture;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorFurnitureTutorial;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorItem;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorWall;
   
   public class FactoryInteriorItemController
   {
      
      public function FactoryInteriorItemController()
      {
         super();
      }
      
      public static function createController(param1:InteriorItemModel, param2:ControllerInterior, param3:Boolean = false) : ControllerInteriorItem
      {
         var _loc4_:ControllerInteriorItem = null;
         switch(param1.type)
         {
            case EInteriorItemType.EIIT_FLOOR:
               _loc4_ = new ControllerInteriorFloor(param1 as InteriorItemFloor,param2);
               break;
            case EInteriorItemType.EIIT_FURNITURE:
               if(param3)
               {
                  _loc4_ = new ControllerInteriorFurnitureTutorial(param1 as InteriorItemFurniture,param2);
               }
               else
               {
                  _loc4_ = new ControllerInteriorFurniture(param1 as InteriorItemFurniture,param2);
               }
               break;
            case EInteriorItemType.EIIT_WALL:
               _loc4_ = new ControllerInteriorWall(param1 as InteriorItemWall,param2);
               break;
            default:
               Debug.assert(false,"Unsupported type on createInteriorItem of FactoryInteriorItemController: " + param1.type);
         }
         return _loc4_;
      }
   }
}


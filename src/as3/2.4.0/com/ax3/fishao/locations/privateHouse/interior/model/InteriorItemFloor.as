package com.ax3.fishao.locations.privateHouse.interior.model
{
   public class InteriorItemFloor extends InteriorItemModel
   {
      
      public function InteriorItemFloor()
      {
         super();
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         _type = EInteriorItemType.EIIT_FLOOR;
      }
   }
}


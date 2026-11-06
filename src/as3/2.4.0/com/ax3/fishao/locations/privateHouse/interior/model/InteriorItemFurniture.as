package com.ax3.fishao.locations.privateHouse.interior.model
{
   import com.ax3.fishao.debug.Debug;
   import flash.geom.Point;
   
   public class InteriorItemFurniture extends InteriorItemModel
   {
      
      public function InteriorItemFurniture()
      {
         super();
      }
      
      public function get width() : int
      {
         var _loc1_:int = 0;
         if(EInteriorItemRotation.isVertical(_rotation))
         {
            _loc1_ = _valueObject.size_x;
         }
         else
         {
            _loc1_ = _valueObject.size_y;
         }
         return _loc1_;
      }
      
      public function get height() : int
      {
         var _loc1_:int = 0;
         if(EInteriorItemRotation.isVertical(_rotation))
         {
            _loc1_ = _valueObject.size_y;
         }
         else
         {
            _loc1_ = _valueObject.size_x;
         }
         return _loc1_;
      }
      
      override public function serialize() : Object
      {
         var _loc1_:Object = super.serialize();
         _loc1_["position_x"] = _position.x;
         _loc1_["position_y"] = _position.y;
         _loc1_["rotation"] = _rotation;
         return _loc1_;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         _type = EInteriorItemType.EIIT_FURNITURE;
         var _loc2_:int = Debug.assertProperty(param1,"position_x");
         var _loc3_:int = Debug.assertProperty(param1,"position_y");
         _position = new Point(_loc2_,_loc3_);
         _rotation = Debug.assertProperty(param1,"rotation");
      }
   }
}


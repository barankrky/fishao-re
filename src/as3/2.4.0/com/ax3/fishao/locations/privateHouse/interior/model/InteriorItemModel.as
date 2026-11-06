package com.ax3.fishao.locations.privateHouse.interior.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.PrivateHouseInteriorItemVO;
   import com.ax3.fishao.vars.app;
   import flash.geom.Point;
   
   public class InteriorItemModel
   {
      
      private static const SHADOW_Z_POINT:int = -100500;
      
      protected var _id:int;
      
      protected var _itemId:int;
      
      protected var _type:String;
      
      private var _location:String;
      
      private var _floor:int;
      
      protected var _position:Point;
      
      protected var _rotation:String;
      
      protected var _valueObject:PrivateHouseInteriorItemVO;
      
      public function InteriorItemModel()
      {
         super();
      }
      
      public function set location(param1:String) : void
      {
         this._location = param1;
      }
      
      public function get floor() : int
      {
         return this._floor;
      }
      
      public function get location() : String
      {
         return this._location;
      }
      
      public function get valueObject() : PrivateHouseInteriorItemVO
      {
         return this._valueObject;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get itemId() : int
      {
         return this._itemId;
      }
      
      public function getOffsetXByRotation(param1:String) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case EInteriorItemRotation.EIIR_BACK:
               _loc2_ = this._valueObject.back_offset_x;
               break;
            case EInteriorItemRotation.EIIR_FRONT:
               _loc2_ = this._valueObject.front_offset_x;
               break;
            case EInteriorItemRotation.EIIR_LEFT:
               _loc2_ = this._valueObject.left_offset_x;
               break;
            case EInteriorItemRotation.EIIR_RIGHT:
               _loc2_ = this._valueObject.right_offset_x;
               break;
            default:
               Debug.assert(false,"Unsupported rotation on InteriorItemModel in getOffsetXByRotation: " + param1);
         }
         return _loc2_;
      }
      
      public function getOffsetYByRotation(param1:String) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case EInteriorItemRotation.EIIR_BACK:
               _loc2_ = this._valueObject.back_offset_y;
               break;
            case EInteriorItemRotation.EIIR_FRONT:
               _loc2_ = this._valueObject.front_offset_y;
               break;
            case EInteriorItemRotation.EIIR_LEFT:
               _loc2_ = this._valueObject.left_offset_y;
               break;
            case EInteriorItemRotation.EIIR_RIGHT:
               _loc2_ = this._valueObject.right_offset_y;
               break;
            default:
               Debug.assert(false,"Unsupported rotation on InteriorItemModel in getOffsetYByRotation: " + param1);
         }
         return _loc2_;
      }
      
      public function getZPointByRotation(param1:String, param2:String) : int
      {
         var _loc3_:int = 0;
         if(param2 != EInteriorItemAssetType.EIIAT_ISO)
         {
            _loc3_ = SHADOW_Z_POINT;
         }
         else
         {
            switch(param1)
            {
               case EInteriorItemRotation.EIIR_BACK:
                  _loc3_ = this._valueObject.back_z_point;
                  break;
               case EInteriorItemRotation.EIIR_FRONT:
                  _loc3_ = this._valueObject.front_z_point;
                  break;
               case EInteriorItemRotation.EIIR_LEFT:
                  _loc3_ = this._valueObject.left_z_point;
                  break;
               case EInteriorItemRotation.EIIR_RIGHT:
                  _loc3_ = this._valueObject.right_z_point;
                  break;
               default:
                  Debug.assert(false,"Unsupported rotation on InteriorItemModel in getZPointByRotation: " + param1);
            }
         }
         return _loc3_;
      }
      
      public function get offsetXMin() : int
      {
         return Math.min(this._valueObject.back_offset_x,this._valueObject.front_offset_x,this._valueObject.left_offset_x,this._valueObject.right_offset_x);
      }
      
      public function get offsetYMin() : int
      {
         return Math.min(this._valueObject.back_offset_y,this._valueObject.front_offset_y,this._valueObject.left_offset_y,this._valueObject.right_offset_y);
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function get rotation() : String
      {
         return this._rotation;
      }
      
      public function set rotation(param1:String) : void
      {
         this._rotation = param1;
      }
      
      public function serialize() : Object
      {
         var _loc1_:Object = {};
         _loc1_["id"] = this._id;
         _loc1_["item_id"] = this._itemId;
         _loc1_["floor"] = this._floor;
         return _loc1_;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.assertProperty(param1,"id");
         this._itemId = Debug.assertProperty(param1,"item_id");
         this._valueObject = app.privateHouseInteriorItemDict.get(this._itemId) as PrivateHouseInteriorItemVO;
         this._floor = Debug.assertProperty(param1,"floor");
      }
      
      public function isSameWith(param1:InteriorItemModel) : Boolean
      {
         return this._id == param1.id && this._floor == param1.floor && this._position.equals(param1.position) && this._rotation == param1.rotation;
      }
      
      public function copyPosition(param1:InteriorItemModel) : void
      {
         this._floor = param1.floor;
         this._position.copyFrom(param1.position);
         this._rotation = param1.rotation;
      }
   }
}


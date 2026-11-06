package com.ax3.fishao.locations.items.model
{
   import com.ax3.fishao.debug.Debug;
   import flash.geom.Point;
   
   public class LocationItem
   {
      
      private var _resourceType:int;
      
      private var _resourceId:int;
      
      private var _position:Point;
      
      private var _positionOriginal:Point;
      
      public function LocationItem(param1:int = 0, param2:int = 0, param3:Point = null, param4:Point = null)
      {
         super();
         this._resourceType = param1;
         this._resourceId = param2;
         this._position = param3;
         this._positionOriginal = param4;
      }
      
      public function get resourceType() : int
      {
         return this._resourceType;
      }
      
      public function get resourceId() : int
      {
         return this._resourceId;
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function get positionOriginal() : Point
      {
         return this._positionOriginal;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._resourceType = Debug.assertProperty(param1,"resource_type",int);
         this._resourceId = Debug.assertProperty(param1,"resource_id",int);
         var _loc2_:int = Debug.assertProperty(param1,"x",int);
         var _loc3_:int = Debug.assertProperty(param1,"y",int);
         this._position = new Point(_loc2_,_loc3_);
      }
   }
}


package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import com.ax3.fishao.debug.Debug;
   import flash.geom.Point;
   
   public class HolidayItem
   {
      
      private var _type:String;
      
      private var _locationId:int;
      
      private var _position:Point;
      
      public function HolidayItem(param1:String)
      {
         super();
         this._type = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get locationId() : int
      {
         return this._locationId;
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._locationId = Debug.assertProperty(param1,"location_id");
         this._position = new Point();
         this._position.x = Debug.assertProperty(param1,"x");
         this._position.y = Debug.assertProperty(param1,"y");
      }
   }
}


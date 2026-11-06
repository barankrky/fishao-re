package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import com.ax3.fishao.debug.Debug;
   
   public class HolidayInfo
   {
      
      protected var _type:String;
      
      protected var _isActive:Boolean;
      
      protected var _propertiesJson:String;
      
      public function HolidayInfo()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._isActive = param1;
      }
      
      public function deserialize(param1:Object) : void
      {
         this.deserializeSimple(param1);
         this._propertiesJson = Debug.getPropertyOrDefault(param1,"properties","");
      }
      
      public function deserializeSimple(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
         this._isActive = Debug.assertProperty(param1,"is_active");
      }
      
      protected function parseItems(param1:Object, param2:String) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:HolidayItem = null;
         var _loc5_:Array = [];
         var _loc6_:Array = Debug.assertProperty(param1,param2,Array);
         for each(_loc3_ in _loc6_)
         {
            _loc4_ = new HolidayItem(param2);
            _loc4_.deserialize(_loc3_);
            _loc5_.push(_loc4_);
         }
         return _loc5_;
      }
   }
}


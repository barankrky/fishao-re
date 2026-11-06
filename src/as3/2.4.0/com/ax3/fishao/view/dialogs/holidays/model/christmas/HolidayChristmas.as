package com.ax3.fishao.view.dialogs.holidays.model.christmas
{
   import com.ax3.fishao.view.dialogs.holidays.model.base.EHolidayItemType;
   import com.ax3.fishao.view.dialogs.holidays.model.base.HolidayInfo;
   import com.brokenfunction.json.decodeJson;
   
   public class HolidayChristmas extends HolidayInfo
   {
      
      private var _balloons:Array;
      
      public function HolidayChristmas()
      {
         super();
      }
      
      public function get balloons() : Array
      {
         return this._balloons;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         var _loc2_:Object = decodeJson(_propertiesJson);
         this._balloons = parseItems(_loc2_,EHolidayItemType.EHIT_SANTA_BALLOON);
      }
   }
}


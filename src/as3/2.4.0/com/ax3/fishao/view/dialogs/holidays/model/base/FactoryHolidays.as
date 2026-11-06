package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.holidays.model.christmas.HolidayChristmas;
   import com.ax3.fishao.view.dialogs.holidays.model.halloween.HolidayHalloween;
   import com.ax3.fishao.view.dialogs.holidays.model.valentine.HolidayValentine;
   
   public class FactoryHolidays
   {
      
      public function FactoryHolidays()
      {
         super();
      }
      
      public static function createHoliday(param1:Object) : HolidayInfo
      {
         var _loc2_:HolidayInfo = null;
         switch(param1["type"])
         {
            case EHolidayType.EHT_CHRISTMAS:
               _loc2_ = new HolidayChristmas();
               break;
            case EHolidayType.EHT_HALLOWEEN:
               _loc2_ = new HolidayHalloween();
               break;
            case EHolidayType.EHT_VALENTINE:
               _loc2_ = new HolidayValentine();
               break;
            default:
               Debug.assert(false);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}


package com.ax3.utils
{
   import com.ax3.utils.string.zeroPad;
   
   public class DateUtils
   {
      
      private static const daysOfMonths:Array = [31,28,31,30,31,30,31,31,30,31,30,31];
      
      public function DateUtils()
      {
         super();
      }
      
      public static function dayInMonth(param1:int, param2:Number) : int
      {
         var _loc3_:Date = null;
         if(param1 == 1)
         {
            _loc3_ = new Date(param2,param1 + 1,0);
            return _loc3_.getDate();
         }
         return daysOfMonths[param1];
      }
      
      public static function toServerString(param1:Date) : String
      {
         return param1.fullYear + "-" + zeroPad(param1.month + 1,2) + "-" + zeroPad(param1.date,2);
      }
      
      public static function convertTimestampToDateString(param1:int) : String
      {
         var _loc2_:String = null;
         var _loc3_:Date = new Date(param1 * 1000);
         var _loc4_:Number = _loc3_.getDate();
         var _loc5_:Number = _loc3_.getMonth() + 1;
         var _loc6_:Number = _loc3_.getFullYear();
         return _loc4_ + "/" + _loc5_ + "/" + _loc6_;
      }
      
      public static function convertTimestampToTimeString(param1:int) : String
      {
         var _loc2_:String = null;
         var _loc3_:Date = new Date(param1 * 1000);
         var _loc4_:Number = _loc3_.getHours();
         var _loc5_:Number = _loc3_.getMinutes();
         var _loc6_:String = (_loc5_ < 10 ? "0" : "") + _loc5_;
         return _loc4_ + ":" + _loc6_;
      }
   }
}


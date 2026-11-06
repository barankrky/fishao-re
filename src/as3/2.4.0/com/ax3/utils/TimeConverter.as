package com.ax3.utils
{
   public class TimeConverter
   {
      
      public static const HOUR_MINUTE_SECOND_TYPE:String = "hourMinuteSecondType";
      
      public static const HOUR_MINUTE_TYPE:String = "hourMinuteType";
      
      public static const MINUTE_SECOND_TYPE:String = "minuteSecondType";
      
      public static const DYNAMIC_TWO_VALUES_TYPE:String = "dynamicTwoValuesType";
      
      public function TimeConverter()
      {
         super();
      }
      
      public static function fromMinutes(param1:Number) : uint
      {
         return Math.round(fromSeconds(param1 * 60));
      }
      
      public static function fromSeconds(param1:Number) : uint
      {
         return Math.round(param1 * 1000);
      }
      
      public static function fromHours(param1:Number) : uint
      {
         return Math.round(fromMinutes(param1 * 60));
      }
      
      public static function fromTime(param1:Number, param2:Number, param3:Number) : uint
      {
         return fromHours(param1) + fromMinutes(param2) + fromSeconds(param3);
      }
      
      public static function toSeconds(param1:Number) : Number
      {
         return param1 / 1000;
      }
      
      public static function toMinutes(param1:Number) : Number
      {
         return toSeconds(param1) / 60;
      }
      
      public static function toHours(param1:Number) : Number
      {
         return toMinutes(param1) / 60;
      }
      
      public static function toDays(param1:Number) : Number
      {
         return toHours(param1) / 24;
      }
      
      public static function toObjectTime(param1:Number) : Object
      {
         param1 = Math.abs(param1);
         var _loc2_:Number = Math.round(toSeconds(param1));
         var _loc3_:uint = _loc2_ % 60;
         var _loc4_:uint = Math.floor(_loc2_ / 60) % 60;
         var _loc5_:uint = Math.floor(_loc2_ / (60 * 60) % 24);
         var _loc6_:uint = Math.floor(_loc2_ / (60 * 60));
         var _loc7_:uint = Math.floor(_loc2_ / (60 * 60 * 24));
         return {
            "days":_loc7_,
            "hours":_loc5_,
            "minutes":_loc4_,
            "seconds":_loc3_,
            "totalHours":_loc6_
         };
      }
      
      public static function toTime(param1:Number, param2:String = "hourMinuteSecondType", param3:String = ":") : String
      {
         var _loc4_:Object = toObjectTime(param1);
         var _loc5_:uint = uint(_loc4_.seconds);
         var _loc6_:uint = uint(_loc4_.minutes);
         var _loc7_:uint = uint(_loc4_.totalHours);
         var _loc8_:String = String(_loc5_);
         if(_loc8_.length == 1)
         {
            _loc8_ = "0" + _loc8_;
         }
         var _loc9_:String = String(_loc6_);
         if(_loc9_.length == 1)
         {
            _loc9_ = "0" + _loc9_;
         }
         var _loc10_:String = String(_loc7_);
         if(_loc10_.length == 1)
         {
            _loc10_ = "0" + _loc10_;
         }
         var _loc11_:String = "";
         if(param2 == HOUR_MINUTE_SECOND_TYPE)
         {
            _loc11_ = _loc10_ + param3 + _loc9_ + param3 + _loc8_;
         }
         else if(param2 == HOUR_MINUTE_TYPE)
         {
            _loc11_ = _loc10_ + param3 + _loc9_;
         }
         else if(param2 == MINUTE_SECOND_TYPE)
         {
            _loc11_ = _loc9_ + param3 + _loc8_;
         }
         else if(param2 == DYNAMIC_TWO_VALUES_TYPE)
         {
            if(_loc7_ > 0)
            {
               _loc11_ = _loc10_ + param3 + _loc9_;
            }
            else
            {
               _loc11_ = _loc9_ + param3 + _loc8_;
            }
         }
         return _loc11_;
      }
      
      public static function toHMSString(param1:int) : String
      {
         return toTime(param1,HOUR_MINUTE_SECOND_TYPE);
      }
      
      public static function toHMString(param1:int) : String
      {
         return toTime(param1,HOUR_MINUTE_TYPE);
      }
      
      public static function getTimeString(param1:int) : String
      {
         var _loc2_:String = "";
         var _loc3_:uint = param1 / (60 * 60);
         var _loc4_:uint = param1 / 60 % 60;
         var _loc5_:uint = param1 % 60;
         if(_loc3_ > 0)
         {
            _loc2_ += doubleDigitFormat(_loc3_) + ":";
         }
         else
         {
            _loc2_ += "00:";
         }
         if(_loc4_ > 0)
         {
            _loc2_ += doubleDigitFormat(_loc4_) + ":";
         }
         else
         {
            _loc2_ += "00:";
         }
         if(_loc5_ > 0)
         {
            _loc2_ += doubleDigitFormat(_loc5_);
         }
         else
         {
            _loc2_ += "00";
         }
         return _loc2_;
      }
      
      public static function toMicroTime(param1:int) : String
      {
         var _loc2_:int = param1 / 360000;
         var _loc3_:int = (param1 - _loc2_ * 360000) / 60000;
         var _loc4_:int = (param1 - _loc2_ * 360000 - _loc3_ * 60000) / 1000;
         var _loc5_:int = param1 % 1000;
         var _loc6_:String = _loc2_ + ":";
         _loc6_ += _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         _loc6_ += ":";
         _loc6_ += _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         _loc6_ += ".";
         return _loc6_ + (_loc5_ < 10 ? "00" + _loc5_ : (_loc5_ < 100 ? "0" + _loc5_ : "" + _loc5_));
      }
      
      public static function convertToMMSS(param1:Number) : String
      {
         var _loc2_:Number = param1 % 60;
         var _loc3_:Number = int(param1 / 60);
         var _loc4_:String = doubleDigitFormat(_loc3_) + ":";
         var _loc5_:String = doubleDigitFormat(_loc2_);
         return _loc4_ + _loc5_;
      }
      
      private static function doubleDigitFormat(param1:uint) : String
      {
         var _loc2_:String = param1.toString();
         if(param1 < 10)
         {
            _loc2_ = "0" + _loc2_;
         }
         return _loc2_;
      }
   }
}


package com.ax3.utils
{
   public class StringUtil
   {
      
      public function StringUtil()
      {
         super();
      }
      
      public static function getShortNumber(param1:Number) : String
      {
         var _loc2_:String = "";
         if(param1 >= 1000 * 1000)
         {
            param1 = Math.floor(param1 / (1000 * 1000));
            _loc2_ += " M";
         }
         else if(param1 >= 1000)
         {
            param1 = Math.floor(param1 / 1000);
            _loc2_ += " K";
         }
         return param1 + _loc2_;
      }
      
      public static function getSmartShortNumber(param1:Number) : String
      {
         var _loc2_:String = "";
         if(param1 >= 100 * 1000 * 1000)
         {
            param1 = Math.floor(param1 / (1000 * 1000));
            _loc2_ += " M";
         }
         else if(param1 >= 100 * 1000)
         {
            param1 = Math.floor(param1 / 1000);
            _loc2_ += " K";
         }
         return param1 + _loc2_;
      }
      
      public static function findMaxWordLength(param1:String) : Number
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:Array = param1.split(" ");
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = Math.max(_loc3_,_loc2_.length);
         }
         return _loc3_;
      }
      
      public static function getMediumShortNumber(param1:Number, param2:int = 4) : String
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = "";
         if(param1 >= 1000 * 1000)
         {
            param1 /= 1000 * 1000;
            _loc5_ = "M";
         }
         else if(param1 >= 10 * 1000)
         {
            param1 /= 1000;
            _loc5_ = "K";
         }
         var _loc6_:int = param1;
         while(_loc6_ > 0)
         {
            _loc6_ /= 10;
            _loc3_++;
         }
         _loc4_ = int(param1 * 10 % 10) == 0 ? 0 : int(param2 - _loc3_);
         return _loc4_ == 0 ? param1.toString() : param1.toFixed(_loc4_) + _loc5_;
      }
      
      public static function getNotNull(param1:String, param2:String = "") : String
      {
         return param1 != null ? param1 : param2;
      }
   }
}


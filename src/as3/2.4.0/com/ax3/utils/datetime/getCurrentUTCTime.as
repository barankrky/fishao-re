package com.ax3.utils.datetime
{
   public function getCurrentUTCTime() : String
   {
      var _loc1_:Date = new Date();
      var _loc2_:String = String(_loc1_.millisecondsUTC);
      while(_loc2_.length < 3)
      {
         _loc2_ = "0" + _loc2_;
      }
      var _loc3_:String = String(_loc1_.secondsUTC);
      if(_loc3_.length == 1)
      {
         _loc3_ = "0" + _loc3_;
      }
      var _loc4_:String = String(_loc1_.minutesUTC);
      if(_loc4_.length == 1)
      {
         _loc4_ = "0" + _loc4_;
      }
      var _loc5_:String = String(_loc1_.hoursUTC);
      if(_loc5_.length == 1)
      {
         _loc5_ = "0" + _loc5_;
      }
      return _loc5_ + ":" + _loc4_ + ":" + _loc3_ + "." + _loc2_;
   }
}


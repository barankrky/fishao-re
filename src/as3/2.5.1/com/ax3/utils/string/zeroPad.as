package com.ax3.utils.string
{
   public function zeroPad(param1:Object, param2:int = 1) : String
   {
      var _loc3_:String = param1.toString();
      while(_loc3_.length < param2)
      {
         _loc3_ = "0" + _loc3_;
      }
      return _loc3_;
   }
}


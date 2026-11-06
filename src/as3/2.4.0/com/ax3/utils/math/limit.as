package com.ax3.utils.math
{
   public function limit(param1:Number, param2:Number, param3:Number) : Number
   {
      if(param1 < param2)
      {
         return param2;
      }
      if(param1 > param3)
      {
         return param3;
      }
      return param1;
   }
}


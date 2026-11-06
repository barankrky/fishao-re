package com.ax3.utils.math
{
   public function randomRangeEase(param1:Number, param2:Number, param3:Function) : Number
   {
      return (param2 - param1) * param3(randomRange(param1,param2),param1,1,param2 - param1);
   }
}


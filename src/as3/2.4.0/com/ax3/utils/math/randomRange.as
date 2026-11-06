package com.ax3.utils.math
{
   public function randomRange(param1:Number, param2:Number) : Number
   {
      return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
   }
}


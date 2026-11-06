package com.ax3.utils
{
   public class Range
   {
      
      private var min:Number;
      
      private var max:Number;
      
      private var step:Number;
      
      public function Range(param1:Number, param2:Number, param3:Number = 1)
      {
         super();
         this.min = param1;
         this.max = param2;
         this.step = param3;
      }
      
      public function toStringVector() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:Number = this.min;
         while(_loc2_ <= this.max)
         {
            _loc1_.push(_loc2_.toString());
            _loc2_ += this.step;
         }
         return _loc1_;
      }
   }
}


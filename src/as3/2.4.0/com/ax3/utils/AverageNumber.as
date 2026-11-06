package com.ax3.utils
{
   public class AverageNumber
   {
      
      private var _value:Number;
      
      private var _count:int = 0;
      
      private var _countLimit:int;
      
      public function AverageNumber(param1:Number = 0, param2:int = 2147483647)
      {
         super();
         this._value = param1;
         this._countLimit = param2;
      }
      
      public function push(param1:Number) : void
      {
         this._value = (this._value * this._count + param1) / (this._count + 1);
         if(this._count < this._countLimit)
         {
            ++this._count;
         }
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function get count() : int
      {
         return this._count;
      }
      
      public function set count(param1:int) : void
      {
         if(this._count == param1)
         {
            return;
         }
         this._count = param1;
      }
      
      public function toString() : String
      {
         return "[Avg(" + int(this._value) + "*" + this._count + ")]";
      }
   }
}


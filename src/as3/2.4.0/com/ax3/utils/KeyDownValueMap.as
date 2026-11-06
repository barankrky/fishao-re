package com.ax3.utils
{
   public class KeyDownValueMap
   {
      
      private var _config:Object;
      
      private var _keys:Vector.<Number>;
      
      public function KeyDownValueMap(param1:Object)
      {
         var _loc2_:String = null;
         super();
         this._config = param1;
         this._keys = new Vector.<Number>();
         for(_loc2_ in this._config)
         {
            this._keys.push(parseFloat(_loc2_));
         }
         this._keys.sort(Array.NUMERIC);
      }
      
      public function getByKey(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         for each(_loc2_ in this._keys)
         {
            if(_loc2_ >= param1)
            {
               return this._config[_loc2_];
            }
         }
         return NaN;
      }
   }
}


package com.ax3.utils
{
   public class _ca7f6ba7d3c4ef15c37fa46b
   {
      
      private var _a4d7570273ecfc167ee5748a:Object;
      
      private var _eaf9194cad87193da1f94424:Vector.<Number>;
      
      public function _ca7f6ba7d3c4ef15c37fa46b(param1:Object)
      {
         var _loc2_:String = null;
         super();
         this._a4d7570273ecfc167ee5748a = param1;
         this._eaf9194cad87193da1f94424 = new Vector.<Number>();
         for(_loc2_ in this._a4d7570273ecfc167ee5748a)
         {
            this._eaf9194cad87193da1f94424.push(parseFloat(_loc2_));
         }
         this._eaf9194cad87193da1f94424.sort(Array.NUMERIC);
      }
      
      public function _af8c58b343e7de991a098dfb(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         for each(_loc2_ in this._eaf9194cad87193da1f94424)
         {
            if(_loc2_ >= param1)
            {
               return this._a4d7570273ecfc167ee5748a[_loc2_];
            }
         }
         return NaN;
      }
   }
}


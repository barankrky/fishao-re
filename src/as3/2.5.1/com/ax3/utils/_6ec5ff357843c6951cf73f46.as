package com.ax3.utils
{
   public class _6ec5ff357843c6951cf73f46
   {
      
      private var _77c35cd47d8669ec052c0c75:Number;
      
      private var max:Number;
      
      private var _9c4d98be07e56b8b6fd77d57:Number;
      
      public function _6ec5ff357843c6951cf73f46(param1:Number, param2:Number, param3:Number = 1)
      {
         super();
         this._77c35cd47d8669ec052c0c75 = param1;
         this.max = param2;
         this._9c4d98be07e56b8b6fd77d57 = param3;
      }
      
      public function _d87326ad473f429192c1125b() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:Number = this._77c35cd47d8669ec052c0c75;
         while(_loc2_ <= this.max)
         {
            _loc1_.push(_loc2_.toString());
            _loc2_ += this._9c4d98be07e56b8b6fd77d57;
         }
         return _loc1_;
      }
   }
}


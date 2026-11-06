package com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController
{
   import com.ax3.fishao.view.wrappers.impl.profile.fishesPanel.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _a5b8b5a0e66fa8f31d236147 implements _fbb51bd7a45e58ba8b6f74d2
   {
      
      private var _24171847688021aafd6f507b:DisplayObjectContainer;
      
      private var _3c8dbcf62f6134f7b1bae106:Number;
      
      private var _c9ac29140addf73870d98495:Number;
      
      private var _78ca60910997300c9f790d82:Number;
      
      private var _dc12021cb03e0c95c02fc858:Number;
      
      private var _5235f904f8cb2d7b9bf01730:Number;
      
      private var _1f88206dcea69406aa57ac8e:Number;
      
      private var _0932659c5d80fcc4a17c5ab2:Vector.<DisplayObject>;
      
      public function _a5b8b5a0e66fa8f31d236147(param1:DisplayObjectContainer, param2:Number = 0, param3:Number = 0, param4:Number = 100, param5:Number = 100, param6:Number = 2, param7:Number = 2)
      {
         super();
         this._24171847688021aafd6f507b = param1;
         this._daca4f415cd86e2009056fa2(param2,param3,param4,param5,param6,param7);
         this._0932659c5d80fcc4a17c5ab2 = new Vector.<DisplayObject>(-1634417322 ^ 0x6AAFAF13 ^ 0x47430373 ^ -1283954378);
      }
      
      private function _daca4f415cd86e2009056fa2(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         this._3c8dbcf62f6134f7b1bae106 = param1;
         this._c9ac29140addf73870d98495 = param2;
         this._78ca60910997300c9f790d82 = param3;
         this._dc12021cb03e0c95c02fc858 = param4;
         this._5235f904f8cb2d7b9bf01730 = param5;
         this._1f88206dcea69406aa57ac8e = param6;
      }
      
      public function display(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._0ae56fb514ccc83d101a6e13();
         var _loc5_:Number = -1068964353 ^ 0x1A0BC394 ^ 0x5A2310E8 ^ -2141178237;
         while(_loc5_ < param1.length)
         {
            _loc2_ = param1[_loc5_];
            this._0932659c5d80fcc4a17c5ab2.push(_loc2_);
            this._24171847688021aafd6f507b.addChild(_loc2_);
            _loc3_ = _loc5_ % this._1f88206dcea69406aa57ac8e;
            _loc4_ = int(_loc5_ / this._1f88206dcea69406aa57ac8e);
            _loc2_.x = this._3c8dbcf62f6134f7b1bae106 + _loc3_ * this._78ca60910997300c9f790d82;
            _loc2_.y = this._c9ac29140addf73870d98495 + _loc4_ * this._dc12021cb03e0c95c02fc858;
            _loc5_++;
         }
      }
      
      public function _0ae56fb514ccc83d101a6e13() : void
      {
         var _loc1_:DisplayObject = null;
         while(this._0932659c5d80fcc4a17c5ab2.length > (-654930550 ^ -1352516824 ^ 0x701FAB37 ^ 0x078B1D95))
         {
            _loc1_ = this._0932659c5d80fcc4a17c5ab2.pop();
            if(this._24171847688021aafd6f507b.contains(_loc1_))
            {
               this._24171847688021aafd6f507b.removeChild(_loc1_);
            }
         }
      }
      
      public function get capacity() : Number
      {
         return this._5235f904f8cb2d7b9bf01730 * this._1f88206dcea69406aa57ac8e;
      }
   }
}


package com.ax3.fishao.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class UtilsBitmap
   {
      
      public function UtilsBitmap()
      {
         super();
      }
      
      public static function merge(param1:BitmapData, param2:BitmapData, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         param1.unlock();
         var _loc10_:int = 0;
         while(_loc10_ < param2.width)
         {
            _loc5_ = 0;
            while(_loc5_ < param2.height)
            {
               _loc6_ = param2.getPixel32(_loc10_,_loc5_);
               _loc7_ = _loc6_ >> 24 & 0xFF;
               _loc8_ = param1.getPixel32(param3 + _loc10_,param4 + _loc5_);
               _loc9_ = uint(_loc8_ >> 24 & 0xFF);
               if(_loc7_ != 0 && _loc9_ == 0)
               {
                  param1.setPixel32(param3 + _loc10_,param4 + _loc5_,4294967295);
               }
               _loc5_++;
            }
            _loc10_++;
         }
      }
      
      public static function initSpriteWithOnlyFilledArea(param1:Bitmap) : Sprite
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:Sprite = new Sprite();
         var _loc6_:Number = param1.width;
         var _loc7_:Number = param1.height;
         var _loc8_:BitmapData = param1.bitmapData;
         var _loc9_:int = 0;
         while(_loc9_ < _loc6_)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc7_)
            {
               _loc3_ = _loc8_.getPixel32(_loc9_,_loc2_);
               _loc4_ = _loc3_ >>> 24;
               if(_loc4_ != 0)
               {
                  _loc5_.graphics.beginFill(_loc3_ & 0xFFFFFF,_loc4_ / 255);
                  _loc5_.graphics.drawRect(_loc9_,_loc2_,1,1);
                  _loc5_.graphics.endFill();
               }
               _loc2_++;
            }
            _loc9_++;
         }
         return _loc5_;
      }
   }
}


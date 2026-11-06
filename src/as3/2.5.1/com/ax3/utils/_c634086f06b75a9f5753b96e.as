package com.ax3.utils
{
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class _c634086f06b75a9f5753b96e
   {
      
      public function _c634086f06b75a9f5753b96e()
      {
         super();
      }
      
      public static function _4fde0f2daf03ea0d6f7697a1(param1:Vector.<DisplayObject>, param2:Rectangle) : void
      {
         if(param1.length == (-1508843493 ^ 0x59C98902 ^ -1861850617 ^ 0x6EDF031E))
         {
            return;
         }
         var _loc3_:Number = 0x14FBC9F6 ^ 0x151D6A17 ^ 0x71C464A6 ^ 0x7022C747;
         var _loc4_:Number = 0x1CBAE31B ^ -1075663447 ^ 0x34BBB4F0 ^ -1746666942;
         while(_loc4_ < param1.length)
         {
            _loc3_ += param1[_loc4_].width;
            _loc4_++;
         }
         param1[-1961616425 ^ 0x562F1623 ^ -170409242 ^ 0x28ECCF12].x = param2.x + (param2.width - _loc3_) / (-510765495 ^ -52135350 ^ -1249617326 ^ -1460767149);
         _67481ef5effa5595aa1a5b30(param1);
      }
      
      public static function _67481ef5effa5595aa1a5b30(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:Number = 0x47B3A54D ^ 0x741A3DB8 ^ -706398036 ^ -431185832;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_].x = param1[_loc2_ - 1].x + param1[_loc2_ - 1].width;
            _loc2_++;
         }
      }
   }
}


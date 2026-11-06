package com.ax3.utils.math
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.geom.Point;
   
   public class ResizeMath
   {
      
      public static const FILL:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剋勥剷勀刡刺刨勂勘勖勺到劾剌勪剸","劘刧刜勣刂勒勶劲劒勯劷劎刴办剆利");
      
      public static const FIT:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼务刊劈刬剒刷募剪剡劯刣剟劏","勈刾刬创勬劯剠勼動加劐勦勬劖刑判");
      
      public static const RAW:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬捥揤捔掴捧捏挏揚捯揚捚捑掸","挅捱掫揨掁掰掯援揲揾捂掦揺描揊揧");
      
      public function ResizeMath()
      {
         super();
      }
      
      public static function fixMethod(param1:String) : String
      {
         return param1 == FILL || param1 == FIT ? param1 : RAW;
      }
      
      public static function newDimensions(param1:Point, param2:Point, param3:String, param4:Boolean = true) : Point
      {
         var _loc5_:Point = scale(param1,param2,param3,param4);
         return new Point(_loc5_.x * param1.x,_loc5_.y * param1.y);
      }
      
      public static function scale(param1:Point, param2:Point, param3:String, param4:Boolean = true) : Point
      {
         var _loc5_:Number = param2.x / param1.x;
         var _loc6_:Number = param2.y / param1.y;
         var _loc7_:Number = _loc5_;
         var _loc8_:Number = _loc6_;
         if(param3 == FILL)
         {
            _loc7_ = _loc8_ = Math.max(_loc5_,_loc6_);
         }
         else if(param3 == FIT)
         {
            _loc7_ = _loc8_ = Math.min(_loc5_,_loc6_);
         }
         return new Point(_loc7_ > (0x085EEDF4 ^ -1171985447 ^ 0x616126A0 ^ -753196916) && !param4 ? -1555315767 ^ 0x455A3A1A ^ -2014344013 ^ 0x61FE7561 : _loc7_,_loc8_ > (0x54CC6D4B ^ -988969194 ^ 0x3BCC4656 ^ -1441944566) && !param4 ? -423905715 ^ 0x7008A259 ^ -436511334 ^ 0x7348498F : _loc8_);
      }
   }
}


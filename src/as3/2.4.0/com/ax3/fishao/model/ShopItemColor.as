package com.ax3.fishao.model
{
   public class ShopItemColor
   {
      
      private static var _all:Vector.<ShopItemColor> = new Vector.<ShopItemColor>();
      
      public static const RED:ShopItemColor = new ShopItemColor(16711680,"red");
      
      public static const GREEN:ShopItemColor = new ShopItemColor(65280,"green");
      
      public static const BLUE:ShopItemColor = new ShopItemColor(255,"blue");
      
      public static const BROWN:ShopItemColor = new ShopItemColor(9849600,"brown");
      
      public static const BLACK:ShopItemColor = new ShopItemColor(0,"black");
      
      public static const GRAY:ShopItemColor = new ShopItemColor(8421504,"gray");
      
      public static const BEIGE:ShopItemColor = new ShopItemColor(16769978,"beige");
      
      public static const DARKGREEN:ShopItemColor = new ShopItemColor(78368,"darkgreen");
      
      public static const DARKBLUE:ShopItemColor = new ShopItemColor(8077,"darkblue");
      
      public var color:uint;
      
      public var name:String;
      
      public function ShopItemColor(param1:uint, param2:String)
      {
         super();
         this.color = param1;
         this.name = param2;
         _all.push(this);
      }
      
      public static function parseColors(param1:String) : Vector.<ShopItemColor>
      {
         var _loc2_:String = null;
         var _loc3_:ShopItemColor = null;
         var _loc4_:Vector.<ShopItemColor> = new Vector.<ShopItemColor>();
         var _loc5_:Array = param1.split(",");
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = ShopItemColor.findColorName(_loc2_);
            if(_loc3_ != null)
            {
               _loc4_.push(_loc3_);
            }
         }
         return _loc4_;
      }
      
      public static function findColorName(param1:String) : ShopItemColor
      {
         var _loc2_:ShopItemColor = null;
         for each(_loc2_ in _all)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}


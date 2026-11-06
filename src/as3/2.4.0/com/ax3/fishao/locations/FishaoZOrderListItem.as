package com.ax3.fishao.locations
{
   import flash.display.DisplayObject;
   
   public class FishaoZOrderListItem
   {
      
      public var displayObject:DisplayObject;
      
      public var next:FishaoZOrderListItem;
      
      public var prev:FishaoZOrderListItem;
      
      public var lastY:Number;
      
      public var name:String;
      
      public function FishaoZOrderListItem()
      {
         super();
      }
   }
}


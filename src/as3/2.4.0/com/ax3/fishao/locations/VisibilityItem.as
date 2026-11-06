package com.ax3.fishao.locations
{
   import flash.display.DisplayObject;
   
   public class VisibilityItem
   {
      
      public var displayObject:DisplayObject;
      
      public var offsetX:Number;
      
      public var offsetY:Number;
      
      public var offsetRight:Number;
      
      public var offsetBottom:Number;
      
      public var visible:Boolean = true;
      
      public var selfMove:Boolean = false;
      
      public function VisibilityItem()
      {
         super();
      }
   }
}


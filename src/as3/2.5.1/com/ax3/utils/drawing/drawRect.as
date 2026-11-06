package com.ax3.utils.drawing
{
   import flash.display.Sprite;
   
   public function drawRect(param1:Sprite, param2:Number = 0, param3:Number = 0, param4:int = 1, param5:int = 1, param6:uint = 4294901760) : Sprite
   {
      var target:Sprite = param1;
      var x:Number = param2;
      var y:Number = param3;
      var width:int = param4;
      var height:int = param5;
      var color:uint = param6;
      var alpha:Number = (color >> 24 & 0xFF) / 255;
      color &= 16777215;
      with(target.graphics)
      {
         beginFill(color,alpha);
         drawRect(x,y,width,height);
         endFill();
      }
      return target;
   }
}


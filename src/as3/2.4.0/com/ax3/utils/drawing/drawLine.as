package com.ax3.utils.drawing
{
   import flash.display.Sprite;
   
   public function drawLine(param1:Sprite, param2:Number = 0, param3:Number = 0, param4:Number = 1, param5:Number = 1, param6:uint = 4294901760, param7:Number = 1) : void
   {
      var target:Sprite = param1;
      var x:Number = param2;
      var y:Number = param3;
      var width:Number = param4;
      var height:Number = param5;
      var color:uint = param6;
      var thickness:Number = param7;
      var alpha:Number = (color >> 24 & 0xFF) / 255;
      color &= 16777215;
      with(target.graphics)
      {
         lineStyle(thickness,color,alpha);
         moveTo(x,y);
         lineTo(x + width,y + height);
      }
   }
}


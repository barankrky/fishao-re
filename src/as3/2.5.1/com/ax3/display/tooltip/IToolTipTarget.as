package com.ax3.display.tooltip
{
   import flash.geom.Point;
   
   public interface IToolTipTarget
   {
      
      function getTooltipType() : TooltipType;
      
      function getTooltipGlobalPosition() : Point;
      
      function getTooltipConfig() : Object;
   }
}


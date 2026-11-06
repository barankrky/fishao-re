package com.ax3.display.tooltip
{
   public class TooltipType
   {
      
      public static var TEXT_TOOLTIP:TooltipType;
      
      public var tooltipClass:Class;
      
      public function TooltipType(param1:Class = null)
      {
         super();
         this.tooltipClass = param1;
      }
   }
}


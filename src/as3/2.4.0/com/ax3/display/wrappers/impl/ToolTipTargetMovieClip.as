package com.ax3.display.wrappers.impl
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public class ToolTipTargetMovieClip extends MovieClip implements IToolTipTarget
   {
      
      public var tooltipConfig:Object;
      
      public function ToolTipTargetMovieClip()
      {
         super();
      }
      
      public function getTooltipType() : TooltipType
      {
         if(this.tooltipConfig != null)
         {
            return TooltipType.TEXT_TOOLTIP;
         }
         return null;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this.tooltipConfig;
      }
      
      public function set tooltipText(param1:String) : void
      {
         this.tooltipConfig = {"text":param1};
      }
   }
}


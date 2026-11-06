package com.ax3.fishao.display.panels.inventory.base
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import flash.geom.Point;
   
   public class SourceButtonInventory extends gButtonInventory implements IToolTipTarget
   {
      
      private var _tooltipConfig:Object;
      
      private var _tooltipText:String;
      
      public function SourceButtonInventory()
      {
         super();
         this._tooltipConfig = {"text":""};
      }
      
      public function set tooltipText(param1:String) : void
      {
         if(this._tooltipText == param1)
         {
            return;
         }
         this._tooltipText = param1;
         this._tooltipConfig = {"text":this._tooltipText};
      }
      
      public function getTooltipType() : TooltipType
      {
         return TooltipType.TEXT_TOOLTIP;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this._tooltipConfig;
      }
   }
}


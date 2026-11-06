package com.ax3.display.wrappers.impl
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class MiddleTextFieldWrapper extends Sprite implements IAssetWrapper, IToolTipTarget
   {
      
      private var _originalRect:Rectangle;
      
      public var tooltipConfig:Object;
      
      private var _field:TextField;
      
      public function MiddleTextFieldWrapper()
      {
         super();
         mouseChildren = false;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._field = TextField(param1);
         this._originalRect = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         ShiftWrapper.shiftDisplayObject(param1,this);
         addChild(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._field.text = param1;
         this._field.y = int(this._originalRect.height / 2 - this._field.textHeight / 2 + 0.5);
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
   }
}


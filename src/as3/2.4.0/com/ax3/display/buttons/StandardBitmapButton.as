package com.ax3.display.buttons
{
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class StandardBitmapButton extends ButtonSprite implements IToolTipTarget
   {
      
      public static var globalOverCallback:Function;
      
      public static var globalClickCallback:Function;
      
      public var tooltipConfig:Object;
      
      protected var _state:ButtonState = ButtonState.DEFAULT;
      
      protected var _labelField:TextField;
      
      public function StandardBitmapButton(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super();
         if(param1 != null)
         {
            this.init(param1,param2);
         }
      }
      
      override public function init(param1:StandardBitmapButtonConfiguration, param2:Function) : void
      {
         super.init(param1,param2);
         if(param1.asset != null)
         {
            addChild(param1.asset);
         }
         if(!isNaN(param1.x))
         {
            x = param1.x;
         }
         if(!isNaN(param1.y))
         {
            y = param1.y;
         }
         if(param1.labelField != null)
         {
            this._labelField = param1.labelField;
            if(param1.labelField.parent == null)
            {
               addChild(this._labelField);
            }
         }
         _handler = param2;
         addEventListener(MouseEvent.CLICK,this.onClick,false,0,true);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown,false,0,true);
         addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp,false,0,true);
         addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove,false,0,true);
         addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut,false,0,true);
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         if(this._state != ButtonState.DISABLED && this._state != ButtonState.DOWN)
         {
            this.state = ButtonState.OVER;
            this.updateGivenState();
         }
      }
      
      protected function onMouseUp(param1:MouseEvent) : void
      {
         if(this._state != ButtonState.DISABLED)
         {
            this._state = ButtonState.OVER;
            this.updateGivenState();
         }
      }
      
      public function set label(param1:String) : void
      {
         if(this._labelField != null)
         {
            this._labelField.text = param1;
         }
      }
      
      public function get label() : String
      {
         if(this._labelField != null)
         {
            return this._labelField.text;
         }
         return "";
      }
      
      public function set state(param1:ButtonState) : void
      {
         if(this._state != param1)
         {
            this._state = param1;
            if(this._state == ButtonState.OVER)
            {
               this.playOverSound();
            }
            if(this._state == ButtonState.DOWN)
            {
               this.playClickSound();
            }
            this.updateGivenState();
         }
      }
      
      protected function playOverSound() : void
      {
         if(globalOverCallback != null)
         {
            globalOverCallback();
         }
      }
      
      protected function playClickSound() : void
      {
         if(globalClickCallback != null)
         {
            globalClickCallback();
         }
      }
      
      public function onMouseOver(param1:MouseEvent) : void
      {
         if(this._state != ButtonState.DISABLED)
         {
            this.state = ButtonState.OVER;
         }
      }
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
         if(this._state != ButtonState.DISABLED)
         {
            this.state = ButtonState.NORMAL;
         }
      }
      
      protected function onMouseDown(param1:MouseEvent) : void
      {
         if(this._state != ButtonState.DISABLED)
         {
            this.state = ButtonState.DOWN;
         }
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         if(this.enabled)
         {
            if(_handler != null)
            {
               _handler(param1);
            }
            else
            {
               param1.stopPropagation();
            }
         }
      }
      
      public function enable() : void
      {
         if(this._state == ButtonState.DISABLED)
         {
            this.state = ButtonState.NORMAL;
         }
      }
      
      public function disable() : void
      {
         this.state = ButtonState.DISABLED;
      }
      
      protected function updateGivenState() : void
      {
         if(this._state == ButtonState.DISABLED)
         {
            useHandCursor = false;
         }
         else
         {
            useHandCursor = true;
         }
      }
      
      public function get enabled() : Boolean
      {
         return this._state != ButtonState.DISABLED;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(param1)
         {
            this.enable();
         }
         else
         {
            this.disable();
         }
      }
      
      public function set handler(param1:Function) : void
      {
         _handler = param1;
      }
      
      public function get handler() : Function
      {
         return _handler;
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


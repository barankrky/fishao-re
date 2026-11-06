package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class FishaoSettingsSliderWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _unit:MovieClip;
      
      private var _paint:Sprite;
      
      private var _paintMaxWith:Number;
      
      private var _minX:Number;
      
      private var _value:Number;
      
      public function FishaoSettingsSliderWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         this._unit = MovieClip(MovieClip(_child).getChildByName("unit"));
         this._unit.gotoAndStop("normal");
         this._unit.buttonMode = true;
         this._paint = Sprite(Sprite(_child).getChildByName("paint"));
         Sprite(_child).buttonMode = true;
         this._paintMaxWith = this._paint.width;
         this._minX = this._paint.x - this._unit.width / 2;
         this._unit.addEventListener(MouseEvent.MOUSE_DOWN,this.onUnitMouseDown);
         this._unit.addEventListener(MouseEvent.ROLL_OVER,this.onUnitOver);
         this._unit.addEventListener(MouseEvent.ROLL_OUT,this.onUnitOut);
         addEventListener(MouseEvent.CLICK,this.onPaintClick);
      }
      
      private function onUnitOut(param1:MouseEvent) : void
      {
         this._unit.gotoAndStop("normal");
      }
      
      private function onUnitOver(param1:MouseEvent) : void
      {
         this._unit.gotoAndStop("over");
      }
      
      private function onPaintClick(param1:MouseEvent) : void
      {
         this.updateX(mouseX + this._minX + this._unit.width / 2);
      }
      
      private function onUnitMouseDown(param1:MouseEvent) : void
      {
         _child.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         _child.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         _child.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         _child.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         this.updateX(mouseX);
      }
      
      private function updateX(param1:Number) : void
      {
         param1 = limit(param1,this._minX + this._unit.width / 2,this._minX + this._paintMaxWith + this._unit.width / 2);
         this._unit.x = param1;
         this._paint.width = this._unit.x - this._minX;
         var _loc2_:Number = this._paintMaxWith / 100;
         this._value = Math.round(this._paint.width / _loc2_) / 100;
      }
      
      public function set value(param1:Number) : void
      {
         this._value = limit(param1,0,1);
         this.updateX(this._paintMaxWith * this._value + this._minX);
      }
      
      public function get value() : Number
      {
         return this._value;
      }
   }
}


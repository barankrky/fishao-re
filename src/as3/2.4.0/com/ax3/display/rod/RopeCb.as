package com.ax3.display.rod
{
   import com.ax3.display.LineStyle;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class RopeCb extends Sprite
   {
      
      private var _lastChangeTsMS:int = 2147483647;
      
      private const CHANGE_TIMEOUT_MS:int = 2000;
      
      private var _asset:Shape = new Shape();
      
      private var _ropeCalc:RopeCalc = RopeCalc.create();
      
      private var _lineStyle:LineStyle = new LineStyle();
      
      private var joinsCount:uint = 30;
      
      public function RopeCb(param1:LineStyle)
      {
         super();
         name = "rope";
         this._lineStyle = param1;
      }
      
      public function get lineStyle() : LineStyle
      {
         return this._lineStyle;
      }
      
      public function create() : void
      {
         addChild(this._asset);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:uint = 0;
         this._ropeCalc.Update();
         if(getTimer() - this._lastChangeTsMS <= this.CHANGE_TIMEOUT_MS)
         {
            this._ropeCalc.AddGraviry();
            this._ropeCalc.UpdatePositionGiveSpeed();
            _loc2_ = Boolean(this._ropeCalc.RecalculateAll(Math.max(1,Math.round(param1))));
            this._asset.cacheAsBitmap = false;
            this._asset.graphics.clear();
            this._asset.graphics.lineStyle(this._lineStyle.thickness,this._lineStyle.color,this._lineStyle.alpha,this._lineStyle.pixelHinting,this._lineStyle.scaleMode,this._lineStyle.caps,this._lineStyle.joints,this._lineStyle.miterLimit);
            this._asset.graphics.moveTo(this._ropeCalc.startPointX,this._ropeCalc.startPointY);
            _loc3_ = 0;
            while(_loc3_ <= this.joinsCount)
            {
               this._asset.graphics.lineTo(this._ropeCalc.GetPx(_loc3_),this._ropeCalc.GetPy(_loc3_));
               _loc3_++;
            }
            if(_loc2_)
            {
               this.resetLastChangeTs();
            }
            this._asset.graphics.lineTo(this._ropeCalc.endPointX,this._ropeCalc.endPointY);
            if(getTimer() - this._lastChangeTsMS > this.CHANGE_TIMEOUT_MS)
            {
               this._asset.cacheAsBitmap = true;
            }
         }
      }
      
      public function resetLastChangeTs() : void
      {
         this._lastChangeTsMS = getTimer();
      }
      
      public function set startPointX(param1:int) : void
      {
         if(this._ropeCalc.startPointX != param1)
         {
            this._ropeCalc.startPointX = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function set startPointY(param1:int) : void
      {
         if(this._ropeCalc.startPointY != param1)
         {
            this._ropeCalc.startPointY = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function get startPointX() : int
      {
         return this._ropeCalc.startPointX;
      }
      
      public function get startPointY() : int
      {
         return this._ropeCalc.startPointY;
      }
      
      public function set endPointX(param1:int) : void
      {
         if(this._ropeCalc.endPointX != param1)
         {
            this._ropeCalc.endPointX = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function set endPointY(param1:int) : void
      {
         if(this._ropeCalc.endPointY != param1)
         {
            this._ropeCalc.endPointY = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function get endPointX() : int
      {
         return this._ropeCalc.endPointX;
      }
      
      public function get endPointY() : int
      {
         return this._ropeCalc.endPointY;
      }
      
      public function set flexibilityCoef(param1:Number) : void
      {
         this._ropeCalc.flexibilityCoef = param1;
      }
      
      public function set autoLengthCoef(param1:int) : void
      {
         this._ropeCalc.autoLengthCoef = param1;
      }
      
      public function get lastButOneX() : Number
      {
         return this._ropeCalc.GetPx(this.joinsCount - 2);
      }
      
      public function get lastButOneY() : Number
      {
         return this._ropeCalc.GetPy(this.joinsCount - 2);
      }
      
      public function set lastChangeTsMS(param1:int) : void
      {
         this._lastChangeTsMS = param1;
      }
   }
}


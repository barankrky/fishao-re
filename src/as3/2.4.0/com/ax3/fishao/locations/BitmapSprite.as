package com.ax3.fishao.locations
{
   import com.ax3.utils.timer.IUpdate;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   
   public class BitmapSprite extends Bitmap implements IDestroy, IUpdate
   {
      
      public static var created:int = 0;
      
      public static var destroyed:int = 0;
      
      private var _totalFrames:int = 0;
      
      private var _currentFrameIndex:Number = 1;
      
      private var _frames:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var _lastUpdateTimerMS:Number = 0;
      
      private var _frameUpdateMS:Number = 0;
      
      private var _framePerSec:Number;
      
      private var _isPlay:Boolean;
      
      public function BitmapSprite()
      {
         super();
         ++created;
      }
      
      public function addFrameBitmapData(param1:BitmapData) : void
      {
         this._frames.push(param1);
         if(this._frames.length == 1)
         {
            this.gotoAndStop(1);
         }
         this._totalFrames = this._frames.length;
      }
      
      public function gotoAndStop(param1:int) : void
      {
         if(bitmapData != this._frames[param1 - 1])
         {
            bitmapData = this._frames[param1 - 1];
         }
      }
      
      public function getLastFrame() : BitmapData
      {
         return this._frames.length > 0 ? this._frames[this._frames.length - 1] : null;
      }
      
      public function destroy() : void
      {
         var _loc1_:BitmapData = null;
         if(parent != null)
         {
            parent.removeChild(this);
         }
         ++destroyed;
         for each(_loc1_ in this._frames)
         {
            if(_loc1_ != null)
            {
               _loc1_.dispose();
            }
         }
         this._frames = null;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(this._isPlay)
         {
            if(this._lastUpdateTimerMS == -1)
            {
               this._lastUpdateTimerMS = param1;
               this.gotoAndStop(1);
            }
            else
            {
               _loc3_ = param1 - this._lastUpdateTimerMS;
               if(_loc3_ > this._frameUpdateMS)
               {
                  _loc4_ = int(_loc3_ / this._frameUpdateMS);
                  this._lastUpdateTimerMS += this._frameUpdateMS * _loc4_;
                  this.moveFrameCount(_loc4_);
               }
            }
         }
      }
      
      private function moveFrameCount(param1:int) : void
      {
         this._currentFrameIndex = (this._currentFrameIndex + param1) % this._totalFrames;
         this.gotoAndStop(this._currentFrameIndex + 1);
      }
      
      public function set framePerSec(param1:Number) : void
      {
         this._framePerSec = param1;
         this._frameUpdateMS = 1000 / this._framePerSec;
      }
      
      public function play() : void
      {
         this._isPlay = true;
         this._lastUpdateTimerMS = -1;
      }
   }
}


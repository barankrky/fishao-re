package com.ax3.fishao.locations.chars
{
   import com.ax3.utils.isBitmapDataValid;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class CharAnimationSource extends Bitmap implements IBitmapAnimationSource
   {
      
      public static const ZERO_POINT:Point = new Point(0,0);
      
      protected var _frames:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      public var currentFrame:Number = -1;
      
      protected var _sourceBitmapData:BitmapData;
      
      protected var _cellSize:Rectangle;
      
      public var totalFrames:int = 0;
      
      public function CharAnimationSource()
      {
         super();
      }
      
      public function config(param1:Object) : void
      {
         this._cellSize = Rectangle(param1.cellSize);
         this.createFrames();
      }
      
      public function getBitmapData(param1:Object = null) : BitmapData
      {
         return null;
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         this._sourceBitmapData = param1;
         this.createFrames();
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function createFrames() : void
      {
         var _loc1_:BitmapData = null;
         if(!this.isReady())
         {
            return;
         }
         this._frames = new Vector.<BitmapData>();
         this.totalFrames = 0;
         while(this._cellSize.y < this._sourceBitmapData.height)
         {
            this._cellSize.x = 0;
            this.totalFrames = 0;
            while(this._cellSize.x < this._sourceBitmapData.width)
            {
               _loc1_ = new BitmapData(this._cellSize.width,this._cellSize.height,true,0);
               _loc1_.copyPixels(this._sourceBitmapData,this._cellSize,ZERO_POINT);
               this._frames.push(_loc1_);
               ++this.totalFrames;
               this._cellSize.x += this._cellSize.width;
            }
            this._cellSize.y += this._cellSize.height;
         }
         this._cellSize.x = 0;
         this._cellSize.y = 0;
      }
      
      protected function isReady() : Boolean
      {
         return this._sourceBitmapData != null && isBitmapDataValid(this._sourceBitmapData) && this._cellSize != null;
      }
      
      public function enterFrame() : void
      {
         throw new Error("Can\'t use enterFrame");
      }
      
      public function getBitmapDataByDirection(param1:uint) : BitmapData
      {
         return param1 in this._frames ? this._frames[param1] : null;
      }
      
      public function linkViewport(param1:BitmapAnimationViewport) : void
      {
         if(this.isReady())
         {
            param1.bitmapData = this.getBitmapDataByDirection(param1.direction);
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0;
         if(this._frames != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._frames.length)
            {
               this._frames[_loc1_].dispose();
               _loc1_++;
            }
            this._frames.length = 0;
         }
      }
   }
}


package com.ax3.fishao.locations
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.timer.IUpdate;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BitmapCroppedMovieClipWrapper extends Sprite implements IUpdate, IAsyncTask, IDestroy, IAsyncAssetParser
   {
      
      private static var _frames:int = 0;
      
      private static var _emptyFrames:int = 0;
      
      private static var _sameFrames:int = 0;
      
      public static var created:int = 0;
      
      public static var destroyed:int = 0;
      
      public var asset:MovieClip;
      
      private var _rect:Rectangle;
      
      private var _hCellCount:Number;
      
      private var _vCellCount:Number;
      
      private const DEFAUL_CELL_WIDTH:Number = 256;
      
      private const DEFAUL_CELL_HEIGHT:Number = 256;
      
      private var cellWidth:int;
      
      private var cellHeight:int;
      
      private const EMPTRY_BITMAP:BitmapData = null;
      
      protected var _grid:Vector.<BitmapSprite>;
      
      private var _framePerSec:Number;
      
      private var _lastUpdateTimerMS:Number = 0;
      
      private var _currentFrameIndex:Number = 1;
      
      private var _isPlay:Boolean;
      
      private var _frameUpdateMS:Number = 0;
      
      private var _totalFrames:int = 0;
      
      private var _children:Vector.<DisplayObject>;
      
      private var _parseIsComplete:Boolean = false;
      
      private var _parseF:int;
      
      private var _parseV:int;
      
      private var _parseH:int;
      
      private var _callback:Function;
      
      public var origX:Number;
      
      public var origY:Number;
      
      public function BitmapCroppedMovieClipWrapper(param1:MovieClip, param2:Boolean = true, param3:Boolean = true, param4:Function = null)
      {
         super();
         ++created;
         this.asset = param1;
         var _loc5_:Point = param1.localToGlobal(new Point(param1.x,param1.y));
         this.origX = _loc5_.x;
         this.origY = _loc5_.y;
         this._callback = param4;
         if(param3)
         {
            this.cellWidth = this.DEFAUL_CELL_WIDTH;
            this.cellHeight = this.DEFAUL_CELL_HEIGHT;
         }
         else
         {
            this.cellWidth = param1.width;
            this.cellHeight = param1.height;
         }
         ShiftWrapper.shiftDisplayObject(param1,this);
         this._rect = new Rectangle(0,0,param1.width,param1.height);
         this._hCellCount = Math.ceil(this._rect.width / this.cellWidth);
         this._vCellCount = Math.ceil(this._rect.height / this.cellHeight);
         this._grid = new Vector.<BitmapSprite>();
         this._children = new Vector.<DisplayObject>();
         this._totalFrames = param1.totalFrames;
         this._parseF = 1;
         this._parseV = 0;
         this._parseH = 0;
         if(param2)
         {
            while(this._parseIsComplete == false)
            {
               this.parseTick();
            }
         }
      }
      
      public static function isEmpty(param1:BitmapData) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         param1.lock();
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = 0;
         loop0:
         while(_loc6_ < _loc4_)
         {
            _loc2_ = 0;
            while(true)
            {
               if(_loc2_ >= _loc5_)
               {
                  _loc6_ += 5;
                  continue loop0;
               }
               _loc3_ = param1.getPixel32(_loc6_,_loc2_);
               if(_loc3_ > 16777215)
               {
                  break;
               }
               _loc2_ += 5;
            }
            param1.unlock();
            return false;
         }
         param1.unlock();
         return true;
      }
      
      public function tick() : void
      {
         this.parseTick();
      }
      
      public function parseTick() : void
      {
         var _loc1_:BitmapSprite = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         var _loc4_:BitmapData = null;
         if(this._parseF > this._totalFrames)
         {
            this._parseIsComplete = true;
            if(this._callback != null)
            {
               this._callback(this);
            }
         }
         else
         {
            if(this.asset.currentFrame != this._parseF)
            {
               this.asset.gotoAndStop(this._parseF);
            }
            if(this._parseV >= this._vCellCount)
            {
               this._parseV = 0;
               ++this._parseF;
            }
            else if(this._parseH >= this._hCellCount)
            {
               this._parseH = 0;
               ++this._parseV;
            }
            else
            {
               if(this._parseV * this._hCellCount + this._parseH in this._grid)
               {
                  _loc1_ = this._grid[this._parseV * this._hCellCount + this._parseH];
               }
               else
               {
                  _loc1_ = this.createBitmapSprite();
                  _loc1_.x = this._parseH * this.cellWidth;
                  _loc1_.y = this._parseV * this.cellHeight;
                  this._grid.push(_loc1_);
                  this._children.push(_loc1_);
                  addChild(_loc1_);
               }
               _loc2_ = new BitmapData(this.cellWidth,this.cellHeight,true,0);
               _loc3_ = new Matrix();
               _loc3_.tx = -this._parseH * this.cellWidth;
               _loc3_.ty = -this._parseV * this.cellHeight;
               _loc2_.lock();
               _loc2_.draw(this.asset,_loc3_,null,null,null,false);
               if(isEmpty(_loc2_))
               {
                  _loc2_.dispose();
                  _loc1_.addFrameBitmapData(this.EMPTRY_BITMAP);
                  ++_emptyFrames;
               }
               else
               {
                  _loc4_ = _loc1_.getLastFrame();
                  if(false && this.isSame(_loc2_,_loc4_))
                  {
                     _loc2_.dispose();
                     _loc1_.addFrameBitmapData(_loc4_);
                     ++_sameFrames;
                  }
                  else
                  {
                     ++_frames;
                     _loc2_.unlock();
                     _loc1_.addFrameBitmapData(_loc2_);
                  }
               }
               ++this._parseH;
            }
         }
      }
      
      public function isComplete() : Boolean
      {
         return this._parseIsComplete;
      }
      
      protected function createBitmapSprite() : BitmapSprite
      {
         return new BitmapSprite();
      }
      
      private function isSame(param1:BitmapData, param2:BitmapData) : Boolean
      {
         var _loc3_:Object = null;
         if(param2 == null)
         {
            return false;
         }
         _loc3_ = param1.compare(param2);
         if(_loc3_ == 0)
         {
            return true;
         }
         return false;
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
      
      private function gotoAndStop(param1:int) : void
      {
         var _loc2_:BitmapSprite = null;
         this._currentFrameIndex = param1 - 1;
         for each(_loc2_ in this._grid)
         {
            if(_loc2_.visible)
            {
               _loc2_.gotoAndStop(this._currentFrameIndex + 1);
            }
         }
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
      
      public function getChildren() : Vector.<DisplayObject>
      {
         return this._children;
      }
      
      public function getBitmapSprites() : Vector.<BitmapSprite>
      {
         return this._grid;
      }
      
      public function destroy() : void
      {
         var _loc1_:* = undefined;
         if(parent != null)
         {
            parent.removeChild(this);
         }
         ++destroyed;
         for each(_loc1_ in this._children)
         {
            if(_loc1_ is IDestroy)
            {
               IDestroy(_loc1_).destroy();
            }
         }
         this.asset = null;
         this._rect = null;
         this._grid.length = 0;
         this._grid = null;
         this._children = null;
      }
      
      public function getUpdateList() : Vector.<IUpdate>
      {
         return null;
      }
      
      public function getDisplayObjectList() : Vector.<DisplayObject>
      {
         return null;
      }
   }
}


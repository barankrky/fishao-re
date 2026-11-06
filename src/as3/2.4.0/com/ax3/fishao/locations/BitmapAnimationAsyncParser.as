package com.ax3.fishao.locations
{
   import com.ax3.utils.BitmapUtil;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class BitmapAnimationAsyncParser implements IAsyncAssetParser, IDestroy
   {
      
      public var bitmapSprite:BitmapSprite;
      
      private var _frame:int;
      
      private var _target:MovieClip;
      
      private var _isComplete:Boolean;
      
      public function BitmapAnimationAsyncParser(param1:MovieClip)
      {
         super();
         this._target = param1;
         this._frame = 0;
         this.bitmapSprite = new BitmapSprite();
         this.bitmapSprite.framePerSec = 10;
      }
      
      public function tick() : void
      {
         var _loc1_:BitmapData = null;
         if(this._frame < this._target.totalFrames)
         {
            this._target.gotoAndStop(this._frame + 1);
            _loc1_ = BitmapUtil.clone(this._target);
            this.bitmapSprite.addFrameBitmapData(_loc1_);
            ++this._frame;
         }
         else
         {
            this._isComplete = true;
         }
      }
      
      public function isComplete() : Boolean
      {
         return this._isComplete;
      }
      
      public function replaceAsset() : void
      {
         this.bitmapSprite.x = this._target.x;
         this.bitmapSprite.y = this._target.y;
         var _loc1_:DisplayObjectContainer = this._target.parent;
         var _loc2_:int = _loc1_.getChildIndex(this._target);
         _loc1_.removeChild(this._target);
         _loc1_.addChildAt(this.bitmapSprite,_loc2_);
         this._target = null;
      }
      
      public function destroy() : void
      {
         this._target = null;
         this.bitmapSprite.destroy();
         this.bitmapSprite = null;
      }
   }
}


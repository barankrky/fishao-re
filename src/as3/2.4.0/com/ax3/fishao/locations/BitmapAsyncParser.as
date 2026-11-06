package com.ax3.fishao.locations
{
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer.IUpdate;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BitmapAsyncParser implements IAsyncAssetParser, IDestroy, IAsyncTask
   {
      
      private const DEFAUL_CELL_WIDTH:Number = 256;
      
      private const DEFAUL_CELL_HEIGHT:Number = 256;
      
      private var cellWidth:int = 256;
      
      private var cellHeight:int = 256;
      
      private var _rectangle:Rectangle;
      
      private const ZERO_POINT:Point = new Point(0,0);
      
      private var _asyncRect:Rectangle;
      
      private var _asyncHCellCount:Number;
      
      private var _asyncVCellCount:Number;
      
      private var _asyncCurH:int;
      
      private var _asyncCurV:int;
      
      private var source:DisplayObject;
      
      private var sourceBitmap:Bitmap;
      
      private var sourceParent:DisplayObjectContainer;
      
      private var _isComplete:Boolean = false;
      
      public var bitmaps:Vector.<Bitmap> = new Vector.<Bitmap>();
      
      public var addToDayNight:Boolean = false;
      
      public var container:Sprite;
      
      public var name:String;
      
      public function BitmapAsyncParser(param1:DisplayObject, param2:int = 256, param3:int = 256, param4:int = 2147483647, param5:int = 2147483647)
      {
         super();
         this.source = param1;
         this.cellWidth = param2;
         this.cellHeight = param3;
         this.sourceParent = param1.parent;
         var _loc6_:BitmapData = new BitmapData(Math.min(param1.width,param4),Math.min(param1.height,param5),true,0);
         _loc6_.draw(param1);
         this.sourceBitmap = new Bitmap(_loc6_);
         this._asyncRect = new Rectangle(0,0,this.sourceBitmap.width,this.sourceBitmap.height);
         this._asyncHCellCount = Math.ceil(this._asyncRect.width / param2);
         this._asyncVCellCount = Math.ceil(this._asyncRect.height / param3);
         this._asyncCurH = 0;
         this._asyncCurV = 0;
      }
      
      public function tick() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:Matrix = null;
         var _loc3_:Bitmap = null;
         if(this._asyncCurH >= this._asyncHCellCount)
         {
            this._asyncCurH = 0;
            ++this._asyncCurV;
         }
         else if(this._asyncCurV > this._asyncHCellCount)
         {
            this._isComplete = true;
            this.destroySourceBitmap();
         }
         else
         {
            _loc1_ = new BitmapData(this.cellWidth,this.cellHeight,true,0);
            _loc2_ = new Matrix();
            this._rectangle = new Rectangle(this._asyncCurH * this.cellWidth,this._asyncCurV * this.cellHeight,this.cellWidth,this.cellHeight);
            _loc1_.copyPixels(this.sourceBitmap.bitmapData,this._rectangle,this.ZERO_POINT);
            if(BitmapCroppedMovieClipWrapper.isEmpty(_loc1_))
            {
               _loc1_.dispose();
            }
            else
            {
               _loc3_ = new Bitmap(_loc1_);
               _loc3_.x = this._asyncCurH * this.cellWidth;
               _loc3_.y = this._asyncCurV * this.cellHeight;
               this.bitmaps.push(_loc3_);
            }
            ++this._asyncCurH;
         }
      }
      
      private function destroySourceBitmap() : void
      {
         this.sourceBitmap.bitmapData.dispose();
         this.sourceBitmap.bitmapData = null;
         this.sourceBitmap = null;
      }
      
      public function isComplete() : Boolean
      {
         return this._isComplete;
      }
      
      public function replaceSourceAsset() : void
      {
         var _loc1_:Bitmap = null;
         this.container = new Sprite();
         var _loc2_:int = this.sourceParent.getChildIndex(this.source);
         this.container.x = this.source.x;
         this.container.y = this.source.y;
         this.sourceParent.removeChild(this.source);
         this.sourceParent.addChildAt(this.container,_loc2_);
         for each(_loc1_ in this.bitmaps)
         {
            this.container.addChild(_loc1_);
         }
         this._rectangle = null;
         this.source = null;
         this.sourceParent = null;
      }
      
      public function destroy() : void
      {
         var _loc1_:Bitmap = null;
         for each(_loc1_ in this.bitmaps)
         {
            _loc1_.bitmapData.dispose();
            _loc1_.bitmapData = null;
         }
         this.bitmaps = null;
         if(this.container != null)
         {
            removeFromParent(this.container);
            removeAllChildren(this.container);
            this.container = null;
         }
      }
      
      public function parseTick() : void
      {
         this.tick();
      }
      
      public function getUpdateList() : Vector.<IUpdate>
      {
         return null;
      }
      
      public function getDisplayObjectList() : Vector.<DisplayObject>
      {
         var _loc1_:Bitmap = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
         for each(_loc1_ in this.bitmaps)
         {
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
   }
}


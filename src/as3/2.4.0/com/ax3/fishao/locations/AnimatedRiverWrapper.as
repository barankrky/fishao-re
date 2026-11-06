package com.ax3.fishao.locations
{
   import com.ax3.utils.timer.IUpdate;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   
   public class AnimatedRiverWrapper implements IAsyncTask, IDestroy
   {
      
      public var asset:DisplayObjectContainer;
      
      private var _asyncParser:IAsyncAssetParser;
      
      private var _asyncAssetChildIndex:int;
      
      private var _asyncParseComplete:Boolean = false;
      
      private var _completeParsers:Vector.<IAsyncAssetParser> = new Vector.<IAsyncAssetParser>();
      
      private var _objectToDestroy:Vector.<IDestroy> = new Vector.<IDestroy>();
      
      private var _updateList:Vector.<IUpdate>;
      
      private var _displayObjectList:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function AnimatedRiverWrapper(param1:DisplayObjectContainer)
      {
         super();
         this.asset = param1;
         this._asyncParser = null;
         this._asyncAssetChildIndex = -1;
      }
      
      public function parseTick() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:BitmapAnimationAsyncParser = null;
         if(this._asyncParser == null)
         {
            ++this._asyncAssetChildIndex;
            if(this._asyncAssetChildIndex < this.asset.numChildren)
            {
               _loc1_ = this.asset.getChildAt(this._asyncAssetChildIndex);
               if(_loc1_ is Shape)
               {
                  this._asyncParser = new BitmapAsyncParser(_loc1_ as DisplayObject);
                  this._objectToDestroy.push(this._asyncParser);
               }
               if(_loc1_ is MovieClip)
               {
                  if((_loc1_ as MovieClip).totalFrames == 1)
                  {
                     this._asyncParser = new BitmapAsyncParser(_loc1_ as DisplayObject);
                     this._objectToDestroy.push(this._asyncParser);
                  }
                  else
                  {
                     _loc2_ = new BitmapAnimationAsyncParser(_loc1_ as MovieClip);
                     this._asyncParser = _loc2_;
                     this._objectToDestroy.push(this._asyncParser);
                     if(this._updateList == null)
                     {
                        this._updateList = new Vector.<IUpdate>();
                     }
                     this._updateList.push(_loc2_.bitmapSprite);
                  }
               }
            }
            else
            {
               this.processCompleteParsers();
               this._asyncParseComplete = true;
            }
         }
         else
         {
            this._asyncParser.tick();
            if(this._asyncParser.isComplete())
            {
               this._completeParsers.push(this._asyncParser);
               this._asyncParser = null;
            }
         }
      }
      
      private function processCompleteParsers() : void
      {
         var _loc1_:IAsyncAssetParser = null;
         var _loc2_:Vector.<Bitmap> = null;
         var _loc3_:Bitmap = null;
         var _loc4_:BitmapSprite = null;
         for each(_loc1_ in this._completeParsers)
         {
            if(_loc1_ is BitmapAsyncParser)
            {
               (_loc1_ as BitmapAsyncParser).replaceSourceAsset();
               _loc2_ = (_loc1_ as BitmapAsyncParser).bitmaps;
               for each(_loc3_ in _loc2_)
               {
                  this._displayObjectList.push(_loc3_);
               }
            }
            if(_loc1_ is BitmapAnimationAsyncParser)
            {
               (_loc1_ as BitmapAnimationAsyncParser).replaceAsset();
               _loc4_ = (_loc1_ as BitmapAnimationAsyncParser).bitmapSprite;
               _loc4_.play();
               this._displayObjectList.push(_loc4_);
            }
         }
      }
      
      public function isComplete() : Boolean
      {
         return this._asyncParseComplete;
      }
      
      public function destroy() : void
      {
         var _loc1_:IDestroy = null;
         for each(_loc1_ in this._objectToDestroy)
         {
            _loc1_.destroy();
         }
         this._displayObjectList = null;
         this.asset = null;
      }
      
      public function getUpdateList() : Vector.<IUpdate>
      {
         return this._updateList;
      }
      
      public function getDisplayObjectList() : Vector.<DisplayObject>
      {
         return this._displayObjectList;
      }
   }
}


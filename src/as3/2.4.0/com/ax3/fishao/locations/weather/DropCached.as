package com.ax3.fishao.locations.weather
{
   import assets.common.Drop;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   
   public class DropCached extends Bitmap
   {
      
      private static var _frames:Vector.<BitmapData>;
      
      public var endY:Number;
      
      private var _currentFrame:int;
      
      public function DropCached()
      {
         super();
         if(_frames == null)
         {
            this.createCache(new Drop());
         }
         this.gotoAndStop(1);
      }
      
      private function createCache(param1:MovieClip) : void
      {
         var _loc2_:BitmapData = null;
         _frames = new Vector.<BitmapData>();
         var _loc3_:int = param1.totalFrames;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            param1.gotoAndStop(_loc4_ + 1);
            _loc2_ = new BitmapData(param1.width,param1.height,true,0);
            _loc2_.draw(param1);
            _frames.push(_loc2_);
            _loc4_++;
         }
      }
      
      public function gotoAndStop(param1:int) : void
      {
         if(param1 >= 1 && param1 <= _frames.length && param1 != this._currentFrame)
         {
            this._currentFrame = param1;
            bitmapData = _frames[param1 - 1];
         }
      }
      
      public function get currentFrame() : int
      {
         return this._currentFrame;
      }
      
      public function get totalFrames() : int
      {
         return _frames.length;
      }
   }
}


package com.ax3.fishao.locations.objects.boat
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BoatDirectionAnimationSource
   {
      
      public var directionIndex:int;
      
      public var shiftX:int;
      
      public var shiftY:int;
      
      public var totalFrames:int = 0;
      
      private var _frames:Vector.<BitmapData> = new Vector.<BitmapData>();
      
      private var _transformMatrix:Matrix;
      
      private var _invertTransformMatrix:Matrix;
      
      public function BoatDirectionAnimationSource(param1:MovieClip, param2:int, param3:int)
      {
         super();
         this.directionIndex = (param2 - 1) / param3;
         this.processMap(param1,param2);
         this.cacheAnimation(param2,param3,param1);
         this.totalFrames = param3;
      }
      
      private function processMap(param1:MovieClip, param2:int) : void
      {
         var _loc3_:Matrix = null;
         param1.gotoAndStop(param2);
         var _loc4_:DisplayObject = param1.getChildByName("map");
         if(_loc4_ != null)
         {
            _loc3_ = _loc4_.transform.matrix;
            if(this._transformMatrix == null)
            {
               this._transformMatrix = _loc3_;
               this._invertTransformMatrix = _loc3_.clone();
               this._invertTransformMatrix.invert();
            }
         }
         _loc4_.visible = false;
      }
      
      private function cacheAnimation(param1:int, param2:int, param3:MovieClip) : void
      {
         var _loc4_:BitmapData = null;
         var _loc5_:Rectangle = param3.getBounds(param3);
         this.shiftX = _loc5_.x;
         this.shiftY = _loc5_.y;
         this._transformMatrix.tx -= this.shiftX;
         this._transformMatrix.ty -= this.shiftY;
         this._invertTransformMatrix = this._transformMatrix.clone();
         this._invertTransformMatrix.invert();
         var _loc6_:Matrix = new Matrix();
         _loc6_.tx = -_loc5_.x;
         _loc6_.ty = -_loc5_.y;
         var _loc7_:int = param1;
         while(_loc7_ < param1 + param2)
         {
            param3.gotoAndStop(_loc7_);
            _loc4_ = new BitmapData(param3.width,param3.height,true,0);
            _loc4_.draw(param3,_loc6_);
            this._frames.push(_loc4_);
            _loc7_++;
         }
      }
      
      public function getBitmapDataByFrameIndex(param1:int) : BitmapData
      {
         return param1 in this._frames ? this._frames[param1] : this._frames[0];
      }
      
      public function transformPoint(param1:Point) : Point
      {
         if(this._transformMatrix != null)
         {
            return this._transformMatrix.transformPoint(param1);
         }
         return param1;
      }
      
      public function transformFromDisplayToReal(param1:Point) : Point
      {
         if(this._invertTransformMatrix != null)
         {
            return this._invertTransformMatrix.transformPoint(param1);
         }
         return param1;
      }
      
      public function getTransformMatrix() : Matrix
      {
         return this._transformMatrix;
      }
      
      public function getInvertTransformMatrix() : Matrix
      {
         return this._invertTransformMatrix;
      }
   }
}


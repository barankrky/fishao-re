package com.ax3.fishao.locations.water
{
   import assets.common.Leaf1;
   import assets.common.Leaf2;
   import assets.common.Leaf3;
   import assets.common.Leaf4;
   import assets.common.Leaf5;
   import assets.common.Leaf6;
   import assets.common.Leaf7;
   import assets.common.Leaf8;
   import com.ax3.utils.math.randomRange;
   import com.inkora.tween.TweenCube;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LeavesEffectLeaf extends Bitmap
   {
      
      private static var LEAVES_BITMAP_DATA_LIST:Vector.<BitmapData> = new <BitmapData>[new Leaf1(),new Leaf2(),new Leaf3(),new Leaf4(),new Leaf5(),new Leaf6(),new Leaf7(),new Leaf8()];
      
      private var _pathLines:Vector.<Rectangle>;
      
      private var _currentPathLineIndex:Number;
      
      private const SPEED_PIX_PER_SEC:Number = 20;
      
      public function LeavesEffectLeaf()
      {
         super();
         this.updateBitmapDataRandom();
      }
      
      private function updateBitmapDataRandom() : void
      {
         bitmapData = LEAVES_BITMAP_DATA_LIST[randomRange(0,LEAVES_BITMAP_DATA_LIST.length - 1)];
      }
      
      public function setPathLines(param1:Vector.<Rectangle>) : void
      {
         this._pathLines = param1;
         this.setInitPosition();
      }
      
      private function setInitPosition() : void
      {
         var _loc1_:Number = randomRange(0,this._pathLines.length - 1);
         var _loc2_:Rectangle = this._pathLines[_loc1_];
         x = int(_loc2_.x + randomRange(0,_loc2_.width));
         y = int(_loc2_.y);
         this._currentPathLineIndex = _loc1_;
         this.gotoNextPathLine();
      }
      
      private function gotoNextPathLine() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         ++this._currentPathLineIndex;
         if(this._pathLines != null)
         {
            if(this._currentPathLineIndex < this._pathLines.length)
            {
               _loc1_ = this._pathLines[this._currentPathLineIndex];
               _loc2_ = new Point(randomRange(_loc1_.x,_loc1_.x + _loc1_.width - bitmapData.width),_loc1_.y);
               _loc3_ = Math.sqrt((_loc2_.x - x) * (_loc2_.x - x) + (_loc2_.y - y) * (_loc2_.y - y));
               TweenCube.to(this,_loc3_ / this.SPEED_PIX_PER_SEC * (1 + randomRange(-0.2,0.2)),{
                  "x":_loc2_.x,
                  "y":_loc2_.y
               },{"onComplete":this.gotoNextPathLine});
            }
            else
            {
               this._currentPathLineIndex = 0;
               _loc1_ = this._pathLines[this._currentPathLineIndex];
               x = int(_loc1_.x + randomRange(0,_loc1_.width - bitmapData.width));
               y = int(_loc1_.y);
               alpha = 0;
               TweenCube.to(this,1,{"alpha":1});
               this.gotoNextPathLine();
            }
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
      }
      
      public function destroy() : void
      {
         this._pathLines = null;
      }
   }
}


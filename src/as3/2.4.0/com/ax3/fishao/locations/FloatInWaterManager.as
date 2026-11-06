package com.ax3.fishao.locations
{
   import com.ax3.display.rod.Rod;
   import com.ax3.fishao.locations.objects.boat.Boat;
   import com.ax3.utils.emptyVector;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class FloatInWaterManager
   {
      
      private const OFFSET_DIRECTIONS:Array = [new Point(1,0),new Point(1,1),new Point(0,1),new Point(-1,0),new Point(-1,1),new Point(-1,-1),new Point(0,-1),new Point(1,-1)];
      
      private var _floatInWater:Vector.<Rod> = new Vector.<Rod>();
      
      private var _boats:Vector.<Boat>;
      
      public var hitTestBoats:Function;
      
      private const SEARCH_STEP:int = 35;
      
      private const SEARCH_ITERATION_LIMIT:int = 150;
      
      public function FloatInWaterManager()
      {
         super();
      }
      
      public function destroy() : void
      {
         this._floatInWater.length = 0;
         this._floatInWater = null;
         this.hitTestBoats = null;
      }
      
      public function handleRodThrowIn(param1:Rod) : void
      {
         if(this._floatInWater.indexOf(param1) == -1)
         {
            this._floatInWater.push(param1);
         }
         if(this._boats != null)
         {
            this.inspectCollideRodWithBoats(param1);
         }
      }
      
      public function remove(param1:Rod) : void
      {
         var _loc2_:Number = this._floatInWater.indexOf(param1);
         if(_loc2_ > -1)
         {
            this._floatInWater.splice(_loc2_,1);
         }
      }
      
      public function set boats(param1:Vector.<Boat>) : void
      {
         if(!emptyVector(param1))
         {
            this._boats = param1;
         }
      }
      
      private function inspectCollideRodWithBoats(param1:Rod) : void
      {
         param1.throwInWorldOrigX = param1.outOffsetOrigX + param1.charX;
         param1.throwInWorldOrigY = param1.outOffsetOrigY + param1.charY;
         param1.throwInWorldCurX = param1.throwInWorldOrigX;
         param1.throwInWorldCurY = param1.throwInWorldOrigY;
         if(!param1.isLakeHit(param1.throwInWorldOrigX,param1.throwInWorldOrigY,param1.floatImage))
         {
            this.findCloseFreePoint(param1,param1.floatImage);
         }
      }
      
      private function findCloseFreePoint(param1:Rod, param2:Bitmap) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = this.SEARCH_STEP;
         var _loc9_:Boolean = false;
         var _loc10_:* = this.SEARCH_ITERATION_LIMIT;
         loop0:
         while(!_loc9_ && _loc10_ > 0)
         {
            _loc10_--;
            var _loc11_:int = 0;
            var _loc12_:* = this.OFFSET_DIRECTIONS;
            do
            {
               for each(_loc5_ in _loc12_)
               {
                  _loc3_ = param1.throwInWorldOrigX + _loc5_.x * _loc8_;
                  _loc4_ = param1.throwInWorldOrigY + _loc5_.y * _loc8_;
               }
               _loc8_ += this.SEARCH_STEP;
               continue loop0;
            }
            while(!param1.isLakeHit(_loc3_,_loc4_,param1.floatImage));
            param1.throwInWorldCurX = _loc3_;
            param1.throwInWorldCurY = _loc4_;
            _loc6_ = param1.throwInWorldCurX - param1.throwInWorldOrigX;
            _loc7_ = param1.throwInWorldCurY - param1.throwInWorldOrigY;
            param1.throwInFix(_loc6_,_loc7_);
            return;
         }
      }
      
      public function inspectBoatAtFloatCollision(param1:Boat) : void
      {
         var _loc2_:Rod = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         for each(_loc2_ in this._floatInWater)
         {
            _loc3_ = _loc2_.throwInWorldCurX;
            _loc4_ = _loc2_.throwInWorldCurY;
            _loc5_ = (param1.graphic.x - _loc3_) * (param1.graphic.x - _loc3_) + (param1.graphic.y - _loc4_) * (param1.graphic.y - _loc4_);
            if(_loc5_ < 90000)
            {
               _loc6_ = param1.hitTestPoint(new Point(_loc3_,_loc4_));
               if(_loc6_)
               {
                  this.findCloseFreePoint(_loc2_,_loc2_.floatImage);
                  _loc2_.updateNewFloatPosition();
               }
            }
         }
      }
   }
}


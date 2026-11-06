package com.ax3.fishao.locations.chars
{
   import flash.geom.Point;
   
   public class FreezeMovementStrategy implements IMoveStrategy
   {
      
      public function FreezeMovementStrategy()
      {
         super();
      }
      
      public function getAlignForVelocity() : Number
      {
         return 0;
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
      }
      
      public function isMove() : Boolean
      {
         return false;
      }
      
      public function disable() : void
      {
      }
      
      public function isWallHit(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         return false;
      }
      
      public function isLakeHit(param1:Point) : Boolean
      {
         return false;
      }
      
      public function stop() : void
      {
      }
      
      public function isMoveAnimation() : Boolean
      {
         return false;
      }
      
      public function isWallHitScreen(param1:Point) : Boolean
      {
         return false;
      }
   }
}


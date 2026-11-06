package com.ax3.fishao.locations.chars
{
   import flash.geom.Point;
   
   public interface IMoveStrategy
   {
      
      function getAlignForVelocity() : Number;
      
      function update(param1:uint, param2:uint, param3:Number) : void;
      
      function isMove() : Boolean;
      
      function isMoveAnimation() : Boolean;
      
      function disable() : void;
      
      function isWallHit(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean;
      
      function isLakeHit(param1:Point) : Boolean;
      
      function stop() : void;
      
      function isWallHitScreen(param1:Point) : Boolean;
   }
}


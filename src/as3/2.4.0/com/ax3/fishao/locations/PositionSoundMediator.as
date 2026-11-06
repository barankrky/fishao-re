package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.sound.PointSoundDecorator;
   import com.ax3.utils.sound.SoundFile;
   import flash.geom.Point;
   
   public class PositionSoundMediator
   {
      
      protected var _soundFile:SoundFile;
      
      protected var _position:Point;
      
      protected var _distance:int;
      
      protected var _lastPlayerPosition:Point;
      
      protected var _sound:PointSoundDecorator;
      
      public function PositionSoundMediator(param1:SoundFile, param2:Point, param3:int)
      {
         super();
         this._soundFile = param1;
         this._position = param2;
         this._distance = param3;
         this.reset();
      }
      
      public function reset() : void
      {
         this._lastPlayerPosition = new Point(int.MAX_VALUE,int.MAX_VALUE);
         this._sound = null;
      }
      
      public function stop() : void
      {
         if(this._sound != null)
         {
            this._sound.stop();
         }
         this._lastPlayerPosition.x = int.MIN_VALUE;
         this._lastPlayerPosition.y = int.MIN_VALUE;
      }
      
      public function handlePlayerPosition(param1:Point, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2 || (int(this._lastPlayerPosition.x / 10) != int(param1.x / 10) || int(this._lastPlayerPosition.y / 10) != int(param1.y / 10)))
         {
            this._lastPlayerPosition.x = param1.x;
            this._lastPlayerPosition.y = param1.y;
            _loc3_ = Point.distance(this._position,this._lastPlayerPosition);
            if(_loc3_ > this._distance)
            {
               if(this._sound != null)
               {
                  this._sound.stop();
                  FishaoSoundManager.stopPosition(this._soundFile);
                  this._sound = null;
               }
            }
            else
            {
               if(this._sound == null)
               {
                  this.createAndPlaySound();
               }
               if(this._sound != null)
               {
                  this._sound.globalVolume = FishaoSoundManager.getVolume(this._soundFile.group) * int(FishaoSoundManager.isEnabled(this._soundFile.group));
                  this._sound.distanceVolume = 1 - limit(_loc3_ / this._distance,0,1);
               }
            }
         }
      }
      
      protected function createAndPlaySound() : void
      {
         this._sound = FishaoSoundManager.playLoopPosition(this._soundFile);
      }
   }
}


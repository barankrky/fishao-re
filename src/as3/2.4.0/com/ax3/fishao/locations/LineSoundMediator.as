package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.sound.SoundFile;
   import flash.geom.Point;
   
   public class LineSoundMediator extends PositionSoundMediator
   {
      
      private var _isHorizontal:Boolean;
      
      public function LineSoundMediator(param1:SoundFile, param2:Point, param3:int)
      {
         super(param1,param2,param3);
         if(_position.x == -1)
         {
            this._isHorizontal = true;
         }
         else
         {
            this._isHorizontal = false;
         }
      }
      
      override public function handlePlayerPosition(param1:Point, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2 || this._isHorizontal && int(_lastPlayerPosition.y / 10) != int(param1.y / 10) || int(_lastPlayerPosition.x / 10) != int(param1.x / 10))
         {
            _lastPlayerPosition.x = param1.x;
            _lastPlayerPosition.y = param1.y;
            if(this._isHorizontal)
            {
               _loc3_ = Math.abs(_lastPlayerPosition.y - _position.y);
            }
            else
            {
               _loc3_ = Math.abs(_lastPlayerPosition.x - _position.x);
            }
            if(_loc3_ > _distance)
            {
               if(_sound != null)
               {
                  _sound.stop();
                  FishaoSoundManager.stopPosition(_soundFile);
               }
            }
            else
            {
               if(_sound == null)
               {
                  _sound = FishaoSoundManager.playLoopPosition(_soundFile);
               }
               if(_sound != null)
               {
                  _sound.distanceVolume = 1 - limit(_loc3_ / _distance,0,1);
               }
            }
         }
      }
   }
}


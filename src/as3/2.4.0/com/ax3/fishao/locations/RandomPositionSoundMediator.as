package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.sound.PointSoundDecorator;
   import com.ax3.utils.sound.SoundFile;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class RandomPositionSoundMediator extends PositionSoundMediator
   {
      
      private var _nextPlayTimestampMS:int;
      
      private var _minTimeMS:int;
      
      private var _maxTimeMS:int;
      
      public function RandomPositionSoundMediator(param1:SoundFile, param2:Point, param3:int, param4:int, param5:int)
      {
         super(param1,param2,param3);
         this._minTimeMS = param4;
         this._maxTimeMS = param5;
         this.generateNextPlayTimestamp();
      }
      
      private function generateNextPlayTimestamp() : void
      {
         this._nextPlayTimestampMS = getTimer() + randomRange(this._minTimeMS,this._maxTimeMS);
      }
      
      override protected function createAndPlaySound() : void
      {
         if(getTimer() >= this._nextPlayTimestampMS)
         {
            this.generateNextPlayTimestamp();
            _sound = FishaoSoundManager.playLoopPosition(_soundFile);
            if(_sound is PointSoundDecorator)
            {
               _sound.addEventListener(Event.SOUND_COMPLETE,this.onSoundComplete,false,0,true);
            }
         }
      }
      
      private function onSoundComplete(param1:Event) : void
      {
         var _loc2_:Object = param1.currentTarget;
         _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.onSoundComplete);
         if(_sound != null)
         {
            _sound.stop();
            _sound = null;
         }
      }
   }
}


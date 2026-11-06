package com.ax3.utils.sound
{
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   
   public class StepsSoundDecorator extends Sound implements IUpdate
   {
      
      private static var _globalId:int = 0;
      
      private var _sounds:Vector.<Sound>;
      
      private var _manager:SoundManager;
      
      private var _sndTransform:SoundTransform;
      
      private var _issues:Dictionary = new Dictionary();
      
      private var _activePlayIssueCount:int = 0;
      
      private var _trackPlayDelayMS:int;
      
      private var _instanceId:int = 0;
      
      public function StepsSoundDecorator(param1:Sound, param2:SoundManager, param3:Object = null)
      {
         var _loc4_:SoundFile = null;
         super();
         this._instanceId = _globalId++;
         this._manager = param2;
         this._sounds = new Vector.<Sound>();
         for each(_loc4_ in param3.sounds)
         {
            param1 = this._manager.getSoundBySoundFile(_loc4_);
            this._sounds.push(param1);
         }
         this._trackPlayDelayMS = param3.trackPlayDelayMS;
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = 1;
         }
         this._sndTransform = param3;
         this.playFor(this,1,this._sndTransform.volume);
         return null;
      }
      
      public function stop() : void
      {
         this.stopFor(this);
      }
      
      public function stopAll() : void
      {
         var _loc1_:StepsSoundDecoratorIssue = null;
         for each(_loc1_ in this._issues)
         {
            _loc1_.stop();
         }
         this._issues = new Dictionary();
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:StepsSoundDecoratorIssue = null;
         for each(_loc2_ in this._issues)
         {
            _loc2_.volume = param1;
         }
      }
      
      public function get volume() : Number
      {
         return this._issues[this] != null ? Number(this._issues[this].volume) : 0;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:StepsSoundDecoratorIssue = null;
         for each(_loc3_ in this._issues)
         {
            _loc3_.update(param1,param2);
         }
      }
      
      public function playFor(param1:Object, param2:Number, param3:Number) : void
      {
         var _loc4_:StepsSoundDecoratorIssue = null;
         if(!(param1 in this._issues))
         {
            if(param2 > 0)
            {
               ++this._activePlayIssueCount;
               _loc4_ = new StepsSoundDecoratorIssue(param1,param2,this._sounds,this._trackPlayDelayMS);
               if(this._sndTransform == null)
               {
                  this._sndTransform = new SoundTransform();
               }
               this._sndTransform.volume = param3;
               _loc4_.play(this._sndTransform);
               this._issues[param1] = _loc4_;
               if(this._activePlayIssueCount == 1)
               {
                  UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
               }
            }
         }
         else
         {
            _loc4_ = this._issues[param1];
            _loc4_.changeVolume(param2,param3);
         }
      }
      
      public function stopFor(param1:Object) : void
      {
         var _loc2_:StepsSoundDecoratorIssue = null;
         if(param1 in this._issues)
         {
            --this._activePlayIssueCount;
            _loc2_ = this._issues[param1];
            _loc2_.stop();
            this._issues[param1] = null;
            delete this._issues[param1];
            if(this._activePlayIssueCount == 0)
            {
               UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
            }
         }
      }
      
      public function isActive() : Boolean
      {
         return this._activePlayIssueCount > 0;
      }
   }
}


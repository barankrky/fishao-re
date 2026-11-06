package com.ax3.utils.sound
{
   import com.ax3.control.managers.SoundSwfFileSource;
   import com.ax3.events.ExtEvent;
   import com.ax3.fishao.locations.IDestroy;
   import com.inkora.sound.SoundEx;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class SoundManager extends EventDispatcher
   {
      
      private var _disableMap:Dictionary = new Dictionary();
      
      public var volume:Number = 1;
      
      private var _playAfterLoad:Vector.<SoundFile> = new Vector.<SoundFile>();
      
      private var _sounds:Dictionary = new Dictionary();
      
      private var _soundNameBySound:Dictionary = new Dictionary();
      
      private var _repeats:Dictionary = new Dictionary();
      
      private var _waitForSwfLoaf:Dictionary = new Dictionary();
      
      private var _volumeByGroup:Dictionary = new Dictionary();
      
      public function SoundManager()
      {
         super();
      }
      
      public function loadSoundFile(param1:SoundFile, param2:String) : void
      {
         var _loc3_:Sound = null;
         if(param1.type == SoundType.LOCATION_BACKGROUND)
         {
            _loc3_ = new FadeSound(new URLRequest(param2));
         }
         else
         {
            _loc3_ = new SoundEx(new URLRequest(param2));
         }
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this._soundNameBySound[_loc3_] = param1;
      }
      
      public function loadSwfSoundFile(param1:SoundSwfFile) : void
      {
         var _loc2_:SoundSwfFileSource = param1.swfSource;
         if(_loc2_.isLoaded())
         {
            this.createSwfSound(param1);
         }
         else
         {
            if(!(_loc2_ in this._waitForSwfLoaf))
            {
               this._waitForSwfLoaf[_loc2_] = [];
            }
            if((this._waitForSwfLoaf[_loc2_] as Array).indexOf(param1) == -1)
            {
               (this._waitForSwfLoaf[_loc2_] as Array).push(param1);
            }
            if(_loc2_.isLoading() == false)
            {
               _loc2_.addEventListener(Event.COMPLETE,this.onSoundSwfFileLoadComplete);
               _loc2_.load();
            }
         }
      }
      
      private function onSoundSwfFileLoadComplete(param1:ExtEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:SoundSwfFile = null;
         var _loc4_:SoundSwfFileSource = SoundSwfFileSource(param1.data);
         if(_loc4_ in this._waitForSwfLoaf)
         {
            _loc2_ = this._waitForSwfLoaf[_loc4_] as Array;
            for each(_loc3_ in _loc2_)
            {
               this.createSwfSound(_loc3_);
            }
         }
      }
      
      private function createSwfSound(param1:SoundSwfFile) : void
      {
         var _loc2_:Class = null;
         var _loc3_:Sound = param1.swfSource.createSound(param1.className);
         if(param1.type != null)
         {
            _loc2_ = param1.type.decorator;
            if(_loc2_ != null)
            {
               _loc3_ = new _loc2_(_loc3_,this,param1.params);
            }
         }
         this._soundNameBySound[_loc3_] = param1;
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function play(param1:SoundFile, param2:int = 0, param3:Number = NaN) : *
      {
         var _loc4_:Sound = null;
         var _loc5_:SoundChannel = null;
         if(this.isEnabledGroupForSong(param1) && this._sounds[param1] != null)
         {
            _loc4_ = Sound(this._sounds[param1]);
            if(isNaN(param3))
            {
               param3 = Number(this._volumeByGroup[param1.group]);
            }
            if(param3 > 0)
            {
               _loc5_ = _loc4_.play(0,param2,new SoundTransform(param3 * this._volumeByGroup[param1.group]));
               if(_loc4_.hasOwnProperty("stop"))
               {
                  return _loc4_;
               }
               return _loc5_;
            }
         }
         return null;
      }
      
      private function isEnabledGroupForSong(param1:SoundFile) : Boolean
      {
         var _loc2_:SoundFile = null;
         for each(_loc2_ in SoundFile.all)
         {
            if(_loc2_ == param1 && Boolean(this._disableMap[_loc2_.group]))
            {
               return false;
            }
         }
         return true;
      }
      
      public function playLoop(param1:SoundFile, param2:Number = NaN) : *
      {
         if(this._sounds[param1] != null)
         {
            if(this._repeats[param1] == null)
            {
               if(this.isEnabledGroupForSong(param1))
               {
                  this._repeats[param1] = this.play(param1,int.MAX_VALUE,param2);
               }
               else
               {
                  this._repeats[param1] = null;
               }
            }
         }
         else if(this._playAfterLoad.indexOf(param1) == -1)
         {
            this._playAfterLoad.push(param1);
         }
         return this._repeats[param1];
      }
      
      public function stopLoop(param1:SoundFile) : void
      {
         this.muteLoop(param1);
         this._repeats[param1] = null;
         delete this._repeats[param1];
      }
      
      public function muteLoop(param1:SoundFile) : void
      {
         var _loc2_:* = undefined;
         if(this._repeats[param1] != null)
         {
            _loc2_ = this._repeats[param1];
            _loc2_.stop();
            this._repeats[param1] = null;
         }
         var _loc3_:Number = this._playAfterLoad.indexOf(param1);
         if(_loc3_ > -1)
         {
            this._playAfterLoad.splice(_loc3_,1);
         }
      }
      
      public function stopAllLoopSounds() : void
      {
         var _loc1_:SoundFile = null;
         var _loc2_:* = undefined;
         for(_loc2_ in this._repeats)
         {
            _loc1_ = _loc2_;
            this.stopLoop(_loc1_);
         }
      }
      
      public function stopAllLoopSoundsInGroup(param1:Object) : void
      {
         var _loc2_:SoundFile = null;
         for each(_loc2_ in SoundFile.all)
         {
            if(_loc2_.group == param1)
            {
               this.stopLoop(_loc2_);
            }
         }
      }
      
      public function muteAllLoopSoundsInGroup(param1:Object) : void
      {
         var _loc2_:SoundFile = null;
         for each(_loc2_ in SoundFile.all)
         {
            if(_loc2_.group == param1)
            {
               this.muteLoop(_loc2_);
            }
         }
      }
      
      public function playAllLoopSoundsInGroup(param1:Object) : void
      {
         var _loc2_:SoundFile = null;
         for each(_loc2_ in SoundFile.all)
         {
            if(_loc2_.group == param1 && _loc2_ in this._repeats)
            {
               this.playLoop(_loc2_);
            }
         }
      }
      
      public function playAllLoopSounds(param1:Array = null) : void
      {
         var _loc2_:SoundFile = null;
         var _loc3_:* = undefined;
         if(param1 == null)
         {
            for(_loc3_ in this._repeats)
            {
               _loc2_ = _loc3_;
               this.playLoop(_loc2_);
            }
         }
         else
         {
            for each(_loc2_ in param1)
            {
               this.playLoop(_loc2_);
            }
         }
      }
      
      public function switchMute(param1:Object) : void
      {
         if(this._disableMap[param1] == true)
         {
            this.unMuteGroup(param1);
         }
         else
         {
            this.muteGroup(param1);
         }
      }
      
      public function mute(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1 is Array)
         {
            for each(_loc2_ in param1)
            {
               this.muteGroup(_loc2_);
            }
         }
         else
         {
            this.muteGroup(param1);
         }
      }
      
      public function muteGroup(param1:Object) : void
      {
         this._disableMap[param1] = true;
         this.muteAllLoopSoundsInGroup(param1);
      }
      
      public function unMuteGroup(param1:Object) : void
      {
         this._disableMap[param1] = false;
         this.playAllLoopSoundsInGroup(param1);
      }
      
      private function onComplete(param1:Event) : void
      {
         Sound(param1.target).removeEventListener(Event.COMPLETE,this.onComplete);
         var _loc2_:SoundFile = this._soundNameBySound[param1.target];
         this._sounds[_loc2_] = Sound(param1.target);
         var _loc3_:Number = this._playAfterLoad.indexOf(_loc2_);
         if(_loc3_ > -1)
         {
            this.playLoop(_loc2_);
            this._playAfterLoad.splice(_loc3_,1);
         }
      }
      
      public function getSoundBySoundFile(param1:SoundFile) : Sound
      {
         return this._sounds[param1];
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      public function get disableMap() : Dictionary
      {
         return this._disableMap;
      }
      
      public function isEnabled(param1:Object) : Boolean
      {
         return !this._disableMap[param1];
      }
      
      public function getPlayAfterLoad() : Vector.<SoundFile>
      {
         return this._playAfterLoad;
      }
      
      public function setVolume(param1:Object, param2:Number) : void
      {
         var _loc3_:SoundFile = null;
         var _loc4_:* = undefined;
         this._volumeByGroup[param1] = param2;
         for each(_loc3_ in SoundFile.all)
         {
            if(_loc3_.group == param1)
            {
               if(this._repeats[_loc3_] != null)
               {
                  _loc4_ = this._repeats[_loc3_];
                  if(_loc4_.hasOwnProperty("volume"))
                  {
                     _loc4_.volume = param2;
                  }
               }
            }
         }
      }
      
      public function getVolume(param1:Object) : Number
      {
         return this._volumeByGroup[param1];
      }
      
      public function getLoopSound(param1:SoundFile) : *
      {
         return param1 in this._repeats ? this._repeats[param1] : null;
      }
      
      public function destroy(param1:SoundFile) : void
      {
         var _loc2_:* = this._sounds[param1];
         if(_loc2_ is IDestroy)
         {
            (_loc2_ as IDestroy).destroy();
         }
         this._sounds[param1] = null;
         delete this._sounds[param1];
      }
   }
}


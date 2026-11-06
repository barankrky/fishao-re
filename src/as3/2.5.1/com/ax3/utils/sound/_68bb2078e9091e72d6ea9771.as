package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class _68bb2078e9091e72d6ea9771 extends Sound
   {
      
      private var _4d7ad43ed3f549cee6e5a708:Sound;
      
      private var _075d57413f459497e49097b2:Boolean = false;
      
      private var _d33102d94ce6df79f9aed3d6:SoundChannel;
      
      private var _ba0d3b947069cdd393fef6c4:Object;
      
      public function _68bb2078e9091e72d6ea9771(param1:Sound, param2:_e302725905f9afa2e120c8b6, param3:Object = null)
      {
         super();
         this._ba0d3b947069cdd393fef6c4 = param3;
         this._4d7ad43ed3f549cee6e5a708 = param1;
         this._4d7ad43ed3f549cee6e5a708.addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      private function onComplete(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
         }
         this._e4925a9f123d703a1d80da49(param3);
         this._075d57413f459497e49097b2 = true;
         this._d33102d94ce6df79f9aed3d6 = this._4d7ad43ed3f549cee6e5a708.play(param1,param2,param3);
         return this._d33102d94ce6df79f9aed3d6;
      }
      
      private function _e4925a9f123d703a1d80da49(param1:SoundTransform) : void
      {
         if(this._ba0d3b947069cdd393fef6c4 != null && this._ba0d3b947069cdd393fef6c4.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捀捴掂挂掂掀捑捈掍捌推捜掓揷挚挞挧捏捌揿","揚捿揈掌捀掾揩揖捕捋揃挰掉接捐捰")))
         {
            param1.volume *= this._ba0d3b947069cdd393fef6c4.volume;
         }
      }
      
      public function stop() : void
      {
         this._17775428214479258b20333d();
         this._075d57413f459497e49097b2 = false;
      }
      
      private function _17775428214479258b20333d() : void
      {
         var _loc1_:int = 0x61B9248A ^ 0x5227003A ^ 0x690EB665 ^ 0x1C9A9D5D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3848A0F0 ^ -544837266 ^ 0x77AF19B9 ^ -697579603))
            {
               case 0:
                  return;
               case 1:
                  this._d33102d94ce6df79f9aed3d6.stop();
                  this._075d57413f459497e49097b2 = false;
                  _loc1_ = -582421529 ^ -1226590174 ^ 0x259FE55F ^ 0x083EA110;
                  break;
               case 2:
                  if(this._d33102d94ce6df79f9aed3d6)
                  {
                     _loc1_ = 0x15ED7E98 ^ 0x2439ACB5 ^ 0x2F656054 ^ 0x58BBBDF2;
                  }
                  else
                  {
                     _loc1_ = 0x197EE265 ^ -1046722085 ^ -1276558798 ^ 0x2D01E606;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get soundChannel() : SoundChannel
      {
         return this._d33102d94ce6df79f9aed3d6;
      }
      
      public function get soundTransform() : SoundTransform
      {
         return this._d33102d94ce6df79f9aed3d6 ? this._d33102d94ce6df79f9aed3d6.soundTransform : null;
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(this._d33102d94ce6df79f9aed3d6)
         {
            _loc2_ = this._d33102d94ce6df79f9aed3d6.soundTransform;
            _loc2_.volume = param1;
            this._e4925a9f123d703a1d80da49(_loc2_);
            this._d33102d94ce6df79f9aed3d6.soundTransform = _loc2_;
         }
      }
      
      public function get volume() : Number
      {
         var _loc1_:int = 0x0E0EFCDB ^ -615967744 ^ -740723772 ^ 0x76423AE4;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-359636670 ^ -1681710162 ^ -287676967 ^ -279607601))
            {
               case 0:
                  return -1797877761 ^ 0x568B5666 ^ -1827222812 ^ 0x514B137D;
               case 1:
                  if(this._d33102d94ce6df79f9aed3d6)
                  {
                     _loc1_ = -789511231 ^ 0x3E28001D ^ 0x62EE94B2 ^ -51693930;
                  }
                  else
                  {
                     _loc1_ = 0x48703ED3 ^ -1573500429 ^ -318360036 ^ 0x779CE0C6;
                  }
                  break;
               case 2:
                  return this._d33102d94ce6df79f9aed3d6.soundTransform.volume;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


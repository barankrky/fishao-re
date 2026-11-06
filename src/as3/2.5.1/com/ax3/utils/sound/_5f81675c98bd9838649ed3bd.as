package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class _5f81675c98bd9838649ed3bd extends Sound
   {
      
      private var _a392975ed8ba342b091dd070:Boolean = false;
      
      private var _d196cd4f9892e22663995f62:_e302725905f9afa2e120c8b6;
      
      private var _643fa937d27c497c9408bc49:SoundChannel;
      
      private var _35a8e1c7dcf397a47063c0d6:SoundTransform;
      
      private var _770b44ad1e22221cd2ef1bbe:int = 240;
      
      private var _69db51f3cb5b5bb6f323706a:int;
      
      private var _06c68602995b662cbf9690aa:int;
      
      private var _a0efab487c0305f4c7f1ec98:Sound;
      
      private var _04ec583726d8644d8ecdfc2e:Number;
      
      private var _61cb419b87c1f78207427b32:Number;
      
      private const _d133f109f597160430a30b40:Number = 0.1;
      
      private var _0d3a61079636e75866ec017c:int = 2147483647;
      
      private var _b6fa67e0803623f6c5787e76:Number = 1;
      
      public function _5f81675c98bd9838649ed3bd(param1:Sound, param2:_e302725905f9afa2e120c8b6, param3:Object = null)
      {
         super();
         this._a0efab487c0305f4c7f1ec98 = param1;
         this._d196cd4f9892e22663995f62 = param2;
         if(param3 != null)
         {
            if(param3.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勉刾勷剄刟勓剧劎剂勝刳勷劎剌刃劻刨劊","剛劜刈剋劗勇力勂勯勅剝剎募前劾剤")))
            {
               this._0d3a61079636e75866ec017c = param3.loops;
            }
            if(param3.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃揑掵挔掑捾掘揣援揝捏挢挙挌揈捷捂掽掭捱","挥捾捆掂揙捝揔掂挓捑挷捶挙挽挽排")))
            {
               this._b6fa67e0803623f6c5787e76 = param3.volume;
            }
         }
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = -291932809 ^ 0x5B9C2067 ^ -580633276 ^ 0x68616855;
         }
         this._35a8e1c7dcf397a47063c0d6 = param3;
         this._04ec583726d8644d8ecdfc2e = this._35a8e1c7dcf397a47063c0d6.volume;
         this._61cb419b87c1f78207427b32 = 0x3406DFE2 ^ -454395365 ^ -1509290349 ^ 0x76E6AB6A;
         this._a392975ed8ba342b091dd070 = true;
         return null;
      }
      
      public function stop() : void
      {
         this._78e79add3f3761c6e0a3617a();
      }
      
      private function _78e79add3f3761c6e0a3617a() : void
      {
         var _loc1_:int = -493740175 ^ -1671357446 ^ 0x6A662F20 ^ 0x2E893138;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2122178967 ^ -1482300847 ^ -1027066171 ^ -554446740))
            {
               case 0:
                  this._643fa937d27c497c9408bc49.stop();
                  this._643fa937d27c497c9408bc49.removeEventListener(Event.SOUND_COMPLETE,this._3464cb443d3a7097aec2e7d2);
                  this._a392975ed8ba342b091dd070 = false;
                  this._643fa937d27c497c9408bc49 = null;
                  _loc1_ = -1437231229 ^ 0x51D80FB8 ^ -247733794 ^ 0x30AA6375;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._643fa937d27c497c9408bc49)
                  {
                     _loc1_ = -1517378997 ^ -713103546 ^ 0x76E2A8B5 ^ 0x3C0EF729;
                  }
                  else
                  {
                     _loc1_ = 0x4A5F7149 ^ -2068611741 ^ 0x336D1F3F ^ -946009723;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set volume(param1:Number) : void
      {
         this._04ec583726d8644d8ecdfc2e = param1;
         var _loc2_:Number = this._04ec583726d8644d8ecdfc2e * this._61cb419b87c1f78207427b32 * this._b6fa67e0803623f6c5787e76;
         if(_loc2_ > this._d133f109f597160430a30b40)
         {
            if(this._643fa937d27c497c9408bc49 == null)
            {
               this._35a8e1c7dcf397a47063c0d6.volume = _loc2_;
               this._643fa937d27c497c9408bc49 = this._a0efab487c0305f4c7f1ec98.play(-291318586 ^ -326368278 ^ 0x3D267062 ^ 0x3F08A74E,this._0d3a61079636e75866ec017c,this._35a8e1c7dcf397a47063c0d6);
               if(this._643fa937d27c497c9408bc49 != null)
               {
                  this._643fa937d27c497c9408bc49.addEventListener(Event.SOUND_COMPLETE,this._3464cb443d3a7097aec2e7d2,false,0x1C7F18BE ^ -1114415278 ^ -696737533 ^ 0x7794E6EF,true);
               }
            }
            else
            {
               this._35a8e1c7dcf397a47063c0d6 = this._643fa937d27c497c9408bc49.soundTransform;
               this._35a8e1c7dcf397a47063c0d6.volume = _loc2_;
               this._643fa937d27c497c9408bc49.soundTransform = this._35a8e1c7dcf397a47063c0d6;
            }
         }
         else if(this._643fa937d27c497c9408bc49 != null)
         {
            this._643fa937d27c497c9408bc49.stop();
            this._643fa937d27c497c9408bc49.removeEventListener(Event.SOUND_COMPLETE,this._3464cb443d3a7097aec2e7d2);
            this._643fa937d27c497c9408bc49 = null;
         }
      }
      
      public function get volume() : Number
      {
         var _loc1_:int = -429787632 ^ -926521652 ^ 0x1DFE62 ^ 0x55A6F05A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1904625304 ^ 0x300667B4 ^ -1240625405 ^ 0x736ECF39))
            {
               case 0:
                  return this._35a8e1c7dcf397a47063c0d6.volume;
               case 1:
                  return 0x75CD53A0 ^ 0x3331C109 ^ -1738767410 ^ -559935129;
               case 2:
                  if(this._35a8e1c7dcf397a47063c0d6)
                  {
                     _loc1_ = 0x57EA0365 ^ -1028849250 ^ 0x0667AA04 ^ -398707175;
                  }
                  else
                  {
                     _loc1_ = -909425279 ^ -1205813979 ^ -435602473 ^ -318874220;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set distanceVolume(param1:Number) : void
      {
         this._61cb419b87c1f78207427b32 = param1;
         this.volume = this._04ec583726d8644d8ecdfc2e;
      }
      
      public function get soundChannel() : SoundChannel
      {
         return this._643fa937d27c497c9408bc49;
      }
      
      private function _3464cb443d3a7097aec2e7d2(param1:Event) : void
      {
         param1.target.removeEventListener(Event.SOUND_COMPLETE,this._3464cb443d3a7097aec2e7d2);
         dispatchEvent(param1);
      }
      
      public function set globalVolume(param1:Number) : void
      {
         this._04ec583726d8644d8ecdfc2e = param1;
      }
   }
}


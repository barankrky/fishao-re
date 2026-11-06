package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations._c36d2d5bdf0600686d3429c2;
   import com.inkora.easing.Exponential;
   import com.inkora.tween.TweenCube;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class _76cc66038078babc64dad3fa extends Sound implements _c36d2d5bdf0600686d3429c2
   {
      
      private var _2d0f83c0581a8ba1247b5ac2:Sound;
      
      private var _7f10fd65d64635a2785616d1:_e302725905f9afa2e120c8b6;
      
      private var _632584f4fe635886da859798:Boolean = false;
      
      private var _3ccb536a5a00ca74475fca40:SoundChannel;
      
      public function _76cc66038078babc64dad3fa(param1:Sound, param2:_e302725905f9afa2e120c8b6, param3:Object = null)
      {
         super();
         this._2d0f83c0581a8ba1247b5ac2 = param1;
         this._7f10fd65d64635a2785616d1 = param2;
         this._2d0f83c0581a8ba1247b5ac2.addEventListener(Event.COMPLETE,this.onComplete);
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
         param3.volume = -803523896 ^ -35039127 ^ 0x3641 ^ 0x2DF25CE0;
         TweenCube.destroyTweensOf(this,false);
         if(this._3ccb536a5a00ca74475fca40 != null)
         {
            this._e9d81143eb726fea13d2ff5f();
         }
         this._632584f4fe635886da859798 = true;
         this._3ccb536a5a00ca74475fca40 = this._2d0f83c0581a8ba1247b5ac2.play(param1,param2,param3);
         TweenCube.to(this,-315993552 ^ -1729155021 ^ 0x0D4E373B ^ 0x788B553E,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჵ႕ႋြ၄၎ხံႥწခუႲၬზၢ჋ွ၉ჽၧႚჵႉშဍၺၰ၃်კၙတဧ","ႧႎႺၓ၂ႾႇჲႢთႯၑူლ၇ွ")):this._7f10fd65d64635a2785616d1._5f641a6684a8d54b7a77b160(_3a8a2602dcf9bf49b62e62af.GROUP_BACKGROUND_MUSIC)},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("插挎揪插掠捿換掝揰掞捣挨揝掂挧捋","揙挰捕揦揟挙捌挋捚挸挥捛捞掏捽挤")):Exponential.easeIn});
         return this._3ccb536a5a00ca74475fca40;
      }
      
      public function stop() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,-1169713915 ^ -552706236 ^ -2120229242 ^ -455732028,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揝掴挫授掴挾掳掯揸挭挏挅掶揲掌掛挢捲挏措捐捏捜挗捥掂挈捲按挱提按挠捊","揯捴揣揶掔挑挱挷描挡揢揋揽揝揪挞")):0x01B4AF5D ^ 0x07342FD5 ^ -1040456825 ^ -948215025},{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勂券前劋列勁剶刦剘励劙刚刍勪剢劕剼刯剁剧劒刄勞刡勵削剪刹","劭剎剗勶刪勿勁勃创剬刈剘剏剆劌勵")):this._e9d81143eb726fea13d2ff5f,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掾揧掽挫掸揊揅挼捻揹援揹捋揹掚授","挒捣挧挘捇捰掇掘掿描挽挠揄挦捙捗")):Exponential.easeOut
         });
         this._632584f4fe635886da859798 = false;
      }
      
      private function _e9d81143eb726fea13d2ff5f() : void
      {
         var _loc1_:int = 0x3C0227D1 ^ -1910539131 ^ 0x62F82969 ^ 0x3A8E1E6E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x64F3F322 ^ 0x059C3223 ^ -2062117015 ^ 0x0E123A3B))
            {
               case 0:
                  if(this._3ccb536a5a00ca74475fca40)
                  {
                     _loc1_ = -1486117524 ^ -1549905057 ^ 0x1CBBCCB1 ^ -232433968;
                  }
                  else
                  {
                     _loc1_ = 0x39EBA3A9 ^ -1569875294 ^ -1071265745 ^ -1312252555;
                  }
                  break;
               case 1:
                  this._3ccb536a5a00ca74475fca40.stop();
                  this._3ccb536a5a00ca74475fca40 = null;
                  this._632584f4fe635886da859798 = false;
                  _loc1_ = 0x7D5149D1 ^ -65813331 ^ 0x1A4B7912 ^ 0x7162983F;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get soundChannel() : SoundChannel
      {
         return this._3ccb536a5a00ca74475fca40;
      }
      
      public function get soundTransform() : SoundTransform
      {
         return this._3ccb536a5a00ca74475fca40 ? this._3ccb536a5a00ca74475fca40.soundTransform : null;
      }
      
      public function set volume(param1:Number) : void
      {
         TweenCube.destroyTweensOf(this,false);
         this.channelVolume = param1;
      }
      
      public function set channelVolume(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(this._3ccb536a5a00ca74475fca40)
         {
            _loc2_ = this._3ccb536a5a00ca74475fca40.soundTransform;
            _loc2_.volume = param1;
            this._3ccb536a5a00ca74475fca40.soundTransform = _loc2_;
         }
      }
      
      public function get channelVolume() : Number
      {
         return this.volume;
      }
      
      public function get volume() : Number
      {
         var _loc1_:int = 0x2AFD30CA ^ 0x293D8A84 ^ -575362176 ^ 0x2952F87B;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1947639394 ^ -175092259 ^ -135144122 ^ 0x7EAE18B2))
            {
               case 0:
                  return this._3ccb536a5a00ca74475fca40.soundTransform.volume;
               case 1:
                  return -514197885 ^ -208629190 ^ -560591930 ^ -866160769;
               case 2:
                  if(this._3ccb536a5a00ca74475fca40)
                  {
                     _loc1_ = 0x0E22A815 ^ 0x59A56181 ^ -1889526863 ^ 0x2FC13B92;
                  }
                  else
                  {
                     _loc1_ = -1820058641 ^ -1078072746 ^ 0x34000751 ^ -283173026;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         this._2d0f83c0581a8ba1247b5ac2 = null;
      }
   }
}


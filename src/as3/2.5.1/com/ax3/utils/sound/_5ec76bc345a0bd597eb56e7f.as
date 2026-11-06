package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.utils.math.randomRange;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class _5ec76bc345a0bd597eb56e7f extends _5f81675c98bd9838649ed3bd
   {
      
      private var _bb336fecb9b00b9c674e7ba1:Boolean = false;
      
      private var _56ad5597ce197ab717e31c66:_e302725905f9afa2e120c8b6;
      
      private var _4b93971e36ed0f13592da7cb:SoundChannel;
      
      private var _d012d99e942eb39d589b9812:SoundTransform;
      
      private var _d22be8ed20db147b871b4f15:int = 240;
      
      private var _9a57e380cf58b2be5101e333:int;
      
      private var _bfe30dab5d15d15474fc31f6:int;
      
      private var _1f7ee7782f273fa34e9666ef:Number;
      
      private var _eb32e7bfc53b70be78ff3606:Number;
      
      private const _a8944b423c43ff9ac00fd95f:Number = 0.1;
      
      private var _5feb6f083d4cb4f504f5fa24:int = 2147483647;
      
      private var _2b37620d04062ea9ee83f04d:Vector.<Sound> = new Vector.<Sound>();
      
      public function _5ec76bc345a0bd597eb56e7f(param1:Sound, param2:_e302725905f9afa2e120c8b6, param3:Object = null)
      {
         var _loc4_:_c5aa52fca149ae6f0be6dc5b = null;
         super(null,null);
         this._56ad5597ce197ab717e31c66 = param2;
         if(param3.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捇提提捗挺挟挑掚揑揋控捫掁掃掑揗揑损揑掵","揯揭揠据掋挢接捩挞挈推挿挧掟挑挥")))
         {
            for each(_loc4_ in param3.sounds)
            {
               param1 = this._56ad5597ce197ab717e31c66._b87ca74bd9516206cbc6cc47(_loc4_);
               this._2b37620d04062ea9ee83f04d.push(param1);
            }
         }
         if(param3 != null && param3.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剋剷劐创剟刵剑勤剕劆剦刄勪則剆劫刦剱","剶勫勬剓励功刨剹勉判勪勧剮劋剜剆")))
         {
            this._5feb6f083d4cb4f504f5fa24 = param3.loops;
         }
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = 0x7C34FAD4 ^ -1068294824 ^ -458151256 ^ 0x58D6CD25;
         }
         this._d012d99e942eb39d589b9812 = param3;
         this._1f7ee7782f273fa34e9666ef = this._d012d99e942eb39d589b9812.volume;
         this._eb32e7bfc53b70be78ff3606 = 0x31CA14E3 ^ 0x4729C1BC ^ 0x7EF78257 ^ 0x08145708;
         this._bb336fecb9b00b9c674e7ba1 = true;
         this.volume = this._1f7ee7782f273fa34e9666ef;
         return null;
      }
      
      override public function stop() : void
      {
         this._35bb3dfb44463c36e1f57e51();
      }
      
      private function _35bb3dfb44463c36e1f57e51() : void
      {
         var _loc1_:int = 0x45238E83 ^ -15989600 ^ 0x402E25CC ^ -2145966177;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1579006586 ^ 0x0ECF4F1D ^ -252442045 ^ 0x25CF88A8))
            {
               case 0:
                  if(this._4b93971e36ed0f13592da7cb)
                  {
                     _loc1_ = -564251584 ^ -309873670 ^ -178268079 ^ -1131358310;
                  }
                  else
                  {
                     _loc1_ = -691651816 ^ -854158776 ^ 0x46568EA6 ^ 0x2790AF84;
                  }
                  break;
               case 1:
                  this._4b93971e36ed0f13592da7cb.stop();
                  this._4b93971e36ed0f13592da7cb.removeEventListener(Event.SOUND_COMPLETE,this._d01906ae17bf057390ed6ea4);
                  this._bb336fecb9b00b9c674e7ba1 = false;
                  this._4b93971e36ed0f13592da7cb = null;
                  _loc1_ = -660773738 ^ 0x7D3FBF2B ^ -1493313303 ^ 0x79498B26;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function set volume(param1:Number) : void
      {
         var _loc2_:Sound = null;
         this._1f7ee7782f273fa34e9666ef = param1;
         if(this._1f7ee7782f273fa34e9666ef * this._eb32e7bfc53b70be78ff3606 > this._a8944b423c43ff9ac00fd95f)
         {
            if(this._4b93971e36ed0f13592da7cb == null)
            {
               this._d012d99e942eb39d589b9812.volume = this._eb32e7bfc53b70be78ff3606 * this._1f7ee7782f273fa34e9666ef;
               _loc2_ = this._f3607817d2066e16284029d0();
               this._4b93971e36ed0f13592da7cb = _loc2_.play(0x7DAC6C96 ^ -1806068127 ^ 0x4200FF87 ^ -1410005648,this._5feb6f083d4cb4f504f5fa24,this._d012d99e942eb39d589b9812);
               this._4b93971e36ed0f13592da7cb.addEventListener(Event.SOUND_COMPLETE,this._d01906ae17bf057390ed6ea4,false,0x4BC820A7 ^ 0x239D97B9 ^ 0x58FBE604 ^ 0x30AE511A,true);
            }
            else
            {
               this._d012d99e942eb39d589b9812 = this._4b93971e36ed0f13592da7cb.soundTransform;
               this._d012d99e942eb39d589b9812.volume = this._eb32e7bfc53b70be78ff3606 * this._1f7ee7782f273fa34e9666ef;
               this._4b93971e36ed0f13592da7cb.soundTransform = this._d012d99e942eb39d589b9812;
            }
         }
         else if(this._4b93971e36ed0f13592da7cb != null)
         {
            this._4b93971e36ed0f13592da7cb.stop();
            this._4b93971e36ed0f13592da7cb.removeEventListener(Event.SOUND_COMPLETE,this._d01906ae17bf057390ed6ea4);
            this._4b93971e36ed0f13592da7cb = null;
         }
      }
      
      private function _f3607817d2066e16284029d0() : Sound
      {
         return this._2b37620d04062ea9ee83f04d[randomRange(-1500644418 ^ -423501 ^ -1841566888 ^ -883975851,this._2b37620d04062ea9ee83f04d.length - 1)];
      }
      
      override public function get volume() : Number
      {
         var _loc1_:int = 0x4BF61D81 ^ 0x0FD2F0AE ^ 0x38C46AFC ^ -1852806002;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-342407370 ^ 0x4C17B8F1 ^ 0x78D591A4 ^ 0x3225853F))
            {
               case 0:
                  return -1820296412 ^ -1464103335 ^ -251971403 ^ -876556856;
               case 1:
                  if(this._d012d99e942eb39d589b9812)
                  {
                     _loc1_ = -1893436265 ^ 0x6B55BCAF ^ -1065670910 ^ -914750364;
                  }
                  else
                  {
                     _loc1_ = 0x5C25AC5E ^ 0x5BEFD41E ^ -1600605808 ^ 0x4A22228C;
                  }
                  break;
               case 2:
                  return this._d012d99e942eb39d589b9812.volume;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function set distanceVolume(param1:Number) : void
      {
         this._eb32e7bfc53b70be78ff3606 = param1;
         this.volume = this._1f7ee7782f273fa34e9666ef;
      }
      
      override public function get soundChannel() : SoundChannel
      {
         return this._4b93971e36ed0f13592da7cb;
      }
      
      private function _d01906ae17bf057390ed6ea4(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.SOUND_COMPLETE,this._d01906ae17bf057390ed6ea4);
         dispatchEvent(param1);
      }
   }
}


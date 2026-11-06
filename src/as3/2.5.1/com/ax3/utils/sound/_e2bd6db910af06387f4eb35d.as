package com.ax3.utils.sound
{
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class _e2bd6db910af06387f4eb35d extends Sound implements _69eec7d2f73604da25ccda04
   {
      
      private var _4d05bb5abcf7e99f3e13b7ea:Boolean = false;
      
      private var _0888d32e70293ee59e2e3099:Vector.<Sound>;
      
      private var _59e5088d87fd1f8f752f4c21:uint = 0;
      
      private var _0603ecda10cfc793cb25734d:_e302725905f9afa2e120c8b6;
      
      private var _e3b8c64ff510b25574475643:int = -1;
      
      private var _691873809b7b49f287db6ffb:SoundChannel;
      
      private var _24e1f6ba71a2420c688c4398:SoundTransform;
      
      private var _5108afe1a0081a6d861334d4:int = 240;
      
      private var _413877637e72e59416004456:int;
      
      private var _1031752b13ce9dd6e6274677:int;
      
      private var _ecbb08a220952998fa9b9a91:int;
      
      private var _6ccee288cb9149d6154fd199:Number;
      
      private var _225943ea703f1f5994f49531:Number;
      
      public function _e2bd6db910af06387f4eb35d(param1:Sound, param2:_e302725905f9afa2e120c8b6, param3:Object = null)
      {
         var _loc4_:_c5aa52fca149ae6f0be6dc5b = null;
         super();
         this._0603ecda10cfc793cb25734d = param2;
         this._0888d32e70293ee59e2e3099 = new Vector.<Sound>();
         for each(_loc4_ in param3.sounds)
         {
            param1 = this._0603ecda10cfc793cb25734d._b87ca74bd9516206cbc6cc47(_loc4_);
            this._0888d32e70293ee59e2e3099.push(param1);
         }
         this._59e5088d87fd1f8f752f4c21 = this._0888d32e70293ee59e2e3099.length;
         this._1031752b13ce9dd6e6274677 = param3.appearMinMS;
         this._ecbb08a220952998fa9b9a91 = param3.appearMaxMS;
         this._6ccee288cb9149d6154fd199 = param3.volumeMim;
         this._225943ea703f1f5994f49531 = param3.volumeMax;
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = 0xECFDF6 ^ -1820795190 ^ -2051858215 ^ 0x162703E4;
         }
         this._24e1f6ba71a2420c688c4398 = param3;
         this._5108afe1a0081a6d861334d4 = randomRange(this._1031752b13ce9dd6e6274677,this._ecbb08a220952998fa9b9a91);
         this._413877637e72e59416004456 = getTimer();
         this._4d05bb5abcf7e99f3e13b7ea = true;
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
         return null;
      }
      
      private function _0447cd36cfde60c97304c30a() : void
      {
         var _loc1_:int = -1114599147 ^ 0x5D45089A ^ 0x4262365D ^ -1565020206;
         var _loc2_:int = -549638001 ^ -1137577069 ^ 0x11B325 ^ -1578649012;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x11996B15 ^ 0x6227A46E ^ -1482905646 ^ 0x16D8A2DC))
            {
               case 0:
                  _loc1_ = 0x514B3F83 ^ -158275648 ^ -1036777047 ^ 0x65EFD1EA;
                  if(this._59e5088d87fd1f8f752f4c21 > (0x1C4B1711 ^ 0x5668FFAA ^ 0x2D77022B ^ 0x6754EA91))
                  {
                     _loc2_ = -839968918 ^ -1892063264 ^ 0x705DD6C1 ^ -261002177;
                  }
                  else
                  {
                     _loc2_ = -994440052 ^ 0x0E25A86F ^ 0x7B3AE911 ^ 0x735F8783;
                  }
                  break;
               case 1:
                  _loc2_ = -36706816 ^ 0x4B39218C ^ 0x5C11AF56 ^ 0x281DA2AD;
                  break;
               case 2:
                  _loc1_ = randomRange(-607754321 ^ -1380023031 ^ -1247127698 ^ -1009601080,this._0888d32e70293ee59e2e3099.length - 1);
                  if(_loc1_ != this._e3b8c64ff510b25574475643)
                  {
                     _loc2_ = 0x1A4B84FE ^ 0x41BAC478 ^ -205713327 ^ 0x6AB69AA6;
                  }
                  else
                  {
                     _loc2_ = 0x3C59D408 ^ 0x102F36E5 ^ -1213577595 ^ 0x59266E1E;
                  }
                  break;
               case 3:
                  _loc2_ = 0x038FE257 ^ 0x51CBE156 ^ -889228578 ^ 0x5A41BBA8;
                  break;
               case 4:
                  this._e3b8c64ff510b25574475643 = _loc1_;
                  this._413877637e72e59416004456 = getTimer();
                  this._24e1f6ba71a2420c688c4398.volume *= randomRange(this._6ccee288cb9149d6154fd199 * (0x1134BD7E ^ -1951420542 ^ -435583102 ^ 0x7C92951A),this._225943ea703f1f5994f49531 * (-502377815 ^ -865784745 ^ -1105247713 ^ -1871430523)) / (-1425068411 ^ 0x01AD3C5E ^ -609416412 ^ 0x710F199B);
                  this._24e1f6ba71a2420c688c4398.pan = randomRange(0x787C5A5D ^ 0x1148A206 ^ -1696055913 ^ 0x0C233A50,0x317B9E84 ^ -539387635 ^ 0x39098057 ^ -676624454) / (0x68772C56 ^ -901827647 ^ 0x5D5BF9BD ^ -15473074);
                  var _temp_3:* = this;
                  var _temp_2:* = this._0888d32e70293ee59e2e3099[this._e3b8c64ff510b25574475643];
                  var _temp_1:* = -297093936 ^ 0x6933DA53 ^ -260807411 ^ 0x770D0B8E;
                  _temp_3._691873809b7b49f287db6ffb = _temp_2.play(_temp_1,_temp_1,this._24e1f6ba71a2420c688c4398);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function stop() : void
      {
         this._4d05bb5abcf7e99f3e13b7ea = false;
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
         this._470e09c58b94d965d479cf76();
      }
      
      private function _470e09c58b94d965d479cf76() : void
      {
         var _loc1_:int = -1746995353 ^ 0x6323D4F1 ^ 0x3C443E7B ^ -1078116562;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x59DB637D ^ 0x7A37CA9F ^ 0x5F6901FA ^ 0x0B818ADA))
            {
               case 0:
                  return;
               case 1:
                  if(this._691873809b7b49f287db6ffb)
                  {
                     _loc1_ = -1392872232 ^ 0x78148707 ^ 0x3B432E9B ^ -1733689468;
                  }
                  else
                  {
                     _loc1_ = 0x0DC1F7BE ^ -1825373930 ^ -518162113 ^ 0x08EBAD55;
                  }
                  break;
               case 2:
                  this._691873809b7b49f287db6ffb.stop();
                  this._4d05bb5abcf7e99f3e13b7ea = false;
                  _loc1_ = 0x5B71801C ^ -1146861014 ^ 0x013F436E ^ -1762743398;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:int = 0x5A91C4E0 ^ -529500802 ^ -954448784 ^ -172708483;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1182563573 ^ -1824756586 ^ 0x2B5CAFDA ^ -1985341226))
            {
               case 0:
                  this._24e1f6ba71a2420c688c4398 = this._691873809b7b49f287db6ffb.soundTransform;
                  this._24e1f6ba71a2420c688c4398.volume = param1;
                  this._691873809b7b49f287db6ffb.soundTransform = this._24e1f6ba71a2420c688c4398;
                  _loc2_ = 0x0369ECF7 ^ 0x3F9FA85D ^ 0x08C6D80F ^ -1132870603;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._691873809b7b49f287db6ffb)
                  {
                     _loc2_ = -1588249439 ^ 0x0CFE7FD2 ^ -1954842733 ^ -1365676943;
                  }
                  else
                  {
                     _loc2_ = -1022378733 ^ -534239423 ^ 0x36FB9E7E ^ -1651155780;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get volume() : Number
      {
         var _loc1_:int = 0x47FD5D53 ^ -777466063 ^ 0x5FA047AC ^ -1774210026;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-891736496 ^ -951448706 ^ 0x6BA01721 ^ 0x39F953D7))
            {
               case 0:
                  if(this._24e1f6ba71a2420c688c4398)
                  {
                     _loc1_ = 0x7F848AE6 ^ 0x766CD2E9 ^ -763233013 ^ -2069642018;
                  }
                  else
                  {
                     _loc1_ = 0x40BF6754 ^ -1119217160 ^ 0x4E914AD5 ^ -324119136;
                  }
                  break;
               case 1:
                  return -59177001 ^ 0x7F78435D ^ 0x06F1FC25 ^ -2047821649;
               case 2:
                  return this._24e1f6ba71a2420c688c4398.volume;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = -104170353 ^ -1409754941 ^ -553416984 ^ -1921453483;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x5D5FD149 ^ 0x30B006A8 ^ 0x63F93FCB ^ 0x0E5F38DB))
            {
               case 0:
                  if(param1 - this._413877637e72e59416004456 >= this._5108afe1a0081a6d861334d4)
                  {
                     _loc3_ = -1465964906 ^ -2142591158 ^ -87426835 ^ -766137919;
                  }
                  else
                  {
                     _loc3_ = 0x505792C7 ^ 0x57376CA5 ^ -1141001605 ^ -1126916886;
                  }
                  break;
               case 1:
                  this._0447cd36cfde60c97304c30a();
                  _loc3_ = 0x7C1FD1EE ^ -339359985 ^ -1455415197 ^ 0x3ED3E671;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _4ad17bb5b4f2ae0ae338f46b(param1:Object, param2:Number) : void
      {
      }
   }
}


package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.inkora.sound.SoundEx;
   import com.inkora.tween.TweenCube;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   
   public class _6bdbc49598695e4865b2d01d extends SoundEx
   {
      
      public function _6bdbc49598695e4865b2d01d(param1:URLRequest = null, param2:SoundLoaderContext = null)
      {
         super(param1,param2);
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
         }
         param3.volume = -800691845 ^ -367185441 ^ 0x0ECC256B ^ 0x34977DCF;
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,0x3B7429B9 ^ 0x1B97EBDA ^ 0x03B070B3 ^ 0x2353B2D3,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠刺删剝创刹剡剔劒劐勘剷剄剞分劻刉刕制剆","劰剪勬刷勧创剤勚劬刡刋勝刿刡刷劥")):0x4A461A1A ^ -1189695390 ^ -1479766535 ^ 0x549C2780});
         return super.play(param1,param2,param3);
      }
      
      override public function stop() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,-68486997 ^ 0x4A5520F7 ^ 0x2D64F022 ^ -1663358852,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚掐挚挖挲援捍揿损授捁捉換揷捥掭揅推捌挱","挴捍措挋掑掘掂捱捦掭据挩捛掞掫挈")):0x10A09AA7 ^ -2082650701 ^ 0x15C90A8D ^ -2034969191},{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劅勅刳刁労勖勆剔劆勜剤剬刅勺勐剦刢励勞劸刳劵划刲勉劭剫剎","刘剓劅勫勊創功勸刀勋勡剜劯剷列刉")):super.stop});
      }
   }
}


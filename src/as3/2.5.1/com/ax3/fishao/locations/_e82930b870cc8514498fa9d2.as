package com.ax3.fishao.locations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class _e82930b870cc8514498fa9d2 extends Bitmap
   {
      
      public var position:Point;
      
      public function _e82930b870cc8514498fa9d2()
      {
         super();
      }
      
      public function add() : void
      {
         TweenCube.from(this,-2079093386 ^ -1598724634 ^ 0x17F2E671 ^ 0x33540EE0,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხჿ჈႖Ⴉ၄ႯဿႽ့ၳိ၇႐ု႟ဣသ","ၶႿဵႦპၪဦ၉႞၉ჍჿဌီဆႻ")):-1589801312 ^ 0x58A04056 ^ -1385944618 ^ 0x54F9E720,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆဦჾဇჺႚ႟წယ၎","გ၊႗၎ၕჂႏၺွႩၰၗဉခလဋ")):y - (0x58E54E78 ^ -1920635104 ^ -357023922 ^ 0x3FD81E02)
         },{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勂勌剳刐剿勯勱刄勝刁到劸刞劳剏劍","勬分勶力劥剔刻劅割劯券刖劜剠剒刃")):Cubic.easeOut});
      }
      
      public function remove() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,0x552EE4B9 ^ 0x6AA79A4A ^ -1673705870 ^ -1548470144,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掆掃掿掎掃掊挑掭揿揂捸掝揮揃挌捯揥掞","揮揆挻捠揭揤揈捑挨捹掴挝揀挫揣掔")):-1201940036 ^ 0x4579BC7F ^ 0x75A68FCF ^ -2004555252,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ერჇနႅჼႊၔါၙ","ဏမჄဃၙႋႏၱဗ႔ဇუႦၷ႟ၹ")):y - (0x357A28C5 ^ -1820249406 ^ 0x75623294 ^ -744937337)
         },{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏Ⴝჶ჋ၰႃႶႽჷႭတအၱჴႰၾၖညဪ႖ဋဇ႔ၗဣჾဢႯ","၍ညჟေჴၿჳ၅ႜ၃၍ჶႍႷႛ၎")):this.destroy,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揇捍握挭掣揧掋排掝捴挊揍控揭掊揘","掛掆掣捯措捪捘挘揫掭揯揣掾掸捹掹")):Cubic.easeOut
         });
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -2075361043 ^ 0x7FE29B41 ^ -771110950 ^ -1080620066;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1356545996 ^ -417403676 ^ -1952429252 ^ 0x55AAB045))
            {
               case 0:
                  return;
               case 1:
                  if(this.parent != null)
                  {
                     _loc1_ = -1995546212 ^ -116164824 ^ 0x1B92A64C ^ -37787821;
                  }
                  else
                  {
                     _loc1_ = 0x2055DC7A ^ -2103340234 ^ -1461423828 ^ -1675564599;
                  }
                  break;
               case 2:
                  this.parent.removeChild(this);
                  _loc1_ = -1092767265 ^ -2118090717 ^ -2076201166 ^ 0x2D124967;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


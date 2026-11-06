package com.ax3.fishao.locations
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.geom.Point;
   
   public class _7cc6184a6a6df90ac01c6c08 extends gViewFishcoin
   {
      
      private var _be8508bedececa216e404273:Point;
      
      public function _7cc6184a6a6df90ac01c6c08(param1:Point)
      {
         super();
         scaleX = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刡动刘劧劶勴劧労劃刢勆勨剀剤勰剎列剽勬勔剱勄刉劒","劒勮剴削勪刡刿剈刐劧創剚剅劧勧刔");
         scaleY = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揄掋捏捃挀捱排挽揉揣捓据揳掳捾挹掵揮捸挃揤挋揓捽","掏挑揳掆挼挼掛揞捭捣捗揳掳捊掖揉");
         mouseEnabled = false;
         mouseChildren = false;
         this._be8508bedececa216e404273 = Debug.assertNotEqual(param1,null);
         this.x = this._be8508bedececa216e404273.x;
         this.y = this._be8508bedececa216e404273.y;
      }
      
      public function get position() : Point
      {
         return this._be8508bedececa216e404273;
      }
      
      public function add() : void
      {
         TweenCube.from(this,0x113912B4 ^ -962162839 ^ -1759158791 ^ 0x40BAC025,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဵჁჅႡცთხတၸႶჟၨႰဴၴၗဘႏ","ၢჸႰძႽპဓနლფဇုႎჅწჼ")):-1422340393 ^ -147883522 ^ 0x499DA52C ^ 0x158A1205,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("制削剖刱刺剒刧划剒別","劧劔刔勎刑勫剸剚勧勪勗办効剙劌剡")):y - (0x2A217E6B ^ 0x4E3DD074 ^ 0x48C9D680 ^ 0x2CD5788B)
         },{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ယ၂ბၢ၍ဟჭძბუူႰჅတပჽ","ၹჱჾတვჹ၉ဧႁჶွႡၤးယႪ")):Cubic.easeOut});
      }
      
      public function remove() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,-603485365 ^ 0x7D64485F ^ -481054997 ^ 0x42306DFE,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤指捴挢揸掘损挅挃挳捖掼揃揚掊掓揇挠","掌揯挞捽捑掻揽捁捕捉揉揥挪捐挍捠")):0x40AE7B52 ^ -468166256 ^ -1027833979 ^ 0x660A5D47,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勺劤劄剡劢剏制剿勖勌","劐刟务勶劜剨剢剿劵勫劊动勾勜剤到")):y - (0x1ABE74B6 ^ 0x56BCDB78 ^ 0x556287D4 ^ 0x19602832)
         },{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔ၷჾეჄကၸ႖Ⴑპၞ႘ၩ၆ႢႍေႻႼწာၴჩႫႽცჯႽ","ံဍႾჭჂအႃႨყო႓ჺႚჺ჋၂")):this.destroy,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၊ၧ၀႖ჳႃႠჁမ႐ჅဆႩၑၥႇ","ლၶဢრဪာၨဘနႸႨႠၗ჌ဤ႙")):Cubic.easeOut
         });
      }
      
      public function destroy() : void
      {
         var _loc1_:int = 0x33A71867 ^ 0x75C76EC9 ^ -1534934826 ^ 0x477CE60C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x17E08F51 ^ 0x7FA65D0E ^ -842563145 ^ 0x1F039C))
            {
               case 0:
                  if(this.parent != null)
                  {
                     _loc1_ = 0x4E73A24E ^ 0x14188A5C ^ 0x28527086 ^ -676919070;
                  }
                  else
                  {
                     _loc1_ = 0x6AF09C21 ^ -418675426 ^ -1555850718 ^ -1960389784;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.parent.removeChild(this);
                  _loc1_ = -749368905 ^ 0x026D1439 ^ -1861937796 ^ -442247033;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


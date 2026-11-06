package com.ax3.fishao.locations
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.Fishbox;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.geom.Point;
   
   public class _85158387221dcd7a44602d59 extends Fishbox
   {
      
      public var position:Point;
      
      public function _85158387221dcd7a44602d59()
      {
         super();
         gotoAndStop(-658621518 ^ 0x14605814 ^ -1920451843 ^ 0x4156595A);
      }
      
      public function add() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,0x2469ADE3 ^ -1877717077 ^ 0x02821FED ^ -1224737372,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("利刼勀剂劂劦劓勖励剨剷刵勁剥劶劔刼努","剧剺刍勲剔刊剘勎刎剡刓剗剐割劲勻")):-1324485190 ^ -47883996 ^ 0x158C21EF ^ 0x59A48D6F},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥუဳ႖Ⴜ၇Ⴛ္လနდჇၼ႙Ⴄၸ","Ⴝဖ်ၙဤ႟გბ჋ၻ჏ႈႋჽဩႈ")):Cubic.easeOut});
      }
      
      public function remove() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,0x629A65 ^ 0x02125176 ^ 0x64CF035F ^ 0x66BFC84D,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劮勴刚删勋勖剉劝刳劐勌刂剂刿勤劏劣勝","刚刽刑刃勘剴勶划勻劦劬刲劦勔刄剶")):-325106702 ^ 0x18A5F945 ^ 0x5F1E1C8C ^ -1423661561},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၥႶ၍Ⴕၷႊိ၃ၚကჼႎ၃ႚ჊း","ჹჽဧၿგ၏ჭၯၤညဏგ၂ႜ႘႞")):Cubic.easeOut});
      }
      
      private function destroy() : void
      {
         var _loc1_:int = 0x7DF46FED ^ 0x32B2DBE6 ^ -1195210817 ^ -1274566872;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x03BC689D ^ 0x545F1E34 ^ 0x2E489344 ^ 0x3A287173))
            {
               case 0:
                  this.parent.removeChild(this);
                  _loc1_ = -997300539 ^ -1002430690 ^ -1675893817 ^ -548008317;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.parent != null)
                  {
                     _loc1_ = 0x2CFCE10C ^ 0x604AB386 ^ 0x3A2A53DD ^ 0x351F95C9;
                  }
                  else
                  {
                     _loc1_ = -1129867427 ^ -580921571 ^ -126588257 ^ -636502464;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get frame() : int
      {
         return this.currentFrame;
      }
      
      public function set frame(param1:int) : void
      {
         gotoAndStop(param1);
      }
   }
}


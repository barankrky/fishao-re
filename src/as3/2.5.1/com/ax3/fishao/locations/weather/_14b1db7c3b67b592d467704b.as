package com.ax3.fishao.locations.weather
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.inkora.tween.TweenCube;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _14b1db7c3b67b592d467704b extends Sprite
   {
      
      public function _14b1db7c3b67b592d467704b(param1:Object)
      {
         super();
         alpha = -308338818 ^ 0x2C126C05 ^ 0x051FF425 ^ -997030050;
         TweenCube.to(this,0x5F5A154D ^ -26486442 ^ -544751826 ^ 0x7EB67336,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刹勅劶剳劧剅剴勖勧勳劧剗剆勢削剗割剨","列剄剞剴劆劊劋劓劜劏勞勦劢勆剗刿")):0x5B91F561 ^ 0x24E4D9CC ^ 0x40D36112 ^ 0x3FA64DBE});
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         super.scrollRect = param1;
      }
      
      public function destroy() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,-1147578984 ^ 0x47BBF50F ^ 0x148F9D32 ^ -391299674,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱删剡劵刹副刾剛剴剗勇剈刎刃劽刷剉勨","剘勈剞剶劘勽勎劲勛勯刼劘勛剑剗募")):-1570130623 ^ 0x7BEEE2CE ^ 0x7016863A ^ -1450061387},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸ႑့ဟყၽႃႸၧႄၘရစံၷၴ၈ႈစႡႺဨ၎ႳტსှႾ","အႋფეႤჩႵထმ၌္Ⴐ႑ၦსဟ")):this.onComplete});
      }
      
      private function onComplete() : void
      {
         var _loc1_:int = 0x4DD33B58 ^ -1011054743 ^ 0x5D6D8063 ^ -2001407248;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x604A9C7F ^ -1293974054 ^ -577583142 ^ 0x54B110DD))
            {
               case 0:
                  if(this.parent != null)
                  {
                     _loc1_ = 0x253475FA ^ 0x2003F7C5 ^ -1503979549 ^ -119907457;
                  }
                  else
                  {
                     _loc1_ = 0x376A2BD0 ^ -2107528113 ^ -1553630195 ^ 0x4DD83532;
                  }
                  break;
               case 1:
                  this.parent.removeChild(this);
                  _loc1_ = -1949713783 ^ 0x4F9D1677 ^ -790088605 ^ 0x4F0A563D;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


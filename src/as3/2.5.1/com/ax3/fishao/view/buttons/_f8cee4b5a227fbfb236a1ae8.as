package com.ax3.fishao.view.buttons
{
   import com.ax3.display.ui.button.StandardBitmapButtonConfiguration;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   
   public class _f8cee4b5a227fbfb236a1ae8 extends FishaoBaseButton
   {
      
      private var _b9958f454d1c5515612d4524:_c5aa52fca149ae6f0be6dc5b;
      
      private var _58ecc7e9cdf7c97bc3768bc4:_c5aa52fca149ae6f0be6dc5b;
      
      public function _f8cee4b5a227fbfb236a1ae8(param1:StandardBitmapButtonConfiguration = null, param2:Function = null)
      {
         super(param1,param2);
      }
      
      override protected function playClickSound() : void
      {
         var _loc1_:int = -903563202 ^ -1863642813 ^ -973006795 ^ -223584934;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1144563034 ^ 0x74ED0892 ^ 0x5E453384 ^ -15888992))
            {
               case 0:
                  super.playClickSound();
                  _loc1_ = 0x264BA9C5 ^ -1443494334 ^ 0x2478F7EB ^ -978865027;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._b9958f454d1c5515612d4524 != null)
                  {
                     _loc1_ = 0x31CCFF26 ^ 0x12698424 ^ -788056886 ^ -1665096741;
                  }
                  else
                  {
                     _loc1_ = -1848563463 ^ 0x3B3B0F27 ^ 0x12459062 ^ -691184724;
                  }
                  break;
               case 3:
                  _3a8a2602dcf9bf49b62e62af.play(this._b9958f454d1c5515612d4524);
                  _loc1_ = 0x628B8FCC ^ -565010016 ^ 0x54DD9DC3 ^ -2040111170;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function playOverSound() : void
      {
         var _loc1_:int = 0x093148EE ^ 0x1736869A ^ -1160730959 ^ 0x430A21E4;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-330639166 ^ 0x4F434ACB ^ 0x1057C515 ^ 0x54831E3E))
            {
               case 0:
                  super.playOverSound();
                  _loc1_ = 0x65AFC8E1 ^ -1146630135 ^ -391435697 ^ -780239996;
                  break;
               case 1:
                  return;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(this._58ecc7e9cdf7c97bc3768bc4);
                  _loc1_ = -871069747 ^ 0x62CAA34D ^ 0x68E4DA8C ^ 0x21E7B72F;
                  break;
               case 3:
                  if(this._58ecc7e9cdf7c97bc3768bc4 != null)
                  {
                     _loc1_ = 0x1AFFF5D2 ^ 0x4CCF1DA3 ^ -568526471 ^ 0x6FF15828;
                  }
                  else
                  {
                     _loc1_ = -1015109462 ^ 0xA703D4 ^ 0x08809A5E ^ 0x2C847802;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set customClickSound(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         this._b9958f454d1c5515612d4524 = param1;
      }
      
      public function set customOverSound(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         this._58ecc7e9cdf7c97bc3768bc4 = param1;
      }
   }
}


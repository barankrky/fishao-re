package com.ax3.fishao.tutorial.views.panels.bite_panel
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.display.panels._9fd7a7cc8b0e1dff9d3b56e1;
   
   public class _c0bcdb5aa600b06f6b5897a2 extends _9fd7a7cc8b0e1dff9d3b56e1
   {
      
      public function _c0bcdb5aa600b06f6b5897a2()
      {
         super();
      }
      
      override public function set fishSizeCm(param1:Number) : void
      {
         var _loc2_:int = -1454210910 ^ 0x16D9B4AD ^ -861341357 ^ -1731945177;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3D295971 ^ -1546134061 ^ -147027597 ^ -2111480408))
            {
               case 0:
                  if(_fishSizeCm == param1)
                  {
                     _loc2_ = -619775853 ^ -1445771778 ^ 0x2EA958E2 ^ -1215056398;
                  }
                  else
                  {
                     _loc2_ = -1855158288 ^ 0x16FC5C82 ^ 0x4FEBE9B7 ^ 0x239C62BF;
                  }
                  break;
               case 1:
                  super.fishSizeCm = param1;
                  return;
               case 2:
                  if(GameSwf.instance.managerTutorial.isTutorialCommonComplete)
                  {
                     _loc2_ = -1741272766 ^ -2094394972 ^ 0x337D1B80 ^ -1014623458;
                  }
                  else
                  {
                     _loc2_ = -804365356 ^ 0x28F9C724 ^ 0x60D562BE ^ 0x73C5AE37;
                  }
                  break;
               case 3:
                  _fishSizeCm = param1;
                  _fishSizeCmFactor = _fishSizeCm * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("创勥劋刋勬势勛劧勣勾剓劧劮勬勏勗勼刣勭勍勄剪劝剦","劍勰劊刈刾刣勁剫刌勏剭劣剉劆劻刴") * ((-1686534991 ^ -1626047151 ^ -2058606333 ^ -2128490264) + _fishRandom - _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揰捻挂挟掱挢掕揭揝捖捝措捬揑揍掆捣掐挍掀揔掎挗挙","换挈挐掎措揿挺挅掭揺掳掝捶挈掿掫")) / (-991337597 ^ -1296252624 ^ 0x46D13C55 ^ 0x30849EED);
                  return;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


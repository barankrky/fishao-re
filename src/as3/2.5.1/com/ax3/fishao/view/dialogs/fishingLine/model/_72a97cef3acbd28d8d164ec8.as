package com.ax3.fishao.view.dialogs.fishingLine.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   
   public class _72a97cef3acbd28d8d164ec8
   {
      
      public static const EFLC_WHITE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勩劗勵剁劐加剣劔劳劙剶刱勐剷勧劂刭勉","刏刼劶勵剞勲勿刽勹剋勛剅刭刺励勍");
      
      public static const EFLC_GOLD:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘჅဪႩာყႬႝးჸჇႥႵჵჵშ","ၝဋႼႺრირჵႱႾု။ႥႹၚႮ");
      
      public static const EFLC_SILVER:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("გწლၬნღႩးလကႮႁၯ်၊შာ၂ၳၪ","ဩၲႈႀးၷჾဵႀ၍უ჏္ၦႭႇ");
      
      public static const EFLC_BLUE_LIGHT:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჻႑ၠၩႹၓၞႶႮჅၟწჇიဌငလႿჄ჊პၩ၅჊ოႭၜႼ","ၮႲდဏဿაკၴဘႽႮ္႟႐ၹ႑");
      
      public static const EFLC_GREEN_LIGHT:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剴刏剰刡剥劬则刓劊刊刧劫劀刄勎剈別勲剌勔剮办勩劜剧劾劉勆刎刮","刭刄剟刯刵劌办劕刅勢削剬劂刕劼勞");
      
      public function _72a97cef3acbd28d8d164ec8()
      {
         super();
      }
      
      public static function _c5779887be8eacdb7aa956f2(param1:String) : uint
      {
         var _loc2_:uint = uint(0x31FDD385 ^ -1431034807 ^ 0x2AA05AED ^ -1310085855);
         switch(param1)
         {
            case EFLC_WHITE:
               §§push(-773659199 ^ -160527906 ^ -1577411868 ^ -2039023877);
               break;
            case EFLC_GOLD:
               §§push(0x40BE33D3 ^ -1038850971 ^ 0x2B1457F7 ^ -1447165888);
               break;
            case EFLC_SILVER:
               §§push(0x32DC138F ^ -1560278284 ^ 0x79831258 ^ -396424415);
               break;
            case EFLC_BLUE_LIGHT:
               §§push(-1867636675 ^ 0x60086D6C ^ 0x67B47339 ^ -1760412053);
               break;
            case EFLC_GREEN_LIGHT:
               §§push(-63607120 ^ 0x402F38C0 ^ 0x6867741E ^ -729996694);
               break;
            default:
               §§push(0x53AAB184 ^ -488384879 ^ -1573357711 ^ 0x13711061);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = uint(-246823742 ^ -936228586 ^ -22950107 ^ -953832417);
               break;
            case 1:
               _loc2_ = uint(0x637105E8 ^ 0x05B762A7 ^ 0x0F258A33 ^ 0x691C057C);
               break;
            case 2:
               _loc2_ = uint(-1594883091 ^ -1101900305 ^ 0x2F41127E ^ 0x3100A79F);
               break;
            case 3:
               _loc2_ = uint(-1288786029 ^ 0x1DB3F7B3 ^ 0x31D81F7B ^ -1622824540);
               break;
            case 4:
               _loc2_ = uint(-782470734 ^ 0x3B6B9A10 ^ -1668216627 ^ 0x76631F6F);
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}


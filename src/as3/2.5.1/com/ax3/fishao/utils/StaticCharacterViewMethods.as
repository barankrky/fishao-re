package com.ax3.fishao.utils
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.MovieClip;
   
   public class StaticCharacterViewMethods
   {
      
      public function StaticCharacterViewMethods()
      {
         super();
      }
      
      public static function setPropertyByName(param1:MovieClip, param2:String, param3:*) : MovieClip
      {
         var _loc4_:MovieClip = null;
         if(param1 != null)
         {
            _loc4_ = MovieClip(param1.getChildByName(param2));
            if(param3 is Boolean)
            {
               return setVisibleOfProperty(_loc4_,param3);
            }
            if(param3 == (0x6A9C1D2A ^ -1663187348 ^ 0x0498039A ^ 0x0D262723))
            {
               return setVisibleOfProperty(_loc4_,false);
            }
            setVisibleOfProperty(_loc4_,true);
            return setProperty(_loc4_,param3);
         }
         return null;
      }
      
      public static function setPropertyByNumber(param1:MovieClip, param2:int, param3:*) : MovieClip
      {
         var _loc4_:MovieClip = null;
         if(param1 != null && param2 >= (0x7D7E2399 ^ -1738308249 ^ 0x679A490D ^ -2105020429))
         {
            if(param1.numChildren > (0x5252788F ^ 0x1C785123 ^ -439066126 ^ -1409398690))
            {
               _loc4_ = MovieClip(param1.getChildAt(param2));
               if(param3 is Boolean)
               {
                  return setVisibleOfProperty(_loc4_,param3);
               }
               return setProperty(_loc4_,param3);
            }
         }
         return null;
      }
      
      private static function setVisibleOfProperty(param1:MovieClip, param2:Boolean) : MovieClip
      {
         var _loc3_:int = -656297778 ^ 0x364109DA ^ -1128479156 ^ 0x548309FF;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1756491534 ^ 0x251610F1 ^ 0x0AACB8 ^ -1261577698))
            {
               case 0:
                  return param1;
               case 1:
                  param1.visible = param2;
                  _loc3_ = -1534251410 ^ 0x5DB6963A ^ -1764378198 ^ 0x6971775B;
                  break;
               case 2:
                  if(param1 != null)
                  {
                     _loc3_ = 0x157630D1 ^ -571269056 ^ 0x71BB75FF ^ -1079962678;
                  }
                  else
                  {
                     _loc3_ = -1722221078 ^ -1255654539 ^ -125574231 ^ -764652653;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function setProperty(param1:MovieClip, param2:int) : MovieClip
      {
         var _loc3_:int = -476010580 ^ 0x25EB9D69 ^ -750777180 ^ -723685367;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0xFBA8B8 ^ -2002444433 ^ -2011033387 ^ -1045765780))
            {
               case 0:
                  _loc3_ = -1608283126 ^ 0x49375B80 ^ 0x3F0E50C4 ^ 0x17CCC124;
                  break;
               case 1:
                  param1.gotoAndStop(param2);
                  _loc3_ = -384307076 ^ -1427731418 ^ -241312237 ^ 0x73BAE427;
                  break;
               case 2:
                  if(param2 > (0x591AA3AD ^ -719518710 ^ -775245081 ^ 0x5DCD1540))
                  {
                     _loc3_ = 0x436BEB7C ^ 0x24349A72 ^ -1756234137 ^ 0x31D8C904;
                  }
                  else
                  {
                     _loc3_ = 0x04BB7BCE ^ -2044374654 ^ 0x30206489 ^ 0x736808AC;
                  }
                  break;
               case 3:
                  param1.visible = true;
                  if(param1.totalFrames >= param2)
                  {
                     _loc3_ = -1814598118 ^ -2109643754 ^ -1592485497 ^ 0x7154D5E4;
                  }
                  else
                  {
                     _loc3_ = -1154517032 ^ -104180471 ^ -2054012122 ^ 0x06A1279C;
                  }
                  break;
               case 4:
                  return param1;
               case 5:
                  param1.gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨဋဟၷჷသၝဲუჩ","უၭჃ႔ၟႣၮ႗႞სႰဗဌდჿဋ"));
                  _loc3_ = 0x55444A2C ^ -390763783 ^ -32464778 ^ -2110273843;
                  break;
               case 6:
                  if(param1 != null)
                  {
                     _loc3_ = 0x21C2B42B ^ 0x5C1BCF2D ^ -1666370059 ^ 0x20A2089F;
                  }
                  else
                  {
                     _loc3_ = -777204891 ^ -1412061698 ^ -488614061 ^ 0x594F7FA2;
                  }
                  break;
               case 7:
                  param1.visible = false;
                  _loc3_ = 0x0D814382 ^ -2115240097 ^ -1039535323 ^ -1883960942;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


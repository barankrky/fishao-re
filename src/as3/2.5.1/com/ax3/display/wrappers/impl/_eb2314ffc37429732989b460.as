package com.ax3.display.wrappers.impl
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public class _eb2314ffc37429732989b460 extends MovieClip implements IToolTipTarget
   {
      
      public var tooltipConfig:Object;
      
      public function _eb2314ffc37429732989b460()
      {
         super();
      }
      
      public function getTooltipType() : TooltipType
      {
         var _loc1_:int = 0x34DB3099 ^ 0x407E87E3 ^ -41464989 ^ 0x090688CE;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x509D8BE8 ^ -1269227528 ^ 0x112B3AB4 ^ 0x75CBDA72))
            {
               case 0:
                  return null;
               case 1:
                  if(this.tooltipConfig != null)
                  {
                     _loc1_ = -211349356 ^ 0x67084F49 ^ -1570994959 ^ -1239961608;
                  }
                  else
                  {
                     _loc1_ = 0x75B4DD4F ^ -1435725546 ^ 0x7A035C2F ^ 0x25FF64A0;
                  }
                  break;
               case 2:
                  return TooltipType.TEXT_TOOLTIP;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this.tooltipConfig;
      }
      
      public function set tooltipText(param1:String) : void
      {
         this.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႏႰჴ႓ხწჹၦၭო႙ႹფႆჶႭ","ჁဨუႡၻძႲႝႡჵდსၘႽႷန")):param1};
      }
   }
}


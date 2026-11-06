package com.ax3.fishao.display.panels.inventory.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.tooltip.IToolTipTarget;
   import com.ax3.display.tooltip.TooltipType;
   import flash.geom.Point;
   
   public class _092d0248d6b52a109cc65f09 extends gButtonInventory implements IToolTipTarget
   {
      
      private var _3edc138530e0a2cdb1b2568f:Object;
      
      private var _6fcbaa08e3f73bcd5ac246e3:String;
      
      public function _092d0248d6b52a109cc65f09()
      {
         super();
         this._3edc138530e0a2cdb1b2568f = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႘ၡၹ္းჅၝჺႨႥდႋ჈၁ႯႤ","Ⴋჳႊ჈ჷြႻၓႉၻჹၛဨ၃Ⴐწ")):""};
      }
      
      public function set tooltipText(param1:String) : void
      {
         var _loc2_:int = 0x0870D9F0 ^ -39626193 ^ 0x0F091ED7 ^ -25580833;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-429174221 ^ 0x0627D521 ^ 0x0E242CB8 ^ -355754881))
            {
               case 0:
                  this._6fcbaa08e3f73bcd5ac246e3 = param1;
                  this._3edc138530e0a2cdb1b2568f = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃捨捌掺掷捱掲揿捾排掑挿捚揺揱挋","挧捋掩掶揯掽挄掵捃掫换掙掍揍捿挲")):this._6fcbaa08e3f73bcd5ac246e3};
                  return;
               case 1:
                  return;
               case 2:
                  if(this._6fcbaa08e3f73bcd5ac246e3 == param1)
                  {
                     _loc2_ = 0x0915A209 ^ 0x15F19091 ^ -451695723 ^ -44781863;
                  }
                  else
                  {
                     _loc2_ = -705085194 ^ -1578194663 ^ -1882511750 ^ -8390592;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getTooltipType() : TooltipType
      {
         return TooltipType.TEXT_TOOLTIP;
      }
      
      public function getTooltipGlobalPosition() : Point
      {
         return null;
      }
      
      public function getTooltipConfig() : Object
      {
         return this._3edc138530e0a2cdb1b2568f;
      }
   }
}


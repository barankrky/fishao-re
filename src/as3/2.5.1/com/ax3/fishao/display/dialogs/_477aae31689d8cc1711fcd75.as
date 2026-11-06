package com.ax3.fishao.display.dialogs
{
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class _477aae31689d8cc1711fcd75
   {
      
      public var gap:int = 5;
      
      private var _4a645eeec5a1b6c8c9855850:Vector.<DisplayObject> = new Vector.<DisplayObject>();
      
      public function _477aae31689d8cc1711fcd75(... rest)
      {
         var _loc2_:Object = null;
         super();
         for each(_loc2_ in rest)
         {
            if(_loc2_ is DisplayObject)
            {
               this._4a645eeec5a1b6c8c9855850.push(_loc2_);
            }
         }
         this._7ce3a9f750739ce40e208781();
      }
      
      public function setValue(param1:int, param2:String) : void
      {
         var _loc3_:int = 0x36137038 ^ -1597176603 ^ -1858162424 ^ 0x7420B7F5;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x01644502 ^ -989591336 ^ 0x15F38CF2 ^ -1571572984))
            {
               case 0:
                  if(param1 in this._4a645eeec5a1b6c8c9855850)
                  {
                     _loc3_ = -116839470 ^ 0x7983F435 ^ 0x277EA860 ^ -734788188;
                  }
                  else
                  {
                     _loc3_ = -925497541 ^ -1993375634 ^ -921088420 ^ -81741013;
                  }
                  break;
               case 1:
                  (this._4a645eeec5a1b6c8c9855850[param1] as TextField).text = param2;
                  _loc3_ = -1170332860 ^ 0x6113B706 ^ 0x21893566 ^ -1989881082;
                  break;
               case 2:
                  this._7ce3a9f750739ce40e208781();
                  return;
               case 3:
                  if(this._4a645eeec5a1b6c8c9855850[param1] is TextField)
                  {
                     _loc3_ = 0x4B397751 ^ -1314766783 ^ -303982891 ^ 0x64BAD3E4;
                  }
                  else
                  {
                     _loc3_ = 0x442CE079 ^ -1466563685 ^ 0x71FD3768 ^ -293099864;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _7ce3a9f750739ce40e208781() : void
      {
         var _loc1_:int = -1321536789 ^ 0x4DEC0118 ^ -390197566 ^ 0x1468FD31;
         var _loc2_:int = 0x5F0D7177 ^ 0x48A9F74A ^ 0x6901397A ^ 0x37A74D28;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x711CDF39 ^ 0x274DF3B3 ^ 0x203ECE3E ^ 0x3F6D10D9))
            {
               case 0:
                  _loc1_ = -310648523 ^ 0x23245DC9 ^ 0x10C61F21 ^ -560356388;
                  _loc2_ = 0x57C564DC ^ -1197784558 ^ -225398650 ^ 0x54CC6421;
                  break;
               case 1:
                  this._4a645eeec5a1b6c8c9855850[_loc1_].x = int(this._4a645eeec5a1b6c8c9855850[_loc1_ - 1].x + this._ac7127cbb200a1fe5123a328(this._4a645eeec5a1b6c8c9855850[_loc1_ - 1]) + this.gap);
                  _loc1_++;
                  _loc2_ = -175644208 ^ 0x3462331B ^ -934698104 ^ 0x40AE832A;
                  break;
               case 2:
                  _loc1_ = 0x4B2415A7 ^ -994166140 ^ 0x048BEC46 ^ -1961770139;
                  if(this._4a645eeec5a1b6c8c9855850.length > (-1486546272 ^ -226945779 ^ 0x1143EF84 ^ 0x445FE029))
                  {
                     _loc2_ = 0x37D914FF ^ 0x474645D4 ^ -343741433 ^ -769700031;
                  }
                  else
                  {
                     _loc2_ = -2006395178 ^ -2129345951 ^ 0x15254147 ^ 0x555BA79E;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  if(_loc1_ >= this._4a645eeec5a1b6c8c9855850.length)
                  {
                     _loc2_ = -1790661748 ^ 0x0FD9A2C3 ^ 0x21B5AE55 ^ -232106636;
                  }
                  else
                  {
                     _loc2_ = -1076238902 ^ -308737820 ^ 0x1CFA082A ^ 0x07B81768;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ac7127cbb200a1fe5123a328(param1:DisplayObject) : Number
      {
         var _loc2_:int = 0x59DEED59 ^ 0x6F3699ED ^ 0x37C50AD7 ^ -146428973;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-887097917 ^ -2000056369 ^ 0x0976ECE1 ^ -1127726244))
            {
               case 0:
                  return param1.width;
               case 1:
                  if(param1 is TextField)
                  {
                     _loc2_ = 0x1D68606B ^ 0x5D3AED6C ^ 0x4DC08CE3 ^ -67447721;
                  }
                  else
                  {
                     _loc2_ = -1709877878 ^ -40017737 ^ 0x0EBD9AE5 ^ -1621263767;
                  }
                  break;
               case 2:
                  return (param1 as TextField).textWidth + (-930816251 ^ 0x0B2D7074 ^ -1257959034 ^ 0x76ACBEF2);
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


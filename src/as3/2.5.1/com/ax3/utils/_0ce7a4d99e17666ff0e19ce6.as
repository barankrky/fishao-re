package com.ax3.utils
{
   public class _0ce7a4d99e17666ff0e19ce6
   {
      
      private var _f8e697fe55a7524ead2b3b75:Function;
      
      private var _1fafe391e5374043921ff7bc:Array;
      
      public function _0ce7a4d99e17666ff0e19ce6(param1:Function = null, ... rest)
      {
         super();
         this._f8e697fe55a7524ead2b3b75 = param1;
         this._1fafe391e5374043921ff7bc = rest;
      }
      
      public function call(param1:* = null, ... rest) : void
      {
         var _loc3_:int = -192400226 ^ -689502464 ^ 0x211D1EDC ^ 0x76DFF5E3;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-81965047 ^ 0x15963081 ^ -1002934777 ^ 0x5F1ED62F))
            {
               case 0:
                  this._cd888ce627e13536f5c57313(param1,this._1fafe391e5374043921ff7bc);
                  return;
               case 1:
                  if(rest.length > (0x7FE56670 ^ 0x127C80DA ^ 0x5F0D476A ^ 0x3294A1C0))
                  {
                     _loc3_ = -801048603 ^ -1021554991 ^ 0x2D4157F9 ^ 0x4BB0366F;
                  }
                  else
                  {
                     _loc3_ = -1075538756 ^ -478665245 ^ 0x5DF0633B ^ 0x74C10AC4;
                  }
                  break;
               case 2:
                  this._1fafe391e5374043921ff7bc = rest;
                  _loc3_ = 0x0F5008BE ^ 0x7879680A ^ 0x0C2898D3 ^ 0x0EAC20C7;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _cd888ce627e13536f5c57313(param1:* = null, param2:Array = null) : void
      {
         var _loc3_:int = 0x388CFA0D ^ 0x7C023CBF ^ 0x0378CCB1 ^ 0x112D0E60;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1511440251 ^ -1847127194 ^ 0x33F6DE70 ^ 0x512389F1))
            {
               case 0:
                  (this._f8e697fe55a7524ead2b3b75 as Function).apply(param1,this._1fafe391e5374043921ff7bc);
                  return;
               case 1:
                  if(param2 != null)
                  {
                     _loc3_ = 0x2C0D3BA7 ^ 0x65560F13 ^ 0x3D114C57 ^ 0x22917C85;
                  }
                  else
                  {
                     _loc3_ = 0x3DC2CA94 ^ 0x254DD3D6 ^ 0x78541533 ^ 0x36000810;
                  }
                  break;
               case 2:
                  this._1fafe391e5374043921ff7bc = [];
                  _loc3_ = -1756026953 ^ 0x5F002225 ^ 0x417BAD1C ^ -537547540;
                  break;
               case 3:
                  if(this._1fafe391e5374043921ff7bc == null)
                  {
                     _loc3_ = -1030727213 ^ -1736004747 ^ 0x08B8A700 ^ 0x047551C6;
                  }
                  else
                  {
                     _loc3_ = 0x40D61822 ^ -841502103 ^ 0x16D2ACC2 ^ -855112981;
                  }
                  break;
               case 4:
                  this._1fafe391e5374043921ff7bc = param2;
                  _loc3_ = 0x2D7C2EDB ^ 0x2237978C ^ 0x06D82696 ^ 0x5F489BA0;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get func() : Function
      {
         return this._f8e697fe55a7524ead2b3b75;
      }
      
      public function set args(param1:Array) : void
      {
         this._1fafe391e5374043921ff7bc = param1;
      }
   }
}


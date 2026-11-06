package com.ax3.fishao.locations
{
   public class _7f33f5a524ab43d51548730b extends _de2a275c74ad73d373d2a7a8
   {
      
      private var _5b1ab9bd7a1b78d079baaab2:Vector.<_3b397340357d8a491ae998ae> = null;
      
      public function _7f33f5a524ab43d51548730b()
      {
         super();
      }
      
      override public function gotoAndStop(param1:int) : void
      {
         var _loc2_:_3b397340357d8a491ae998ae = null;
         super.gotoAndStop(param1);
         if(this._5b1ab9bd7a1b78d079baaab2 != null && this._5b1ab9bd7a1b78d079baaab2.length > (-1375776349 ^ 0x34325DC1 ^ -232113823 ^ 0x6BE73503))
         {
            for each(_loc2_ in this._5b1ab9bd7a1b78d079baaab2)
            {
               if(_loc2_.visible && _loc2_.parent != null)
               {
                  _loc2_.bitmapData = bitmapData;
               }
            }
         }
      }
      
      public function _b80486ccdfa997fe33b27552(param1:_3b397340357d8a491ae998ae) : void
      {
         var _loc2_:int = 0x4774B028 ^ -268452312 ^ -2059114409 ^ 0x780ED86C;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-755106712 ^ -512054230 ^ -616140139 ^ -1124033304))
            {
               case 0:
                  if(this._5b1ab9bd7a1b78d079baaab2.indexOf(param1) == (0x7353FB85 ^ 0x44BAADEB ^ -1234684576 ^ 0x7E7E9CF1))
                  {
                     _loc2_ = -1651206818 ^ 0x70B23D74 ^ 0x7ADE785A ^ -1036423602;
                  }
                  else
                  {
                     _loc2_ = -2081612637 ^ -186552592 ^ 0x200DE9A3 ^ 0x02C025CC;
                  }
                  break;
               case 1:
                  this._5b1ab9bd7a1b78d079baaab2.push(param1);
                  _loc2_ = -1318219294 ^ -1040009162 ^ 0x524C48E6 ^ 0x74E2DF0E;
                  break;
               case 2:
                  this._5b1ab9bd7a1b78d079baaab2 = new Vector.<_3b397340357d8a491ae998ae>();
                  _loc2_ = -1148092880 ^ -297671658 ^ 0x159F1172 ^ 0x158E356B;
                  break;
               case 3:
                  return;
               case 4:
                  if(this._5b1ab9bd7a1b78d079baaab2 == null)
                  {
                     _loc2_ = -495443533 ^ 0x0E902C0F ^ -1555332819 ^ 0x1A6232AC;
                  }
                  else
                  {
                     _loc2_ = 0x37B1CAF6 ^ -1587482931 ^ -2071064155 ^ 0x479E8BA1;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


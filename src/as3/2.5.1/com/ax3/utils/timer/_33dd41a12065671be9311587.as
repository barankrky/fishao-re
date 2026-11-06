package com.ax3.utils.timer
{
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   
   public class _33dd41a12065671be9311587
   {
      
      private static var _06b6774c9be61e556d921eea:int;
      
      private var _7fd70b1dcd57e3408e3436d8:Number = -1;
      
      private var _557d0e8c5243fbcccc0dfae9:Number;
      
      private var _0ad8f8958bdf9f4e8f439be6:_0ce7a4d99e17666ff0e19ce6;
      
      private var _959366871a46947a717fbcba:int;
      
      public function _33dd41a12065671be9311587(param1:Number = 0)
      {
         super();
         this._959366871a46947a717fbcba = _06b6774c9be61e556d921eea++;
         this._557d0e8c5243fbcccc0dfae9 = param1;
      }
      
      public function _bc1d2c0c359bffe4ef99cfee(param1:Number, param2:_0ce7a4d99e17666ff0e19ce6 = null) : void
      {
         this._557d0e8c5243fbcccc0dfae9 = param1;
         this._0ad8f8958bdf9f4e8f439be6 = param2;
         this._7fd70b1dcd57e3408e3436d8 = new Date().time;
         _2fa585959d65a5a44d3b2a32.getInstance()._41e028837e62ffcd2c632665(this);
      }
      
      public function get leftTimeMS() : Number
      {
         var _loc1_:int = 0x63F223B0 ^ -48063701 ^ -221702255 ^ 0x65E33B45;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1559287181 ^ -54712681 ^ -2034639833 ^ -789494644))
            {
               case 0:
                  if(this._7fd70b1dcd57e3408e3436d8 != (-1616103801 ^ 0x45A72195 ^ 0x2FE7EDDC ^ 0x0A130531))
                  {
                     _loc1_ = -1133222627 ^ 0x53A582AA ^ 0x48CD7FF8 ^ -1360655358;
                  }
                  else
                  {
                     _loc1_ = 0x1BF97DC1 ^ -826841892 ^ 0x4EEF2AA4 ^ -1839486985;
                  }
                  break;
               case 1:
                  return this._557d0e8c5243fbcccc0dfae9 * (0x28794787 ^ -1612094713 ^ 0x478A1A3E ^ -266715818);
               case 2:
                  return this.activateTimestampMS - new Date().time;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get activateTimestampMS() : Number
      {
         return this._7fd70b1dcd57e3408e3436d8 + this._557d0e8c5243fbcccc0dfae9 * (-1987141590 ^ 0x395D9E30 ^ -725413646 ^ 0x64102D00);
      }
      
      public function isComplete() : Boolean
      {
         var _loc1_:Number = new Date().time;
         if(this.activateTimestampMS <= _loc1_)
         {
            return true;
         }
         return false;
      }
      
      public function activate(param1:Number) : void
      {
         var _loc2_:int = 0x09B7E5F1 ^ -1599240438 ^ 0x101B31F9 ^ 0x54570A57;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1367508419 ^ 0x13D50695 ^ 0x3FE1C170 ^ 0x6F1FE48F))
            {
               case 0:
                  return;
               case 1:
                  this._0ad8f8958bdf9f4e8f439be6.call();
                  _loc2_ = -436126408 ^ 0x3D6CD153 ^ -1910241851 ^ -1205882631;
                  break;
               case 2:
                  _2fa585959d65a5a44d3b2a32.getInstance()._3c2d4a6197c3eca45a6c8186(this);
                  if(this._0ad8f8958bdf9f4e8f439be6 != null)
                  {
                     _loc2_ = -1226798820 ^ -1266661500 ^ 0x4645F4F9 ^ -1452055753;
                  }
                  else
                  {
                     _loc2_ = -9634093 ^ 0x559CC9FA ^ 0x6716A618 ^ 0x20B0C866;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         this._0ad8f8958bdf9f4e8f439be6 = null;
         _2fa585959d65a5a44d3b2a32.getInstance()._3c2d4a6197c3eca45a6c8186(this);
      }
   }
}


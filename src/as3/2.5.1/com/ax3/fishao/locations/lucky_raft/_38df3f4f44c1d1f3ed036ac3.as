package com.ax3.fishao.locations.lucky_raft
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._2d433bd00cdcd86a8edd654f;
   import com.ax3.fishao.locations.objects._a38933af26dced44f886f5bd;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _38df3f4f44c1d1f3ed036ac3 extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _aacb71a20c83148f62afd8e3:_2d433bd00cdcd86a8edd654f;
      
      private var _f8b751e8cba1309699210a6f:_a38933af26dced44f886f5bd;
      
      public function _38df3f4f44c1d1f3ed036ac3()
      {
         super();
      }
      
      public function get boardFish() : _2d433bd00cdcd86a8edd654f
      {
         return this._aacb71a20c83148f62afd8e3;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(param1.name)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_WHEEL_OF_LUCK:
               §§push(-1699960025 ^ 0x28722393 ^ 0x30F9EA73 ^ -2111348025);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_BOARD_FISH:
               §§push(-1095530090 ^ -231280798 ^ 0x47E07BBF ^ 0x0B651D4A);
               break;
            default:
               §§push(0x4FC7818E ^ -1617399672 ^ -1532427628 ^ 0x74F6F390);
         }
         switch(§§pop())
         {
            case 0:
               _424a1f44ff05e52733e46eeb(_loc2_);
               this._f8b751e8cba1309699210a6f = new _a38933af26dced44f886f5bd(_loc2_);
               break;
            case 1:
               _424a1f44ff05e52733e46eeb(_loc2_);
               this._aacb71a20c83148f62afd8e3 = new _2d433bd00cdcd86a8edd654f(_loc2_);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = -1677696838 ^ -2105951392 ^ -1544301717 ^ 0x5FC490FF;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6977E3B3 ^ -1356465961 ^ 0x4D4BF382 ^ 0x695770AB))
            {
               case 0:
                  this._aacb71a20c83148f62afd8e3._90eac9ca552fe54c2ca0299f();
                  this._aacb71a20c83148f62afd8e3 = null;
                  _loc1_ = -1608641943 ^ 0x3B286782 ^ -631542945 ^ -1557952771;
                  break;
               case 1:
                  super.destroy();
                  return;
               case 2:
                  this._f8b751e8cba1309699210a6f._90eac9ca552fe54c2ca0299f();
                  this._f8b751e8cba1309699210a6f = null;
                  _loc1_ = 0x6D3F3FFF ^ 0x7F3ED5C2 ^ -695986431 ^ 0x26CB6570;
                  break;
               case 3:
                  if(this._aacb71a20c83148f62afd8e3 != null)
                  {
                     _loc1_ = -677193528 ^ 0x2383B52C ^ -788182811 ^ -949306036;
                  }
                  else
                  {
                     _loc1_ = 0x415C3CED ^ -542494771 ^ 0x060E9F47 ^ 0x7AB6142E;
                  }
                  break;
               case 4:
                  if(this._f8b751e8cba1309699210a6f != null)
                  {
                     _loc1_ = 0x5A40E3CB ^ 0x30C50C78 ^ -616173252 ^ 0x538E86C0;
                  }
                  else
                  {
                     _loc1_ = 0x4411A3EA ^ 0x3C11BEBB ^ -1757543908 ^ 0x0D708701;
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


package com.ax3.fishao.locations.furniture_factory
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._2d433bd00cdcd86a8edd654f;
   import com.ax3.fishao.locations.objects._3fbd5c1731dfd3a3a55edaec;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _79f62ae7f3b54f8ffcd369e4 extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _d3831bcd3a7cf497a4fbb274:_2d433bd00cdcd86a8edd654f;
      
      private var _b3e7dc1259aa70856b9cba03:_3fbd5c1731dfd3a3a55edaec;
      
      public function _79f62ae7f3b54f8ffcd369e4()
      {
         super();
      }
      
      public function get boardFish() : _2d433bd00cdcd86a8edd654f
      {
         return this._d3831bcd3a7cf497a4fbb274;
      }
      
      public function get furnitureBox() : _3fbd5c1731dfd3a3a55edaec
      {
         return this._b3e7dc1259aa70856b9cba03;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         var _loc3_:DisplayObjectContainer = param1 as DisplayObjectContainer;
         switch(_loc2_)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_BOARD_FISH:
               §§push(-366994473 ^ 0x654DED1C ^ 0x301BE33A ^ -1082780175);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FURNITURE_BOX:
               §§push(0x52613B6D ^ 0x1DDEB9E3 ^ -1795433404 ^ -616276277);
               break;
            default:
               §§push(0x392EB244 ^ -506061923 ^ 0x0EC69D31 ^ -700566294);
         }
         switch(§§pop())
         {
            case 0:
               _424a1f44ff05e52733e46eeb(_loc3_);
               this._d3831bcd3a7cf497a4fbb274 = new _2d433bd00cdcd86a8edd654f(_loc3_);
               break;
            case 1:
               _424a1f44ff05e52733e46eeb(_loc3_);
               this._b3e7dc1259aa70856b9cba03 = new _3fbd5c1731dfd3a3a55edaec(_loc3_);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
   }
}


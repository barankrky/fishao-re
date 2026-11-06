package com.ax3.fishao.locations.palmIsland
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._4b3a19177d4e1a122105301b;
   import com.ax3.fishao.locations.objects._b0f658f5df4597fdb1acdd5f;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _1b141b5c2c59d77012d7d70f extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _5aa492e6d6513af112fe0ad3:_b0f658f5df4597fdb1acdd5f;
      
      private var _7c7e67b316fd08781fc0a9bd:_4b3a19177d4e1a122105301b;
      
      public function _1b141b5c2c59d77012d7d70f()
      {
         super();
      }
      
      public function get viewMegalodon() : _b0f658f5df4597fdb1acdd5f
      {
         return this._5aa492e6d6513af112fe0ad3;
      }
      
      public function get viewPirateCave() : _4b3a19177d4e1a122105301b
      {
         return this._7c7e67b316fd08781fc0a9bd;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_MEGALODON:
               §§push(0x6C24489A ^ -1070569376 ^ 0x724B506B ^ -564170607);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_PIRATE_CAVE:
               §§push(-1616931360 ^ 0x7E5BB38B ^ -271549121 ^ 0x0E145B55);
               break;
            default:
               §§push(0x078F45DF ^ -2086571045 ^ -2113706963 ^ 0x062D522B);
         }
         switch(§§pop())
         {
            case 0:
               this._5aa492e6d6513af112fe0ad3 = new _b0f658f5df4597fdb1acdd5f(param1 as DisplayObjectContainer);
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               _a59e9ad02d49ff892e329e08(this._5aa492e6d6513af112fe0ad3.source,_layerSpecial);
               break;
            case 1:
               this._7c7e67b316fd08781fc0a9bd = new _4b3a19177d4e1a122105301b(param1 as DisplayObjectContainer);
               this._7c7e67b316fd08781fc0a9bd.hide();
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               _a59e9ad02d49ff892e329e08(this._7c7e67b316fd08781fc0a9bd.source,_layerSpecial);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = -1706404422 ^ 0x17625EB2 ^ -927811987 ^ -1504114756;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-592997348 ^ 0x6E0E07B1 ^ 0x139E3B83 ^ 0x42F412F7))
            {
               case 0:
                  if(this._5aa492e6d6513af112fe0ad3 != null)
                  {
                     _loc1_ = -470491585 ^ 0x09ED9100 ^ -1302833079 ^ -1149063765;
                  }
                  else
                  {
                     _loc1_ = -582156351 ^ 0x4E838697 ^ 0x0C5ABC54 ^ 0x7C567FD9;
                  }
                  break;
               case 1:
                  this._7c7e67b316fd08781fc0a9bd._90eac9ca552fe54c2ca0299f();
                  this._7c7e67b316fd08781fc0a9bd = null;
                  _loc1_ = 0x54637282 ^ -1505197026 ^ 0x2ADFA8BC ^ 0x3B37E4FA;
                  break;
               case 2:
                  if(this._7c7e67b316fd08781fc0a9bd != null)
                  {
                     _loc1_ = 0x05BA8D3D ^ 0x1A7F5394 ^ 0x32113D6A ^ -837330661;
                  }
                  else
                  {
                     _loc1_ = -399081626 ^ 0x5B2F416A ^ 0x745533C1 ^ 0x248FB717;
                  }
                  break;
               case 3:
                  super.destroy();
                  return;
               case 4:
                  this._5aa492e6d6513af112fe0ad3._90eac9ca552fe54c2ca0299f();
                  this._5aa492e6d6513af112fe0ad3 = null;
                  _loc1_ = -1962109947 ^ 0x68C08F08 ^ -1757841090 ^ -1758013208;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


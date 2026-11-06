package com.ax3.fishao.locations.marshville
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._5d83b19f7624376d2aa3e68d;
   import com.ax3.fishao.locations.objects._b54df8d82f474953be7b2704;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _6c9355ed2a14a0afdaa3f32b extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _2b9c7ea2e75f8ea9c8eb3c12:_5d83b19f7624376d2aa3e68d;
      
      private var _eee474bbb1630f73871ae03b:_5d83b19f7624376d2aa3e68d;
      
      private var _136a3d04fb24d8b37f45f024:_b54df8d82f474953be7b2704;
      
      private var _c70ebbcb55c5e780eefa6cc6:DisplayObject;
      
      public function _6c9355ed2a14a0afdaa3f32b()
      {
         super();
      }
      
      public function get viewBridgeKey() : _5d83b19f7624376d2aa3e68d
      {
         return this._2b9c7ea2e75f8ea9c8eb3c12;
      }
      
      public function get viewBridgeTreeCave() : _5d83b19f7624376d2aa3e68d
      {
         return this._eee474bbb1630f73871ae03b;
      }
      
      public function get viewDoorTreeCave() : _b54df8d82f474953be7b2704
      {
         return this._136a3d04fb24d8b37f45f024;
      }
      
      public function get key() : DisplayObject
      {
         return this._c70ebbcb55c5e780eefa6cc6;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         switch(param1.name)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_BRIDGE_KEY:
               §§push(0x6CD63C21 ^ 0x3C1F1CF6 ^ -713331806 ^ -2051912843);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_BRIDGE_TREE_CAVE:
               §§push(0x4FD3072B ^ -1209226845 ^ 0x0CBA28FE ^ -192575881);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_DOOR_TREE_CAVE:
               §§push(0x379F8922 ^ -1383382379 ^ -1261689001 ^ 0x2ED8ECE2);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_KEY:
               §§push(-562892055 ^ 0x28E4E748 ^ 0x732699B6 ^ -2052027372);
               break;
            default:
               §§push(0x67B28F17 ^ 0x7086C087 ^ -981005292 ^ -760003712);
         }
         switch(§§pop())
         {
            case 0:
               this._2b9c7ea2e75f8ea9c8eb3c12 = new _5d83b19f7624376d2aa3e68d(param1 as DisplayObjectContainer);
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               _a59e9ad02d49ff892e329e08(this._2b9c7ea2e75f8ea9c8eb3c12.source,_layerSpecial);
               break;
            case 1:
               this._eee474bbb1630f73871ae03b = new _5d83b19f7624376d2aa3e68d(param1 as DisplayObjectContainer);
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               _a59e9ad02d49ff892e329e08(this._eee474bbb1630f73871ae03b.source,_layerSpecial);
               break;
            case 2:
               this._136a3d04fb24d8b37f45f024 = new _b54df8d82f474953be7b2704(param1 as DisplayObjectContainer);
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               _a59e9ad02d49ff892e329e08(this._136a3d04fb24d8b37f45f024.source,_layerSpecial);
               break;
            case 3:
               this._c70ebbcb55c5e780eefa6cc6 = param1;
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0x654C1825 ^ 0x0656414C ^ -647342213 ^ -1655938537;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-729559081 ^ -528730392 ^ 0x74877183 ^ 0x6744E4BC))
            {
               case 0:
                  this._136a3d04fb24d8b37f45f024._90eac9ca552fe54c2ca0299f();
                  this._136a3d04fb24d8b37f45f024 = null;
                  _loc1_ = -1086926174 ^ -469098792 ^ -632963276 ^ -1505419441;
                  break;
               case 1:
                  this._c70ebbcb55c5e780eefa6cc6 = null;
                  super.destroy();
                  return;
               case 2:
                  if(this._2b9c7ea2e75f8ea9c8eb3c12 != null)
                  {
                     _loc1_ = -1692377039 ^ 0x719768C6 ^ 0x3C478190 ^ -238230172;
                  }
                  else
                  {
                     _loc1_ = 0x2EE69598 ^ -1558263978 ^ -1935913455 ^ 0x265870DB;
                  }
                  break;
               case 3:
                  this._2b9c7ea2e75f8ea9c8eb3c12._90eac9ca552fe54c2ca0299f();
                  this._2b9c7ea2e75f8ea9c8eb3c12 = null;
                  _loc1_ = -55746265 ^ 0x3DAEB45A ^ 0x1CA9A5E0 ^ -90825575;
                  break;
               case 4:
                  if(this._136a3d04fb24d8b37f45f024 != null)
                  {
                     _loc1_ = -544945600 ^ -449844648 ^ -1624558884 ^ -2101575996;
                  }
                  else
                  {
                     _loc1_ = -883640666 ^ -600883329 ^ 0x25023BCF ^ 0x1545DE17;
                  }
                  break;
               case 5:
                  if(this._eee474bbb1630f73871ae03b != null)
                  {
                     _loc1_ = 0x71FA8449 ^ 0x5548E65A ^ -1602733339 ^ -1544145680;
                  }
                  else
                  {
                     _loc1_ = 0x57E726DA ^ -547023544 ^ 0x183CD0A6 ^ -1216180426;
                  }
                  break;
               case 6:
                  this._eee474bbb1630f73871ae03b._90eac9ca552fe54c2ca0299f();
                  this._eee474bbb1630f73871ae03b = null;
                  _loc1_ = 0x1192594F ^ 0x7D8E934C ^ -838364333 ^ -2061028014;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}


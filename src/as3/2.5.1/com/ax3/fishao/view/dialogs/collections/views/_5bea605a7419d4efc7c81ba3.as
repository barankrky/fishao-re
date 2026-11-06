package com.ax3.fishao.view.dialogs.collections.views
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._a240f0394e2d5677aff9f7b4;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.collections.model._5cb7e8cda98002c92e2581b2;
   import com.ax3.utils.ColorMatrix;
   import flash.filters.ColorMatrixFilter;
   
   public class _5bea605a7419d4efc7c81ba3 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private static var _0b195e797c0e09a381e54398:ColorMatrixFilter = _a240f0394e2d5677aff9f7b4._4e8eecfe2829137c38b53096(0x3DAD1A39 ^ -1626799446 ^ 0x4CC4F63C ^ 0x119F11AF);
      
      private var _20438ff794a09bea471bd46d:gViewCollectionItem = new gViewCollectionItem();
      
      private var _d402f463e1445197b6df1c0a:int;
      
      private var _159851ff7c2b319303f91b72:int;
      
      private var _8e9d779c22387f1ea0ef17a3:Boolean;
      
      private var _c9b7ca02a399bb608930a6ab:_eb2314ffc37429732989b460;
      
      private var _ae87213231cac831c08b1e06:_a4e47350c89a50d87a148c28;
      
      public function _5bea605a7419d4efc7c81ba3(param1:_988093efdfa36e13bfd6c6cf, param2:int, param3:int, param4:Boolean)
      {
         super(param1,this._20438ff794a09bea471bd46d);
         this._d402f463e1445197b6df1c0a = param2;
         this._159851ff7c2b319303f91b72 = param3;
         this._8e9d779c22387f1ea0ef17a3 = param4;
         this.init();
      }
      
      public function set tooltip(param1:String) : void
      {
         this._c9b7ca02a399bb608930a6ab.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃勆剋刜刑剴剙助刾刵勃前勊劆劃务","剾副劺勭刵列劚刚勆勐制办努劵剡剀")):param1};
      }
      
      private function init() : void
      {
         this._c9b7ca02a399bb608930a6ab = new _eb2314ffc37429732989b460();
         ShiftWrapper.shiftDisplayObject(this._20438ff794a09bea471bd46d.image,this._c9b7ca02a399bb608930a6ab);
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         var _loc3_:String = null;
         super.show(param1,param2);
         if(this._ae87213231cac831c08b1e06 == null)
         {
            _loc3_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(this._9db9f48a656d0b0c0377f91e(),this._159851ff7c2b319303f91b72));
            this._ae87213231cac831c08b1e06 = new _a4e47350c89a50d87a148c28(null);
            this._ae87213231cac831c08b1e06.width = this._20438ff794a09bea471bd46d.image.width;
            this._ae87213231cac831c08b1e06.height = this._20438ff794a09bea471bd46d.image.height;
            this._ae87213231cac831c08b1e06.filters = this._0649bf59d49211d965c2d3ab();
            app.resourceManager.replaceBitmapDataFromURL(this._ae87213231cac831c08b1e06,_loc3_);
            this._c9b7ca02a399bb608930a6ab.addChild(this._ae87213231cac831c08b1e06);
         }
      }
      
      private function _9db9f48a656d0b0c0377f91e() : String
      {
         var _loc1_:String = null;
         switch(this._d402f463e1445197b6df1c0a)
         {
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_AT_LOCATION:
               §§push(0x53862737 ^ 0x1AFE2968 ^ -729605561 ^ -1644489704);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_TYPE:
               §§push(-1463256418 ^ 0x7478D335 ^ 0x31CADF4A ^ -310741280);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_SHINY_FISH_WITH_TYPE:
               §§push(0x23F5DFD4 ^ 0x7790B04A ^ 0x3AA1C3F8 ^ 0x6EC4AC64);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_NAME:
               §§push(0x2D54606D ^ 0x63FB4792 ^ 0x4AE89801 ^ 0x0447BFFD);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_COLLECT_FURNITURE:
               §§push(-1619498972 ^ 0x40B18376 ^ 0x50AC012B ^ -1889146243);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY:
               §§push(0x6E3E71EF ^ -1191110029 ^ -1916088491 ^ 0x5AF5A4CC);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_COLLECT_FOSSILS:
               §§push(-1392724303 ^ -1182161000 ^ 0x4C578F09 ^ 0x59229E26);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CRUSH_FRUITS:
               §§push(-1556697267 ^ 0x2A29A3E6 ^ -12607217 ^ 0x7620ADA3);
               break;
            default:
               §§push(-56569404 ^ 0x3EF3965B ^ 0x7126552E ^ -1284173127);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               _loc1_ = _67282af25befe9778e5c8dd1.FISH.name;
               break;
            case 4:
            case 5:
               _loc1_ = _67282af25befe9778e5c8dd1.DECORATION.name;
               break;
            case 6:
               _loc1_ = _67282af25befe9778e5c8dd1.FOSSIL.name;
               break;
            case 7:
               _loc1_ = _67282af25befe9778e5c8dd1.FRUIT.name;
               break;
            default:
               Debug.assert(false);
         }
         return _loc1_;
      }
      
      private function _0649bf59d49211d965c2d3ab() : Array
      {
         var _loc1_:ColorMatrix = null;
         var _loc2_:ColorMatrixFilter = null;
         var _loc3_:Array = [];
         if(this._8e9d779c22387f1ea0ef17a3)
         {
            if(this._d402f463e1445197b6df1c0a == _5cb7e8cda98002c92e2581b2.ECT_CATCH_SHINY_FISH_WITH_TYPE)
            {
               _loc1_ = new ColorMatrix();
               _loc1_.adjustHue((app.fishDict.get(this._159851ff7c2b319303f91b72) as _cff30366d510ea862540bfef).hueShiftOfShiny);
               _loc2_ = new ColorMatrixFilter(_loc1_.matrix);
               _loc3_ = [_loc2_];
            }
            else
            {
               _loc3_ = [];
            }
         }
         else
         {
            _loc3_ = [_0b195e797c0e09a381e54398];
         }
         return _loc3_;
      }
   }
}


package com.ax3.fishao.view.dialogs.base.controllers.implementations
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import flash.display.DisplayObject;
   
   public class _f6788106409c49494058e542 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      public function _f6788106409c49494058e542(param1:_ebeac595a62fba6d6fcea1c2)
      {
         super(param1);
      }
      
      protected function _f2f26e7a66175d89c6f850e5(param1:Array) : void
      {
         var _loc2_:_e2bbbb1ef110bb0aa28b913f = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_ != null)
            {
               _loc3_ = _loc2_.view.source;
               _loc3_.parent.removeChild(_loc3_);
               _loc2_._90eac9ca552fe54c2ca0299f();
            }
         }
         param1.length = 0x0E3F6285 ^ -817846148 ^ 0x52C920D8 ^ -1816729055;
      }
      
      protected function _da6ba999cafb0c2a1bddd523(param1:Array, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:_988093efdfa36e13bfd6c6cf = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = param2;
         var _loc8_:int = -1055161517 ^ 0x4FCC06F0 ^ 0x317B18A3 ^ -1079206656;
         while(_loc8_ < param1.length)
         {
            if(_loc8_ % param3 == (-1722837153 ^ -474174031 ^ 0x0C0A5D7E ^ 0x76F96790))
            {
               _loc7_ = param2;
            }
            _loc5_ = param1[_loc8_];
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.view.source;
               _loc6_.x = _loc7_;
               _loc7_ += _loc6_.width + param4;
            }
            _loc8_++;
         }
      }
      
      protected function _2366485e451061bdda2a0f22(param1:Array, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:_988093efdfa36e13bfd6c6cf = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:int = param2;
         var _loc8_:int = -932314560 ^ -1325247626 ^ -2012486349 ^ -244861947;
         var _loc9_:int = -484285757 ^ -1032110281 ^ -1947273636 ^ -1430803544;
         while(_loc9_ < param1.length)
         {
            if(_loc9_ % param3 == (0x18348438 ^ 0x6D704CFF ^ 0x5CCF5C8E ^ 0x298B9449))
            {
               _loc7_ = param2;
            }
            _loc5_ = param1[_loc9_];
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.view.source;
               _loc6_.y = _loc7_;
               _loc7_ += _loc6_.height + param4;
            }
            _loc9_++;
         }
      }
      
      protected function _3d866f07adb02a6079215c17(param1:Array, param2:int, param3:int) : void
      {
         var _loc4_:_988093efdfa36e13bfd6c6cf = null;
         var _loc5_:uint = uint(-1353883498 ^ -1594663259 ^ 0x43C1B2C3 ^ 0x4C7F8CF0);
         var _loc6_:int = -892113101 ^ -631008818 ^ 0x7DFC00C6 ^ 0x6D4CFE3B;
         while(_loc6_ < param1.length)
         {
            _loc4_ = param1[_loc6_];
            if(_loc4_ != null)
            {
               _loc5_ = Math.floor(_loc6_ / param3);
               if(_loc5_ == param2)
               {
                  _loc4_.view.show();
               }
               else
               {
                  _loc4_.view.hide();
               }
            }
            _loc6_++;
         }
      }
   }
}


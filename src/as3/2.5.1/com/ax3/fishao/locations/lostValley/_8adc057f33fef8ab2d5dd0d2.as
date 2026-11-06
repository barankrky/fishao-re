package com.ax3.fishao.locations.lostValley
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._efda4d474b0e60ab8d401b63;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _8adc057f33fef8ab2d5dd0d2 extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _2fda5b22883101f8b228c368:_efda4d474b0e60ab8d401b63;
      
      public function _8adc057f33fef8ab2d5dd0d2()
      {
         super();
      }
      
      public function get viewRocksPond() : _efda4d474b0e60ab8d401b63
      {
         return this._2fda5b22883101f8b228c368;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         switch(_77ca96a94affdf1e9d31698c.EDOT_SPECIAL_ROCKS_POND === _loc2_ ? 0x05A69EBF ^ -1401309833 ^ 0x661D98D6 ^ -809323746 : -1039092246 ^ -1434368596 ^ -1439315206 ^ -1029424451)
         {
            case 0:
               this._2fda5b22883101f8b228c368 = new _efda4d474b0e60ab8d401b63(param1 as DisplayObjectContainer);
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0x131C0E59 ^ -504047912 ^ 0x069D6EEA ^ 0x4F4B8E95;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6EFFD278 ^ 0x401CE10A ^ -1716754530 ^ 0x0C716C10))
            {
               case 0:
                  super.destroy();
                  return;
               case 1:
                  this._2fda5b22883101f8b228c368._90eac9ca552fe54c2ca0299f();
                  this._2fda5b22883101f8b228c368 = null;
                  _loc1_ = 0x04E6AE7C ^ 0x1FF98B02 ^ 0x0839ABD6 ^ -1474775468;
                  break;
               case 2:
                  if(this._2fda5b22883101f8b228c368 != null)
                  {
                     _loc1_ = -1669217036 ^ 0x33145F62 ^ 0x280362FC ^ 0x3CA8C197;
                  }
                  else
                  {
                     _loc1_ = 0x7AD9D4ED ^ 0x44B3D49D ^ 0x5177B8DD ^ -735870895;
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


package com.ax3.fishao.locations.rio
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.objects._df68122f0b57419fbef21a0e;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _de00f89231bcfcd042af6bc5 extends _bd60f9ad6ef4aaf28041ce8f
   {
      
      private var _6c01a943358e68243d3ede16:_df68122f0b57419fbef21a0e;
      
      public function _de00f89231bcfcd042af6bc5()
      {
         super();
      }
      
      public function get viewWaterfallCave() : _df68122f0b57419fbef21a0e
      {
         return this._6c01a943358e68243d3ede16;
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         switch(_77ca96a94affdf1e9d31698c.EDOT_SPECIAL_WATERFALL_CAVE === _loc2_ ? -139241381 ^ 0x15BE7D90 ^ -309742694 ^ 0x0F849651 : 0x3DF22EE7 ^ 0x56C818CF ^ 0xAFD555 ^ 0x6B95E37C)
         {
            case 0:
               this._6c01a943358e68243d3ede16 = new _df68122f0b57419fbef21a0e(param1 as DisplayObjectContainer);
               _e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               this._6c01a943358e68243d3ede16.hide();
               _a59e9ad02d49ff892e329e08(this._6c01a943358e68243d3ede16.source,_layerSpecial);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
   }
}


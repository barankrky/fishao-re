package com.ax3.fishao.locations.lostValley
{
   import com.ax3.fishao.locations.objects._efda4d474b0e60ab8d401b63;
   import com.ax3.fishao.locations.sublocation._5496d2d072c6e7a69d5dcae0;
   import com.ax3.fishao.view.dialogs.features._354d2881bbbfb4c44045fd10;
   import com.ax3.fishao.view.dialogs.features._f49970bf420b737db92228d1;
   
   public class _1ee9a0dc44c67055adea7d55 extends _5496d2d072c6e7a69d5dcae0
   {
      
      private var _5d95b1eb19fb70e361b25389:_f49970bf420b737db92228d1;
      
      private var _61dfdbcb959b18a28bc59153:_8adc057f33fef8ab2d5dd0d2;
      
      public function _1ee9a0dc44c67055adea7d55(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._61dfdbcb959b18a28bc59153 = (dialog as _6dcf275ab893b1917ee97aa7).locationLayersBase as _8adc057f33fef8ab2d5dd0d2;
      }
      
      private function init() : void
      {
         this._5d95b1eb19fb70e361b25389 = GameSwf.instance.managerFeatures;
      }
      
      public function _11626f5740630a2ca020b3fc() : void
      {
         var _loc1_:_efda4d474b0e60ab8d401b63 = this._61dfdbcb959b18a28bc59153.viewRocksPond;
         _loc1_.isEnabled = !this._5d95b1eb19fb70e361b25389.isFeatureEnabled(_354d2881bbbfb4c44045fd10.EUF_LOCATION_TREE_CAVE);
      }
   }
}


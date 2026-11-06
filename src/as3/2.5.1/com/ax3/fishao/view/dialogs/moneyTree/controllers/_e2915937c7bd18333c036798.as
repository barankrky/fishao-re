package com.ax3.fishao.view.dialogs.moneyTree.controllers
{
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations.improvable._5f1c0f7d981f2b4a82612e61;
   import flash.display.DisplayObjectContainer;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class _e2915937c7bd18333c036798 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _9dbb9298d91b43277a4d2b70:_5f1c0f7d981f2b4a82612e61;
      
      private var _0956c852743e6b813040f122:MoneyTreeLevelInfo;
      
      private var _c02a0109d4c552f710a7c9c4:_51476cd1e3e4cd9399206ef5;
      
      public function _e2915937c7bd18333c036798(param1:DisplayObjectContainer)
      {
         this._9dbb9298d91b43277a4d2b70 = new _5f1c0f7d981f2b4a82612e61(this,param1);
         super(this._9dbb9298d91b43277a4d2b70);
         this.init();
      }
      
      public function set entity(param1:MoneyTreeLevelInfo) : void
      {
         var _loc2_:int = 0x4BABC07D ^ -1262241870 ^ -1922346475 ^ -2011221668;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1E4AC701 ^ -1729029301 ^ -27279760 ^ -2097645890))
            {
               case 0:
                  return;
               case 1:
                  this._0956c852743e6b813040f122 = param1;
                  this._8a714d2a696d5cd10d08d7f7();
                  return;
               case 2:
                  if(this._0956c852743e6b813040f122 == param1)
                  {
                     _loc2_ = -1712383227 ^ 0x39CB2ED0 ^ 0x0847A669 ^ 0x527F8738;
                  }
                  else
                  {
                     _loc2_ = -957195554 ^ 0x6CAFADA4 ^ -1030652228 ^ -1831822013;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._c02a0109d4c552f710a7c9c4 = new _51476cd1e3e4cd9399206ef5(this._9dbb9298d91b43277a4d2b70.sourceLevelInfo);
      }
      
      private function _8a714d2a696d5cd10d08d7f7() : void
      {
         this._9dbb9298d91b43277a4d2b70.number = this._0956c852743e6b813040f122.number;
         this._c02a0109d4c552f710a7c9c4.entity = this._0956c852743e6b813040f122;
      }
   }
}


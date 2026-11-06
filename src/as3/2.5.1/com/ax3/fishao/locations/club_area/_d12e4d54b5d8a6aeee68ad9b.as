package com.ax3.fishao.locations.club_area
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._cedbbc6214f1b88b66549120;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.vars.app;
   
   public class _d12e4d54b5d8a6aeee68ad9b extends _cedbbc6214f1b88b66549120
   {
      
      public function _d12e4d54b5d8a6aeee68ad9b(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function get weather() : _da93b7e4b1cf62dcb698e0bd
      {
         return _da93b7e4b1cf62dcb698e0bd.SUNNY;
      }
      
      private function init() : void
      {
         _dayCycleEnabled = false;
      }
      
      override public function _80557ec7c85c6def233bada4() : void
      {
         _1cf0cdd2a2d449dc47167bcb();
         app.char.isFreeze = false;
         _db484614a71f0398bdc80d31();
         _dfa25706e58a240c1e33e5c6.locationExtension._df816f93264e69cddcda0540(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb());
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
   }
}


package com.ax3.fishao.tutorial.simple.base
{
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.tutorial.helpers._f68c6ad080882f1d18d7d86d;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class _a18ecfd5a99a71f5043f6ed6 extends _9b5482b3978b7abe1547abb8
   {
      
      public function _a18ecfd5a99a71f5043f6ed6()
      {
         super();
      }
      
      protected function _4e58d4cc56b655be4f620f65(param1:String) : void
      {
         var _loc2_:_8a5b0c698d40931e860c0aeb = this.gui;
         if(_loc2_ == null)
         {
            return;
         }
         this._dbb8408a6fc0feead9d91cb2();
         var _loc3_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         _loc2_.mainMenu.mapIcon.enable();
         var _loc4_:DisplayObject = _loc2_.mainMenu.mapIcon;
         _loc3_.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc4_),-572586458 ^ 0x419A15C6 ^ 0x3B8A1788 ^ -1479605130);
         _loc3_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc4_,new Point(_loc4_.width / (0x6694B901 ^ -1870048329 ^ -1205697555 ^ 0x4E3F6959),0x1622D7A3 ^ -1584208296 ^ -1194968615 ^ -259393556)),-1266518771 ^ -1514393104 ^ -124815461 ^ -374262938);
         if(param1 != null)
         {
            _loc3_.helperPopup._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(param1));
         }
      }
      
      override protected function _520ba4dbc5360c791fc5a2f0() : _e444b603a0e799e84b427ae5
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = super._520ba4dbc5360c791fc5a2f0();
         _loc1_.sizeLabel = _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM;
         return _loc1_;
      }
   }
}


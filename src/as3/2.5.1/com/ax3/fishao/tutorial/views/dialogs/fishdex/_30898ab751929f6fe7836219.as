package com.ax3.fishao.tutorial.views.dialogs.fishdex
{
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.view.dialogs._16e26a611afe5208717ab607;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _30898ab751929f6fe7836219 extends _16e26a611afe5208717ab607
   {
      
      public function _30898ab751929f6fe7836219()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function _eb05edb7ceaa3fc9af5c12f8(param1:MouseEvent) : void
      {
         super._eb05edb7ceaa3fc9af5c12f8(param1);
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
      
      override protected function _e30cba1f2b838200b97978d6(param1:MouseEvent) : void
      {
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(closeBtn,new Point(0x38479C64 ^ -68223142 ^ -1377260435 ^ -1849806709,0x4EA753F6 ^ 0x22FB3B3F ^ 0x0BEA10A9 ^ 0x67B67830)),-998685681 ^ 0x5B5ACDF1 ^ 0x1FCC1685 ^ -2131779686);
      }
   }
}


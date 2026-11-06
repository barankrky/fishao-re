package com.ax3.fishao.tutorial.views.dialogs.bite
{
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import flash.geom.Point;
   
   public class _72cc6d3a86c48c32c334daf6 extends _c3f9a565dbb1e9ca08e3057f
   {
      
      public function _72cc6d3a86c48c32c334daf6()
      {
         super();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(startReelingbutton,new Point(startReelingbutton.width / (0x0EF6F89D ^ 0x3FF16CB0 ^ 0x0A1DA051 ^ 0x3B1A347E),-startReelingbutton.height)),-1841137077 ^ 0x044F45C6 ^ -917850840 ^ 0x5F478AA5);
         startReelingbutton.handler = this._5b5a8ebdb256dc6686204ada;
      }
      
      protected function _5b5a8ebdb256dc6686204ada(param1:* = null) : void
      {
         startReelingbutton.disable();
         this.close();
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
   }
}


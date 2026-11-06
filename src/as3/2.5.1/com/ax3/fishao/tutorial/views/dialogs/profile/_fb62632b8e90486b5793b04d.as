package com.ax3.fishao.tutorial.views.dialogs.profile
{
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _fb62632b8e90486b5793b04d extends _6e3e496e7a4ab1988577523d
   {
      
      public function _fb62632b8e90486b5793b04d()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(this,new Point(-this.width / (-1576996915 ^ 0x36DD1F70 ^ -1078309300 ^ 0x2B67BEF3),-this.height / (-29848969 ^ -1263334570 ^ 0x2ED74727 ^ 0x645CC604))),_63a1662bfab25759f09f5245._6ba4124ea66e83ee2d11f6aa(this));
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(closeBtn,new Point(-2060966060 ^ 0x4B99B73F ^ 0x6E6FDF69 ^ 0x5F21B0DA,0x2AE8C671 ^ 0x13897C95 ^ 0x0415E43B ^ 0x3D745E8F)),0x5F9C651C ^ -1426262181 ^ -1860046747 ^ 0x644162C3);
      }
      
      override protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         super._ba7fe333230ac51496d90cb8(param1);
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
   }
}


package com.ax3.fishao.tutorial.views.panels.user_popup
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.views.dialogs.profile._fb62632b8e90486b5793b04d;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.panels.user_popup._92885560496ae9c2acd16824;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class _ff2ebc85607ea6db1e18161d extends _92885560496ae9c2acd16824
   {
      
      private var _5c8736abef36636b655d994d:_283b592e1b144e604db439f2;
      
      public function _ff2ebc85607ea6db1e18161d(param1:_08c120b706560fce9302bcab)
      {
         super(param1);
         this._5c8736abef36636b655d994d = GameSwf.instance.managerTutorial;
         _view.buttonCloseVisible = false;
      }
      
      override protected function _11927dc817f591a4dec96c5a() : void
      {
         if(this._5c8736abef36636b655d994d.isTutorialCommonComplete)
         {
            super._11927dc817f591a4dec96c5a();
            return;
         }
         var _loc1_:_fb62632b8e90486b5793b04d = app.dialogFactory._8b7e55a5cde6eb72ba5c388b();
         _loc1_._e52343156d490543715f0266(_entity.locationUser.username);
         _loc1_.show();
         GameSwf.profileSwfDialog = _loc1_;
         hide();
      }
      
      override public function show() : void
      {
         if(this._5c8736abef36636b655d994d.isTutorialCommonComplete)
         {
            super.show();
            return;
         }
         super._1808a7eea07f500412920d35();
         _e1d0dc3f06ef62f5c3ed47ee();
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = GameSwf.instance.managerTutorial.tutorialHelpers;
         var _loc2_:DisplayObject = _view.currentView.source;
         _loc1_.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_,new Point(-_loc2_.width,-_loc2_.height * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掖揃推插按挟捧挹挅掎捇捳挔捉挃捅接揀揑挔揨捳措挆","掋挌捡捶揫捤捐捈挽捦揫挄揢捿捓挈"))),_63a1662bfab25759f09f5245._6ba4124ea66e83ee2d11f6aa(_loc2_));
         var _loc3_:DisplayObject = _view.currentView.buttonProfile;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_,new Point(_loc3_.width / (-748683591 ^ -1779747318 ^ -2016037503 ^ -1050575568),-407617075 ^ 0x13EFE3E8 ^ -1699129723 ^ -1860367516)),0x574C83A1 ^ 0x677F695C ^ 0x2D664903 ^ 0x1D55A3FE);
      }
   }
}


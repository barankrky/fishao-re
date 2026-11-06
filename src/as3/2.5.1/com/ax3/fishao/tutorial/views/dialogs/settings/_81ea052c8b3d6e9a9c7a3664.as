package com.ax3.fishao.tutorial.views.dialogs.settings
{
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.view.dialogs._f763d840b3095d96522c1772;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class _81ea052c8b3d6e9a9c7a3664 extends _f763d840b3095d96522c1772
   {
      
      private var _6bc082b86b9fd9119cf6132a:Boolean;
      
      public function _81ea052c8b3d6e9a9c7a3664()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function _7aa2fec72d1e7b1dfbad67d0(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x799141F8 ^ 0x386CEC76 ^ -1107385646 ^ -374309580;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x36484D13 ^ -1897126928 ^ 0x7DF1E235 ^ -790167876))
            {
               case 0:
                  super._7aa2fec72d1e7b1dfbad67d0(param1);
                  _loc2_ = 0x60DF2B81 ^ -993824614 ^ 0x3BC40E7B ^ -1972689143;
                  break;
               case 1:
                  super._7aa2fec72d1e7b1dfbad67d0(param1);
                  this._6bc082b86b9fd9119cf6132a = false;
                  GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
                  _loc2_ = -958658635 ^ 0x260B7FA3 ^ -578291000 ^ 0x28E3F0B7;
                  break;
               case 2:
                  if(this._6bc082b86b9fd9119cf6132a)
                  {
                     _loc2_ = 0x2664670F ^ 0x0E31FD34 ^ 0x6473BD2E ^ 0x5995557E;
                  }
                  else
                  {
                     _loc2_ = -400565495 ^ -641315524 ^ -1782960638 ^ -1311716771;
                  }
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _e40c6dc712a350d955c988de() : void
      {
         this._6bc082b86b9fd9119cf6132a = true;
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(settingsCharEditorButton,new Point(-2079052334 ^ -430613966 ^ -882601676 ^ 0x56DA191A,settingsCharEditorButton.height / (-1808345534 ^ 0x340221F9 ^ 0x72E74E51 ^ -757876248))),-1535287422 ^ 0x401EEDD1 ^ 0x3279122D ^ -702897808);
         _loc1_.helperMask._ff99ac71fd600b826038309c(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(settingsCharEditorButton,new Point(-settingsCharEditorButton.width / (-1686279226 ^ 0x4CE4BFA8 ^ -175285293 ^ 0x22148FBF),-settingsCharEditorButton.height / (-1703855129 ^ -1192830251 ^ -918072710 ^ -338644150))),_63a1662bfab25759f09f5245._6ba4124ea66e83ee2d11f6aa(settingsCharEditorButton));
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
   }
}


package com.ax3.fishao.view.dialogs.club_goal_history
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   
   public class _c831dee0e934055085649c25 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _63c7be315e8d6fa867c4108f:_8504a663c275f49191c30b9b;
      
      public function _c831dee0e934055085649c25(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._63c7be315e8d6fa867c4108f;
      }
      
      private function init() : void
      {
         var _loc1_:_ab72f7798754bf7a51d8acb3 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("前劒剩劵刀劬勮刜剨剺劕勻劌刐刡刟剳剻","劤勜剼剭劇剛刈剁劫勐剃則剂勧剑刂")));
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_TITLE_GOAL_HISTORY);
         this._63c7be315e8d6fa867c4108f = new _8504a663c275f49191c30b9b(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揉揇挣挚揺挠掿捣捯挃揓挡挸挏掩挒挌掁挰捱揑挷揤挶挒捭挿挸揦捻挑挖掂挘揿揔","措揯指挓揞捿掠探掘挼捋捀捭挛掭捽")));
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捒控捚揇揭捙掚捺掰捿振掃換掗挌捗捈掚捻按捀掜捠挣按挂","挨指捏捌捾捄捛挙掺掌揿掿揂捕捷捓"),_85b2141a2303f6545d411d7a.EST_COLUMN_TYPE);
         _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剫剆刎劏剉劄劏剷勡勇功劘劤剶刊勲剃勜劫劽分剕制力劾勲劣劑劍劋","剦劼剄劑削劊劭剥劸劯劾勫剃勒剒务"),_85b2141a2303f6545d411d7a.EST_COMMON_REWARD);
      }
   }
}


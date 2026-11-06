package com.ax3.fishao.view.dialogs.club.pages.goals
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   
   public class _bf2e51fddb4c91b1ee444409 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _b5116bf09ac8365f568919eb:FrameButtonWrapper;
      
      private var _faa9f8aff41650fa56c95e32:_73899a4de8f83c8d2c26f545;
      
      private var _223b7e4581a6510e9f62246c:_8504a663c275f49191c30b9b;
      
      public function _bf2e51fddb4c91b1ee444409(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get buttonHistory() : FrameButtonWrapper
      {
         return this._b5116bf09ac8365f568919eb;
      }
      
      public function set isAllGoalsComplete(param1:Boolean) : void
      {
         this._faa9f8aff41650fa56c95e32.text = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_CLUB_TEXT_GOALS_ALL_COMPLETED : _85b2141a2303f6545d411d7a.EST_CLUB_TEXT_GOALS_UNCOMPLETED);
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._223b7e4581a6510e9f62246c;
      }
      
      private function init() : void
      {
         this._b5116bf09ac8365f568919eb = _092050566a3adcf2725382ab(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揹捡振授揄挳捣揮揗揽揽捗捜持挃捄挡挾掚挢挎掇捁揽挐挼挆挏揯掭挜掃掙挭","捪掴掭掅捿捭捚捥採揢挙揸捳採捬捍"));
         this._b5116bf09ac8365f568919eb.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_VIEW_COMPLETED);
         this._faa9f8aff41650fa56c95e32 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描揀挑挹揑揸捺捱掫捬掋掝挳捯挔握揁捖捠捔揚揲揧挥挈捌","挂揧捑掊挋掃捠揊捊揨挙掅掩揞捖挘"),null);
         this._223b7e4581a6510e9f62246c = new _8504a663c275f49191c30b9b(controller,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၑჭცႩမხႹ჎ႭႢჍၪ၎ႍၡလဿႹဴႲႯၔငჴီဿါႷၼჍჲဝမჿბၭ","ბႋყၷჺპဓ၀჻ၳႹჯဃ႗ဌၲ")));
      }
   }
}


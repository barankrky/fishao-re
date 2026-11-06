package com.ax3.fishao.view.dialogs.club_tournament_history
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   
   public class _20dcd15348be3dd1807a94f5 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _a975a759db38719a0fdef974:_8504a663c275f49191c30b9b;
      
      public function _20dcd15348be3dd1807a94f5(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._a975a759db38719a0fdef974;
      }
      
      private function init() : void
      {
         var _loc1_:_ab72f7798754bf7a51d8acb3 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挖掖捘挒挴挕捤挾掕揥掤揁揩捷揓捵捫揌","掀掁捜揝揠捧揉挎捁插捐掇挐掋捌揼")));
         _loc1_.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_TITLE_TOURNAMENT_HISTORY);
         this._a975a759db38719a0fdef974 = new _8504a663c275f49191c30b9b(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挐挎捧揷提捻揆掰捒揙据捐捇捰挨挙掀挕挽揝捁挚持振捇损挚揹換掘排挀捍挃掺捏","挼捇挅挀掑揾掹掌探挻挪捄揆揌挼揬")));
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挌捿揫掸捘掌挏掹揾据挬捳捠揩探挻揕捗掰掉挖揇捃捭揺插","挟挅捾捣捹挲挢挎掭捈挶挺捓挎挺捐"),_85b2141a2303f6545d411d7a.EST_COLUMN_TOURNAMENT_TYPE);
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕捈持掯挭揽掌挲捻揾揑掞掃揳捃捘揗挏揹挔換揕揌掏描捰捞揊挖掌掝挝掬挤","捃捰挚掸揻揁挵掵捬挐捾捝捓提挩掝"),_85b2141a2303f6545d411d7a.EST_COLUMN_RANKING);
         _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၲႇၡიဲჳႴჾ႐ႅ႟ၤြႩပ၄Ⴈးၷ႘ႁღჲၔပნမႴၒက","ၒး၆ႏႱၿთ၌ႴუძႜထၬႢႛ"),_85b2141a2303f6545d411d7a.EST_COMMON_REWARD);
      }
   }
}


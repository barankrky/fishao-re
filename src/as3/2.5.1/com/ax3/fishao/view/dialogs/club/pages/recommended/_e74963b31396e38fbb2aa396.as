package com.ax3.fishao.view.dialogs.club.pages.recommended
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   
   public class _e74963b31396e38fbb2aa396 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _0d871d5cfb86f4388944ca76:DisplayObjectContainer;
      
      private var _14665008a3d5629ed5646246:_73899a4de8f83c8d2c26f545;
      
      public function _e74963b31396e38fbb2aa396(param1:_e2bbbb1ef110bb0aa28b913f, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set isRecommendedClubsExists(param1:Boolean) : void
      {
         this._14665008a3d5629ed5646246.text = _c2ad9d37d7be0097d6d2e977.get(param1 ? _85b2141a2303f6545d411d7a.EST_CLUB_LABEL_PAGE_RECOMMENDED_TEXT : _85b2141a2303f6545d411d7a.EST_CLUB_LABEL_PAGE_RECOMMENDED_TEXT_EMPTY);
         this._0d871d5cfb86f4388944ca76.visible = param1;
      }
      
      private function init() : void
      {
         this._14665008a3d5629ed5646246 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劥剖剋劦剹勝劑劢副剺剌剮別列勗力刅列","勇劋剛勢剻勸剳剽勳効削剜利刦劇劶"),null,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("တၗါဩ႐အဟႬჹႊျპဉဴ჻ႠႁႳ၉ၿკၱႚႽ","နႳၕဉၩၭႋს၊჊ႚဘဘ႔Ⴐဝ")));
         this._0d871d5cfb86f4388944ca76 = Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქვႨ်႕ဒჹ၈ჭႩႉၵဉႁၴ჋უသၧၵჷსဎႅႧ၆ၡၹჭၴმႈၕဉჄၷ","၈პိჄჵგ჎ႪფჟဨႷ჌႒ၫ႓"));
         _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勘剐剟剟勁勗勽削剦勼剠劤勑勏剐勷劓則劯剂劰力加勮劜刾","勁刢劢剞剷利勺刓努勭剞勳勻削劫剞"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_CLUB,this._0d871d5cfb86f4388944ca76);
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掳挕捼掾掞挊掉挷揿挳掰掽捍揄掯捫推揻捯挟捂捕揺掔挣揗揎揑挲握捩掅","捞挋揔掽揗掙挌挾挊揥挚掎揊接揤按"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_MEMBERS,this._0d871d5cfb86f4388944ca76);
         _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၅ညႼჱშဧ၀ၟხၵဏၐს႟္၉ცဉၒယჼၦႰၠႸ။ဓဩ၏ၭ","ဖၓაგႱႺၺၾჶႯ჋ဆဗဃႸ჏"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_CLUB_POINTS,this._0d871d5cfb86f4388944ca76);
      }
   }
}


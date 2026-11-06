package com.ax3.fishao.view.dialogs.club.pages.tournament
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.model._f3277cf8667e55e52c907b59;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _4488b7b383914efb9281d7a4 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _5dca668556a9fe5d1f5390db:FrameButtonWrapper;
      
      private var _78cbc0feffe81b143b8e5462:_73899a4de8f83c8d2c26f545;
      
      private var _091c106cd3083b3cd471bdf1:_73899a4de8f83c8d2c26f545;
      
      private var _49e5c26350b13e5fb02eef40:_73899a4de8f83c8d2c26f545;
      
      private var _f3af575fb4f8fef2e2c12e8b:_73899a4de8f83c8d2c26f545;
      
      private var _0787183c37d0cca03f7f037e:_73899a4de8f83c8d2c26f545;
      
      private var _de8afae1d39edd855b04b052:_73899a4de8f83c8d2c26f545;
      
      private var _0522f104e900d349e71ee42c:DisplayObject;
      
      private var _e47e2d160f512e24667c397c:_8504a663c275f49191c30b9b;
      
      public function _4488b7b383914efb9281d7a4(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set isTournamentInProgress(param1:Boolean) : void
      {
         this._0522f104e900d349e71ee42c.visible = param1;
         this._091c106cd3083b3cd471bdf1.source.visible = param1;
         this._e47e2d160f512e24667c397c.source.visible = param1;
         this._f3af575fb4f8fef2e2c12e8b.source.visible = param1;
         this._0787183c37d0cca03f7f037e.source.visible = param1;
         this._de8afae1d39edd855b04b052.source.visible = param1;
      }
      
      public function get buttonHistory() : FrameButtonWrapper
      {
         return this._5dca668556a9fe5d1f5390db;
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._e47e2d160f512e24667c397c;
      }
      
      public function set tournamentType(param1:String) : void
      {
         var _loc2_:String = _f3277cf8667e55e52c907b59._9117f8c49f853b1b37e6d7eb(param1);
         this._49e5c26350b13e5fb02eef40.text = _c2ad9d37d7be0097d6d2e977.get(_loc2_);
         this._091c106cd3083b3cd471bdf1.text = _c2ad9d37d7be0097d6d2e977.get(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._78cbc0feffe81b143b8e5462.text = param1;
      }
      
      public function set timeLeft(param1:int) : void
      {
         param1 = Math.max(param1,-1737495034 ^ 0x7F93630E ^ 0x25F9A7E7 ^ -1039848721);
         this._0787183c37d0cca03f7f037e.text = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(param1);
      }
      
      private function init() : void
      {
         this._78cbc0feffe81b143b8e5462 = _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊刳劰势勿劑办勠剿刡劖力勖勗劎剢剙割勡剼刘劆剂剅剛刮","別劔刄勅劲刯勯劤劃剒勗制剛劧劇剦"),null);
         this._091c106cd3083b3cd471bdf1 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掖挃揪换挆揣挜揮捙掗捕掓挛换挗捱揤挠挮掀挓接揚掗掌捠揻挼捓掬掄捋握授捇揞掭挺捈捓揸挩揂捣掅接","挚揚捯挃挩揎捦掐掞掦描掷揄挞挍掘"),null);
         this._de8afae1d39edd855b04b052 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႼႏჷၾႲျၚဘႬျჭန႙ဿ႟ဋဆჂ႟მტ჊ეႵ၂ს","ႵჁიႅპჂၢ၎ႥჇၵბჸნဨი"),_85b2141a2303f6545d411d7a.EST_CLUB_RANKINGS_NOTE);
         this._d667a678d897c0b7d409b7bb();
         this._5dca668556a9fe5d1f5390db = _092050566a3adcf2725382ab(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶勒勃劔劮剮剳勿剕勶刡剐勹効劌刊剁勛刐勨刹刕刎劵勣勡勛剴剮剂刘劍勧力","劑剴刭劚勣勝劇剛制劖剀勡劫剭券剿"));
         this._5dca668556a9fe5d1f5390db.label = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_BUTTON_TOURNAMENT_HISTORY);
         this._f3af575fb4f8fef2e2c12e8b = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掷揱掿捇揇掉捒捤掵捬挻揔掟揸挿捱捇揨挟揧指捴挬掽揇挙振揈掲揷捖挐掶捦","捫掉掸捫揩掆挾挦揙挆掐捸挏控捠捖"),_85b2141a2303f6545d411d7a.EST_COMMON_TIME_LEFT);
         this._0787183c37d0cca03f7f037e = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("援揠掹掔挰握揟掹捍掴捤揤挑捵挊揉挠掗揼挖掻掳揁挟挿掠捑掔捨挧挚捌揇援掂授捉挪挩揩挝授掔挣","捰挦掻挹揉挗捴揃捷捙揸掟挰挂捞掐"),null);
         this._e47e2d160f512e24667c397c = new _8504a663c275f49191c30b9b(controller,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揅挅捣揝捹挶控掜揢掜掌掸捽揗捲掌揀捳掑挓挮揯揫揗揹挮挰揤捊揶捕挡揧挖挶指","持捧揿挌揫掙挎措採掐挧掬掜挶捙挭")));
      }
      
      private function _d667a678d897c0b7d409b7bb() : void
      {
         this._0522f104e900d349e71ee42c = Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣捓捃揇排捫捶提挦捚揵掌捍掘捛捣揕揤挸捕揽挦捃揹挖挟換挲握掝捚捗挠掜掝捍","捿揼揾捳挫揀挂挙捊挺捞挫探揶捙揬"));
         var _loc1_:_73899a4de8f83c8d2c26f545 = _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挷掾捇挂揬捒掸挽捺揊掔掗挨捛捨探揅揯挄掩揶掃捽挞挳揸掣捓揦捑","捧揖掏掄挴揈掕揮掣描按揢捰捾捺挾"),null,this._0522f104e900d349e71ee42c);
         _loc1_.text = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱捔揤掽捼揑挄揕掭揥","捋捖掞掬挬揟挷挸掩掹捼揀捠揭揻接");
         this._49e5c26350b13e5fb02eef40 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ეႯၺယნႤိ၌Ⴠၜჟဦဗც၇ၘုდ႞ႇႬဋႇს၀႗","ၒ၆၂ჱ႑ခဋჃံჵႁႆၞჅႉဵ"),null,this._0522f104e900d349e71ee42c);
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕揹挆揅挃掗挝掀措揱挽捆持推揥揜捋捙掝揹掐掮掊掖掼挵捄挄捋揍揽揅揕挘","挞掮挸揍揠掼挒握捈捺挗挴捂捎掆掻"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_CLUB,this._0522f104e900d349e71ee42c);
         _4bba52ae9618ef515b6267ea(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹刽劣劼刓則剀勣剎劽劌剟勍刑刮剠勦刼劣勓勐劝劧効勜劇剈劆剴剩","刀副剒劵剈剝劻剘劆判劕创则助劑副"),_85b2141a2303f6545d411d7a.EST_COMMON_REWARD,this._0522f104e900d349e71ee42c);
      }
   }
}


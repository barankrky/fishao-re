package com.ax3.fishao.view.dialogs.club.pages.info
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _cad6b9236e6b3f30ad336974 extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _43f6a8d846eaad4cdb02ac6a:DisplayObjectContainer;
      
      private var _428d98ba6983a8a2104be7d9:TextField;
      
      private var _1a9aa4851f7342d540af08ca:_8504a663c275f49191c30b9b;
      
      public function _cad6b9236e6b3f30ad336974(param1:_e2bbbb1ef110bb0aa28b913f, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._1a9aa4851f7342d540af08ca;
      }
      
      public function get viewInfo() : DisplayObjectContainer
      {
         return this._43f6a8d846eaad4cdb02ac6a;
      }
      
      public function set description(param1:String) : void
      {
         this._428d98ba6983a8a2104be7d9.text = param1;
      }
      
      private function init() : void
      {
         this._43f6a8d846eaad4cdb02ac6a = Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掔捳揞揆揭捤挑掸掗捯接揉挌掱挚捠掻掹捻援挼捑揲插","捗挽捤挻揈挥揊挢挭挐捾捨持揿揄挧"));
         this._428d98ba6983a8a2104be7d9 = Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勼劣勹勋刲刍剕劄剱加剾创剁勼劏剄剡務劀剁剫勼劕劇劄勊勒勨刚刞劆功剴分刟则分判勸劍","劗剔刻劍勲勄劒劃剼劁刑別刮勡刂勼"));
         this._1a9aa4851f7342d540af08ca = new _8504a663c275f49191c30b9b(this.controller,Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剌剥劲劮募刬刽勃剜剆則劸勴刌剟剌功刚剴剩削剥劍剘勩勓剣剫剋切刿刅刎动切劭","刓勲剉劻劜勌刕刍剠刄剁劙劂勂勲刲")));
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掞挔掩捝挚挭揉挳揑挚掑控揷挎掠挋捼揉掮捆揪掂捯揑挰捹揁捪探捹揦挗揝掛插挮挪掁排挻挮挱掅揽挈挢捕掞揿掇","掴揓捂捝揋掫捀揇捼挆捎挙挙掷揉挜"),_85b2141a2303f6545d411d7a.EST_CLUB_DESCRIPTION_TITLE);
         _4bba52ae9618ef515b6267ea(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捉捓挭捃掑捣揷掊捗握揽挥掰揆捭採揀挝掋掇捕捠挈揁掹揤掍挢挻挡挧授","挺掏捜掿捐揺捏挦捉挧挶掽挺挊捹揝"),_85b2141a2303f6545d411d7a.EST_CLUB_COLUMN_CLUB_MEMBERS,Debug.assertProperty(this.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握揢据揎挜挌揉捕挦揜掅揵挕捖掾掞捞挸捦揰捙挽持掓掵挾插捣捾揑揲揮掽挥掦捿掾挷掣揸握掲","掖挛揂掶捞排挓揓换掰挜捘掙提挦揷")));
      }
   }
}


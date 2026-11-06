package com.ax3.fishao.view.panels.user_popup
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.utils._df2c6e8ee0d2bb24003d9c55;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._f0bf8b8194e79c9122458f74;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.get_user_club.ResponseClubsGetUserClub;
   
   public class _92885560496ae9c2acd16824 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _31996fd67bf7b561fe835e3a:int;
      
      protected var _view:_63c02c32a32326e037dd7aee = new _63c02c32a32326e037dd7aee(this);
      
      protected var _entity:_08c120b706560fce9302bcab;
      
      private var _781930cc07c74d03449235fb:_8a55e6919385386ebc54f870;
      
      private var _469ca9a25dcaf34ef86d7498:Number;
      
      private var _7aad1355f279716be035ec2c:_518280cac6f3ae016ad4f350;
      
      public function _92885560496ae9c2acd16824(param1:_08c120b706560fce9302bcab)
      {
         super(this._view);
         this._469ca9a25dcaf34ef86d7498 = -623664967 ^ 0x214BD0A2 ^ -1757481162 ^ 0x6CA6872D;
         this._entity = param1;
         this.init();
      }
      
      protected function set isGuest(param1:Boolean) : void
      {
         this._view.isGuest = param1;
      }
      
      public function set buttonPmVisible(param1:Boolean) : void
      {
         this._view.buttonPmVisible = param1;
      }
      
      public function set level(param1:int) : void
      {
         this._view.level = param1;
      }
      
      private function get login() : String
      {
         return this._entity.locationUser.username;
      }
      
      private function _ed79cfde8ad77941198d40d6(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseClubsGetUserClub = null;
         var _loc3_:Object = null;
         if(this._entity == null || this._entity.locationUser == null)
         {
            return;
         }
         if(param1 is ResponseError)
         {
            this._781930cc07c74d03449235fb = null;
         }
         else
         {
            _loc2_ = param1 as ResponseClubsGetUserClub;
            _loc3_ = _loc2_.clubInfo;
            if(_loc3_ == null)
            {
               this._781930cc07c74d03449235fb = null;
            }
            else
            {
               this._781930cc07c74d03449235fb = new _8a55e6919385386ebc54f870();
               this._781930cc07c74d03449235fb.deserialize(_loc3_);
            }
         }
         this._1808a7eea07f500412920d35(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勹剳剷刞勉劮務労劦剣剙勊剡劥剉刈刏刌劀刮剱勻刹勵","剅剾刋剒勫勂创删剥劯分刪勖刽剜刐"));
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_c6dd57dd12cf02bae4594249 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.currentView.buttonClose:
                  §§push(0x4D4ED89C ^ 0x25758304 ^ -1814650015 ^ -68290311);
                  break;
               case this._view.currentView.buttonPM:
                  §§push(-767884664 ^ -1099534763 ^ 0x376FF0B2 ^ 0x5B229C6E);
                  break;
               case this._view.currentView.buttonProfile:
                  §§push(0x2682BA5E ^ -453875962 ^ -1325174681 ^ 0x7373AD3D);
                  break;
               case this._view.currentView.viewEmblem:
                  §§push(0x20D5A733 ^ -844250557 ^ 0x461D0224 ^ -1419417769);
                  break;
               default:
                  §§push(0x32D521C0 ^ 0x1A7DCF19 ^ -86449359 ^ -764408340);
            }
            switch(§§pop())
            {
               case 0:
                  this._ba7fe333230ac51496d90cb8();
                  _loc4_ = true;
                  break;
               case 1:
                  this._9cd32f7980c1f022195a4ee6();
                  _loc4_ = true;
                  break;
               case 2:
                  this._11927dc817f591a4dec96c5a();
                  _loc4_ = true;
                  break;
               case 3:
                  if(!app.user.isGuest)
                  {
                     _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_c6dd57dd12cf02bae4594249);
                     _loc3_.entity = this._781930cc07c74d03449235fb;
                     _loc3_.show();
                  }
                  _loc4_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      protected function _ba7fe333230ac51496d90cb8() : void
      {
         this._view.source.visible = false;
      }
      
      protected function _9cd32f7980c1f022195a4ee6() : void
      {
         var _loc1_:_f0bf8b8194e79c9122458f74 = app.dialogFactory._0b51743fd74146c6929027c6();
         _loc1_._8d7cc3ca3d5f53924c2f380a(this.login);
      }
      
      protected function _11927dc817f591a4dec96c5a() : void
      {
         GameSwf.profileSwfDialog = _fa8d5efc34d8920757369351._90c56d60a54f9a591b9a2af2(this.login);
      }
      
      private function init() : void
      {
         this._7aad1355f279716be035ec2c = GameSwf.instance.managerClubs;
         this._31996fd67bf7b561fe835e3a = -493677012 ^ -999894267 ^ 0x760324AB ^ -1358356867;
         this._view.login = this.login;
         this._view.level = this._entity.locationUser.level;
      }
      
      public function hide() : void
      {
         var _loc1_:Object = {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勛力刋剰刍剮创列到劧勭刵剪剌勥剈刳劧","創労劫勏勚勛剅剐剓劻勱剉剘創剅刯")):0x59B24852 ^ 0x5067803E ^ 0x13491024 ^ 0x1A9CD848,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓務势劓勸勍剈刈勰剣剙勢勎剆勵創剑刻","勅劍刾剝券剺利勸剐劽剌削刞剷劀劬")):_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掴掷掜揄挽掽掲捷揤掶挝捰採掉捋挢掌挕挟捓捗掩捆捷","揕挫揈推捺捚捍掇按揊挶捨揂捹挽插"),
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ေ႗ჀႹლ၌ႡႠჶးဢၪၛ႞ႝသႍဗႨ၁ယဦဂဩჷၽძႻ","჉ၱဴუღဣ်თႾႲႬ႙჋ဲႮဒ")):this._ba7fe333230ac51496d90cb8
         };
         TweenMax.to(this._view.source,0x1E5F7CCF ^ 0x181280DC ^ -2025170372 ^ -2130205138,_loc1_);
         this._e1d0dc3f06ef62f5c3ed47ee();
      }
      
      public function show() : void
      {
         var _loc1_:Number = new Date().time;
         if(this.login == app.user.username)
         {
            this._781930cc07c74d03449235fb = this._7aad1355f279716be035ec2c.userClub;
            this._1808a7eea07f500412920d35();
         }
         else if(_loc1_ - this._469ca9a25dcaf34ef86d7498 > (-2021140652 ^ -2139156571 ^ -1442526286 ^ -1375988865) * (0x535B19CE ^ -80587998 ^ 0x6DD0628E ^ -977720438))
         {
            this._469ca9a25dcaf34ef86d7498 = _loc1_;
            this._7aad1355f279716be035ec2c.getClubInfoFor(this.login,this._ed79cfde8ad77941198d40d6);
         }
         else
         {
            this._1808a7eea07f500412920d35();
         }
      }
      
      protected function _1808a7eea07f500412920d35(param1:Number = 0.25) : void
      {
         this._e1d0dc3f06ef62f5c3ed47ee();
         this.isGuest = _df2c6e8ee0d2bb24003d9c55._9c84c889b9ec02b85eda61e8(this.login) || Boolean(app.user.isGuest);
         if(this._781930cc07c74d03449235fb == null)
         {
            this._view.userInClub = false;
         }
         else
         {
            this._view.userInClub = true;
            this._view.clubName = this._781930cc07c74d03449235fb.name;
            this._view.emblemID = this._781930cc07c74d03449235fb.emblemID;
         }
         this._view.source.visible = true;
         var _loc2_:Object = {
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捗挻掼揽揕掙揦挐揳挾挗挞揷挜挿指挶掺","掍揅挙掤捠推按插揆掕挩援捵挟揃挴")):0x0F1B6201 ^ 0x66382DE3 ^ -1850960179 ^ -124790482,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဍႫဲძႪ၈ძუၚჂထ၍ဘ်ჷဟဓၿ","Ⴛ၍၃လညါဃွუႃဿნჽდႝ႑")):param1
         };
         TweenMax.to(this._view.source,-727789673 ^ 0x134CDDF7 ^ -1354568745 ^ 0x6890F9B6,_loc2_);
         this._31996fd67bf7b561fe835e3a = setTimeout(this.hide,(-1452260106 ^ 0x6EC08929 ^ 0x5F74C518 ^ -1731983166) * (-132915367 ^ 0x59D0FF6C ^ -1642840809 ^ 0x3FD71ECA));
      }
      
      protected function _e1d0dc3f06ef62f5c3ed47ee() : void
      {
         var _loc1_:int = -1950438307 ^ -126046100 ^ 0x467AEDDA ^ 0x1F4A8616;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0xF95CD6 ^ 0x6A1C2B18 ^ -1117409478 ^ -42815736))
            {
               case 0:
                  return;
               case 1:
                  if(this._31996fd67bf7b561fe835e3a == (-1970896336 ^ 0x054B57CB ^ -1093444139 ^ -824084527))
                  {
                     _loc1_ = -1306796032 ^ -1827821923 ^ -1073681274 ^ -874193433;
                  }
                  else
                  {
                     _loc1_ = -2090860327 ^ -2037925273 ^ 0x4058CE10 ^ 0x6F4D0350;
                  }
                  break;
               case 2:
                  clearTimeout(this._31996fd67bf7b561fe835e3a);
                  this._31996fd67bf7b561fe835e3a = -385294463 ^ -468204160 ^ 0x114F4940 ^ -475026242;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._e1d0dc3f06ef62f5c3ed47ee();
         this._view = null;
         this._entity = null;
         this._781930cc07c74d03449235fb = null;
         this._7aad1355f279716be035ec2c = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}


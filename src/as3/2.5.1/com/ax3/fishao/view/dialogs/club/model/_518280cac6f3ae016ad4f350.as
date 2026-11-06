package com.ax3.fishao.view.dialogs.club.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.club_area._d5b5fd2cb7b428793abaa639;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.club_inside._e9af49bc0716fd8d9302dd14;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.utils.Dictionary;
   import protocol.api.clubs.FscExtensionClubs;
   import protocol.api.clubs.actions_member.join.ResponseClubsJoin;
   import protocol.api.clubs.actions_member.leave.ResponseClubsLeave;
   import protocol.api.clubs.init.ResponseClubsInit;
   import protocol.api.clubs.update_info.ResponseClubsUpdateInfo;
   
   public class _518280cac6f3ae016ad4f350 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _0712a63ca934f827ffc91af0:Dictionary;
      
      private var _96d19d85555d51374e9e4dd9:int;
      
      private var _2c00baae6f302d06c3f9116e:_8a55e6919385386ebc54f870;
      
      private var _572a687ab622fb7ca7b783ec:Dictionary;
      
      private var _8863d48110a24c74a686e336:FscExtensionClubs;
      
      private var _220be37425ae9480147e4abe:int;
      
      public function _518280cac6f3ae016ad4f350()
      {
         super();
         this.init();
      }
      
      public function get userClub() : _8a55e6919385386ebc54f870
      {
         return this._2c00baae6f302d06c3f9116e;
      }
      
      public function get userInClub() : Boolean
      {
         return this._2c00baae6f302d06c3f9116e != null;
      }
      
      public function get isUserLeader() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._2c00baae6f302d06c3f9116e != null)
         {
            _loc1_ = this._2c00baae6f302d06c3f9116e.leaderLogin == app.user.username;
         }
         return _loc1_;
      }
      
      public function get levelMax() : int
      {
         return this._96d19d85555d51374e9e4dd9;
      }
      
      public function get createCost() : int
      {
         return this._220be37425ae9480147e4abe;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0x2F6F9A3C ^ -920942445 ^ 0x744EB2D4 ^ -1841651589;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc4_:ResponseClubsInit = param1 as ResponseClubsInit;
         if(_loc4_.clubInfo != null)
         {
            this._2c00baae6f302d06c3f9116e = this._4aee09553ce2875cf1bab623(_loc4_.clubInfo);
         }
         this._220be37425ae9480147e4abe = _loc4_.createCost;
         var _loc5_:Array = _loc4_.levelsData;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဇဠ჆ႰဇჵဍႻႌႺၠဍႵ჎ၮၵႮဤ","ႱႽႶႢჲჿჷჃႁၿၼ၈ႇ၇ၠႈ"));
            this._0712a63ca934f827ffc91af0[_loc3_] = _loc2_;
            this._96d19d85555d51374e9e4dd9 = Math.max(this._96d19d85555d51374e9e4dd9,_loc3_);
         }
      }
      
      private function _a425fcb7898e6d8fed7e177a(param1:ResponseClubsUpdateInfo) : void
      {
         if(this._2c00baae6f302d06c3f9116e == null)
         {
            return;
         }
         this._2c00baae6f302d06c3f9116e.deserialize(param1.clubInfo);
         var _loc2_:_d5b5fd2cb7b428793abaa639 = GameSwf.currentLocationDialog as _d5b5fd2cb7b428793abaa639;
         if(_loc2_ != null)
         {
            _loc2_._5c49ec0db78d68f0bb897b76();
         }
      }
      
      private function _08149578a4dfb49f2eb7be4a(param1:ResponseClubsJoin) : void
      {
         this._2c00baae6f302d06c3f9116e = this._4aee09553ce2875cf1bab623(param1.clubInfo);
      }
      
      private function _3d60f228a2b553f2b665d0cd(param1:ResponseClubsLeave) : void
      {
         var _loc2_:_c6dd57dd12cf02bae4594249 = null;
         if(this._2c00baae6f302d06c3f9116e == null)
         {
            return;
         }
         var _loc3_:Boolean = false;
         var _loc4_:_8071087ebe26c264282580d0 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_e9af49bc0716fd8d9302dd14);
         if(_loc4_ != null)
         {
            _loc4_.close();
            _loc3_ = !this.isUserLeader;
         }
         var _loc5_:_c6dd57dd12cf02bae4594249 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_c6dd57dd12cf02bae4594249) as _c6dd57dd12cf02bae4594249;
         if(_loc5_ != null && _loc5_.entity.ID == this._2c00baae6f302d06c3f9116e.ID)
         {
            _loc5_.close();
         }
         var _loc6_:_8071087ebe26c264282580d0 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_6e3e496e7a4ab1988577523d);
         if(_loc6_ != null)
         {
            _loc6_.close();
         }
         var _loc7_:_8a55e6919385386ebc54f870 = this._2c00baae6f302d06c3f9116e;
         var _loc8_:int = this._2c00baae6f302d06c3f9116e.ID;
         delete this._572a687ab622fb7ca7b783ec[_loc8_];
         this._2c00baae6f302d06c3f9116e = null;
         if(_loc3_)
         {
            _loc2_ = app.dialogFactory._a0d214350fb42da9f32557e6(_c6dd57dd12cf02bae4594249);
            _loc2_.entity = _loc7_;
            _loc2_.show();
         }
         var _loc9_:_d5b5fd2cb7b428793abaa639 = GameSwf.currentLocationDialog as _d5b5fd2cb7b428793abaa639;
         if(_loc9_ != null)
         {
            GameSwf.instance._e4c0a8256604a3984faf9862(_loc9_.locationModel.prevLocationID);
         }
      }
      
      private function init() : void
      {
         this._0712a63ca934f827ffc91af0 = new Dictionary(true);
         this._572a687ab622fb7ca7b783ec = new Dictionary(true);
         this._8863d48110a24c74a686e336 = _dfa25706e58a240c1e33e5c6.fscModel.extensionClubs;
         _remoteExtension = this._8863d48110a24c74a686e336;
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseClubsUpdateInfo,this._a425fcb7898e6d8fed7e177a);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseClubsJoin,this._08149578a4dfb49f2eb7be4a);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseClubsLeave,this._3d60f228a2b553f2b665d0cd);
      }
      
      public function _b8d84096df59019d1d24ecdc(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this._2c00baae6f302d06c3f9116e != null)
         {
            _loc2_ = this._2c00baae6f302d06c3f9116e.ID == param1;
         }
         return _loc2_;
      }
      
      public function _635253f13b6f6f377142cfbd(param1:int) : int
      {
         var _loc2_:int = 0x133E10A6 ^ -963241543 ^ 0x2147E6AB ^ 0x0B10104B;
         var _loc3_:Object = this._0712a63ca934f827ffc91af0[param1];
         if(_loc3_ != null)
         {
            _loc2_ = Debug.assertProperty(_loc3_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剔劐剿劫刮分刐剁剝助剼劅剞劰刢刧刀劁剎删勫勌判劋助勐劍刍剗劅","劽勲劌刐列勚刪劵劈刕券划功务刎勘"));
         }
         return _loc2_;
      }
      
      public function _9be911f3542f4c086c63669e(param1:int) : int
      {
         var _loc2_:int = -1535252954 ^ 0x066FA99E ^ 0x1C42C338 ^ 0x41AF737F;
         var _loc3_:Object = this._0712a63ca934f827ffc91af0[param1];
         if(_loc3_ != null)
         {
            _loc2_ = Debug.assertProperty(_loc3_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("努刏勘劗刳勥劾剎勃劒勠勁劎剑剛删剪勿","剁刊剾劽勚利劘剛劒劫剷剶勔努勰勃"));
         }
         return _loc2_;
      }
      
      private function _4aee09553ce2875cf1bab623(param1:Object) : _8a55e6919385386ebc54f870
      {
         var _loc2_:_8a55e6919385386ebc54f870 = new _8a55e6919385386ebc54f870();
         _loc2_.deserialize(param1);
         this._572a687ab622fb7ca7b783ec[_loc2_.ID] = _loc2_;
         return _loc2_;
      }
      
      public function createClub(param1:String, param2:String, param3:int, param4:String, param5:int, param6:Function) : void
      {
         this._8863d48110a24c74a686e336.createClub(param1,param2,param3,param4,param5,param6);
      }
      
      public function loadDataForPage(param1:String, param2:Function, param3:Object = null) : void
      {
         this._8863d48110a24c74a686e336.loadDataForPage(param1,param2,param3);
      }
      
      public function loadDataForTabsPages(param1:int, param2:Function) : void
      {
         this._8863d48110a24c74a686e336.loadDataForTabsPages(param1,param2);
      }
      
      public function joinTo(param1:int, param2:Function) : void
      {
         this._8863d48110a24c74a686e336.joinTo(param1,param2);
      }
      
      public function leaveFromClub(param1:Function) : void
      {
         this._8863d48110a24c74a686e336.leaveFromClub(param1);
      }
      
      public function upgradeClubLevel(param1:Function) : void
      {
         this._8863d48110a24c74a686e336.upgradeClubLevel(param1);
      }
      
      public function updateInfo(param1:int, param2:String, param3:String, param4:int, param5:Function) : void
      {
         this._8863d48110a24c74a686e336.updateInfo(param1,param2,param3,param4,param5);
      }
      
      public function kickMember(param1:String, param2:Function) : void
      {
         this._8863d48110a24c74a686e336.kickMember(param1,param2);
      }
      
      public function approveMember(param1:String, param2:Function) : void
      {
         this._8863d48110a24c74a686e336.approveMember(param1,param2);
      }
      
      public function rejectMember(param1:String, param2:Function) : void
      {
         this._8863d48110a24c74a686e336.rejectMember(param1,param2);
      }
      
      public function getTournamentHistory(param1:Function) : void
      {
         this._8863d48110a24c74a686e336.getTournamentHistory(param1);
      }
      
      public function getGoalHistory(param1:Function) : void
      {
         this._8863d48110a24c74a686e336.getGoalHistory(param1);
      }
      
      public function getClubInfoFor(param1:String, param2:Function) : void
      {
         this._8863d48110a24c74a686e336.getClubInfoFor(param1,param2);
      }
   }
}


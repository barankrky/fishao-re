package com.ax3.fishao.view.dialogs.club.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.club_area.LocationDialogClubArea;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.club_inside.DialogClubInside;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.utils.Dictionary;
   import protocol.api.clubs.FscExtensionClubs;
   import protocol.api.clubs.actions_member.join.ResponseClubsJoin;
   import protocol.api.clubs.actions_member.leave.ResponseClubsLeave;
   import protocol.api.clubs.init.ResponseClubsInit;
   import protocol.api.clubs.update_info.ResponseClubsUpdateInfo;
   
   public class ManagerClubs extends ManagerBase
   {
      
      private var _levelsInfosMap:Dictionary;
      
      private var _levelMax:int;
      
      private var _userClub:ClubInfo;
      
      private var _clubsMap:Dictionary;
      
      private var _extensionClubs:FscExtensionClubs;
      
      private var _createCost:int;
      
      public function ManagerClubs()
      {
         super();
         this.init();
      }
      
      public function get userClub() : ClubInfo
      {
         return this._userClub;
      }
      
      public function get userInClub() : Boolean
      {
         return this._userClub != null;
      }
      
      public function get isUserLeader() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._userClub != null)
         {
            _loc1_ = this._userClub.leaderLogin == app.user.username;
         }
         return _loc1_;
      }
      
      public function get levelMax() : int
      {
         return this._levelMax;
      }
      
      public function get createCost() : int
      {
         return this._createCost;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         super.onInitDataLoaded(param1);
         var _loc4_:ResponseClubsInit = param1 as ResponseClubsInit;
         if(_loc4_.clubInfo != null)
         {
            this._userClub = this.createClubAndAddToMap(_loc4_.clubInfo);
         }
         this._createCost = _loc4_.createCost;
         var _loc5_:Array = _loc4_.levelsData;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"level");
            this._levelsInfosMap[_loc3_] = _loc2_;
            this._levelMax = Math.max(this._levelMax,_loc3_);
         }
      }
      
      private function onInfoUpdated(param1:ResponseClubsUpdateInfo) : void
      {
         if(this._userClub == null)
         {
            return;
         }
         this._userClub.deserialize(param1.clubInfo);
         var _loc2_:LocationDialogClubArea = GameSwf.currentLocationDialog as LocationDialogClubArea;
         if(_loc2_ != null)
         {
            _loc2_.updateViews();
         }
      }
      
      private function onUserJoin(param1:ResponseClubsJoin) : void
      {
         this._userClub = this.createClubAndAddToMap(param1.clubInfo);
      }
      
      private function onUserLeave(param1:ResponseClubsLeave) : void
      {
         var _loc2_:DialogClubInfoOutside = null;
         if(this._userClub == null)
         {
            return;
         }
         var _loc3_:Boolean = false;
         var _loc4_:FishaoBaseSwfDialog = GameSwf.instance.getOpenedPopup(DialogClubInside);
         if(_loc4_ != null)
         {
            _loc4_.close();
            _loc3_ = !this.isUserLeader;
         }
         var _loc5_:DialogClubInfoOutside = GameSwf.instance.getOpenedPopup(DialogClubInfoOutside) as DialogClubInfoOutside;
         if(_loc5_ != null && _loc5_.entity.ID == this._userClub.ID)
         {
            _loc5_.close();
         }
         var _loc6_:FishaoBaseSwfDialog = GameSwf.instance.getOpenedPopup(ProfileSwfDialog);
         if(_loc6_ != null)
         {
            _loc6_.close();
         }
         var _loc7_:ClubInfo = this._userClub;
         var _loc8_:int = this._userClub.ID;
         delete this._clubsMap[_loc8_];
         this._userClub = null;
         if(_loc3_)
         {
            _loc2_ = app.dialogFactory.getDialog(DialogClubInfoOutside);
            _loc2_.entity = _loc7_;
            _loc2_.show();
         }
         var _loc9_:LocationDialogClubArea = GameSwf.currentLocationDialog as LocationDialogClubArea;
         if(_loc9_ != null)
         {
            GameSwf.instance.exitVirtualLocationThroughDoor(_loc9_.locationModel.prevLocationID);
         }
      }
      
      private function init() : void
      {
         this._levelsInfosMap = new Dictionary(true);
         this._clubsMap = new Dictionary(true);
         this._extensionClubs = FishaoFscModelManager.fscModel.extensionClubs;
         _remoteExtension = this._extensionClubs;
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseClubsUpdateInfo,this.onInfoUpdated);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseClubsJoin,this.onUserJoin);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseClubsLeave,this.onUserLeave);
      }
      
      public function isUserInClubWithID(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this._userClub != null)
         {
            _loc2_ = this._userClub.ID == param1;
         }
         return _loc2_;
      }
      
      public function getMembersMax(param1:int) : int
      {
         var _loc2_:int = -1;
         var _loc3_:Object = this._levelsInfosMap[param1];
         if(_loc3_ != null)
         {
            _loc2_ = Debug.assertProperty(_loc3_,"members_max");
         }
         return _loc2_;
      }
      
      public function getPriceForUpgradeTo(param1:int) : int
      {
         var _loc2_:int = -1;
         var _loc3_:Object = this._levelsInfosMap[param1];
         if(_loc3_ != null)
         {
            _loc2_ = Debug.assertProperty(_loc3_,"price");
         }
         return _loc2_;
      }
      
      private function createClubAndAddToMap(param1:Object) : ClubInfo
      {
         var _loc2_:ClubInfo = new ClubInfo();
         _loc2_.deserialize(param1);
         this._clubsMap[_loc2_.ID] = _loc2_;
         return _loc2_;
      }
      
      public function createClub(param1:String, param2:String, param3:int, param4:String, param5:int, param6:Function) : void
      {
         this._extensionClubs.createClub(param1,param2,param3,param4,param5,param6);
      }
      
      public function loadDataForPage(param1:String, param2:Function, param3:Object = null) : void
      {
         this._extensionClubs.loadDataForPage(param1,param2,param3);
      }
      
      public function loadDataForTabsPages(param1:int, param2:Function) : void
      {
         this._extensionClubs.loadDataForTabsPages(param1,param2);
      }
      
      public function joinTo(param1:int, param2:Function) : void
      {
         this._extensionClubs.joinTo(param1,param2);
      }
      
      public function leaveFromClub(param1:Function) : void
      {
         this._extensionClubs.leaveFromClub(param1);
      }
      
      public function upgradeClubLevel(param1:Function) : void
      {
         this._extensionClubs.upgradeClubLevel(param1);
      }
      
      public function updateInfo(param1:int, param2:String, param3:String, param4:int, param5:Function) : void
      {
         this._extensionClubs.updateInfo(param1,param2,param3,param4,param5);
      }
      
      public function kickMember(param1:String, param2:Function) : void
      {
         this._extensionClubs.kickMember(param1,param2);
      }
      
      public function approveMember(param1:String, param2:Function) : void
      {
         this._extensionClubs.approveMember(param1,param2);
      }
      
      public function rejectMember(param1:String, param2:Function) : void
      {
         this._extensionClubs.rejectMember(param1,param2);
      }
      
      public function getTournamentHistory(param1:Function) : void
      {
         this._extensionClubs.getTournamentHistory(param1);
      }
      
      public function getGoalHistory(param1:Function) : void
      {
         this._extensionClubs.getGoalHistory(param1);
      }
      
      public function getClubInfoFor(param1:String, param2:Function) : void
      {
         this._extensionClubs.getClubInfoFor(param1,param2);
      }
   }
}


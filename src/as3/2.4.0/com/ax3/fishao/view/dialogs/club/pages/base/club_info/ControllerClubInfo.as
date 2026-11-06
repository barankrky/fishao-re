package com.ax3.fishao.view.dialogs.club.pages.base.club_info
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.requirements.FactoryRequirement;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member.HelperClubJoin;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member.HelperClubLeave;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_member.HelperClubUpgrade;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.EClubType;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.brokenfunction.json.decodeJson;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerClubInfo extends Controller
   {
      
      private var _managerClubs:ManagerClubs;
      
      private var _view:ViewClubInfo;
      
      private var _clubType:String;
      
      private var _clubID:int;
      
      private var _membersCountMax:int;
      
      private var _membersCount:int;
      
      private var _requirements:Array;
      
      private var _level:int;
      
      private var _helperJoin:HelperClubJoin;
      
      private var _helperLeave:HelperClubLeave;
      
      private var _helperUpgrade:HelperClubUpgrade;
      
      public function ControllerClubInfo(param1:DisplayObjectContainer)
      {
         this._view = new ViewClubInfo(this,param1);
         super(this._view);
         this.init();
      }
      
      public function set membersCount(param1:int) : void
      {
         if(this._membersCount == param1)
         {
            return;
         }
         this._membersCount = param1;
         this._helperLeave.membersCount = this._membersCount;
         this._view.setMembers(this._membersCount,this._membersCountMax);
      }
      
      public function set clubData(param1:Object) : void
      {
         this._view.points = Debug.assertProperty(param1,"points");
         this._clubID = Debug.assertProperty(param1,"id");
         this._clubType = Debug.assertProperty(param1,"type");
         this._level = Debug.assertProperty(param1,"level");
         var _loc2_:Array = Debug.assertProperty(param1,"members");
         this.membersCount = _loc2_.length;
         this._view.emblemID = Debug.assertProperty(param1,"emblem_id");
         var _loc3_:int = Debug.assertProperty(param1,"club_fishes_unlocked");
         var _loc4_:int = Debug.assertProperty(param1,"club_fishes_total");
         this._view.setFishes(_loc3_,_loc4_);
         var _loc5_:ClubInfo = new ClubInfo();
         _loc5_.deserialize(param1);
         this._helperJoin.clubInfo = _loc5_;
         this._helperLeave.possibleLeaderInfo = param1["possible_leader"];
         this._helperUpgrade.level = this._level;
         this.initRequirements(param1["requirements"]);
         this.updateLevelData();
         this.updateButtonJoin();
         this.updateButtonLeave();
         this.updateButtonUpgrade();
      }
      
      private function initRequirements(param1:String) : void
      {
         if(UtilsString.isNullOrEmpty(param1))
         {
            return;
         }
         var _loc2_:Object = decodeJson(param1);
         this._requirements = FactoryRequirement.createRequirements(_loc2_);
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonJoin:
                  this._helperJoin.doAction();
                  _loc3_ = true;
                  break;
               case this._view.buttonLeave:
                  this._helperLeave.doAction();
                  _loc3_ = true;
                  break;
               case this._view.buttonUpgrade:
                  this._helperUpgrade.doAction(this.onLevelUpgraded);
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function onLevelUpgraded() : void
      {
         ++this._level;
         this._helperUpgrade.level = this._level;
         this.updateButtonUpgrade();
         this.updateLevelData();
      }
      
      private function init() : void
      {
         this._managerClubs = GameSwf.instance.managerClubs;
         this._helperJoin = new HelperClubJoin();
         this._helperLeave = new HelperClubLeave();
         this._helperUpgrade = new HelperClubUpgrade();
      }
      
      private function updateButtonJoin() : void
      {
         var _loc1_:Boolean = false;
         _loc1_ ||= this._managerClubs.userInClub;
         _loc1_ ||= this._clubType == EClubType.ECT_CLOSED;
         _loc1_ ||= this._membersCountMax == this._membersCount;
         this._view.buttonJoin.visible = !_loc1_;
      }
      
      private function updateButtonUpgrade() : void
      {
         var _loc1_:Boolean = false;
         _loc1_ ||= !this._managerClubs.isUserInClubWithID(this._clubID);
         _loc1_ ||= this._level == this._managerClubs.levelMax;
         this._view.buttonUpgrade.visible = !_loc1_;
         this._view.labelUpgrade.source.visible = !_loc1_;
      }
      
      private function updateLevelData() : void
      {
         this._membersCountMax = this._managerClubs.getMembersMax(this._level);
         this._view.setMembers(this._membersCount,this._membersCountMax);
         this._view.buttonUpgrade.label = this._managerClubs.getPriceForUpgradeTo(this._level + 1).toString();
      }
      
      private function updateButtonLeave() : void
      {
         this._view.buttonLeave.visible = this._managerClubs.isUserInClubWithID(this._clubID);
      }
   }
}


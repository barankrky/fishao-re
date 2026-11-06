package com.ax3.fishao.view.dialogs.missions
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.dialogs.ShopSwfDialogAsset;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.model.missions.EMissionID;
   import com.ax3.fishao.model.missions.Mission;
   import com.ax3.fishao.model.missions.MissionsModel;
   import com.ax3.fishao.model.types.MissionActionPropertiesType;
   import com.ax3.fishao.model.types.MissionActionTypes;
   import com.ax3.fishao.model.types.MissionRewardTypes;
   import com.ax3.fishao.model.types.MissionTypes;
   import com.ax3.fishao.tutorial.ETutorialType;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   
   public class MissionsSwfDialog extends MissionsSwfDialogAsset
   {
      
      private var _currentView:String = "active";
      
      private var _currentPage:int = 0;
      
      private var _missions:MissionsModel = new MissionsModel();
      
      private var _labelMissionTitleWrapper:TextFieldAutofitWrapper;
      
      private var _labelMissionProgressValueWrapper:TextFieldAutofitWrapper;
      
      private var _labelPagesValueWrapper:TextFieldAutofitWrapper;
      
      private var _tutorialsMap:Dictionary;
      
      private var _managerTutorial:ManagerTutorial;
      
      public function MissionsSwfDialog()
      {
         super();
         this._managerTutorial = GameSwf.instance.managerTutorial;
         this._tutorialsMap = new Dictionary(true);
         this._tutorialsMap[EMissionID.EMID_BOB_MINIGAME] = ETutorialType.ETT_BOB_GAME;
         this._tutorialsMap[EMissionID.EMID_CHANGE_CHARACTER] = ETutorialType.ETT_CHANGE_CHARACTER;
         this._tutorialsMap[EMissionID.EMID_DECORATE_HOME] = ETutorialType.ETT_DECORATION;
         this._tutorialsMap[EMissionID.EMID_GO_TO_FISHMARKET] = ETutorialType.ETT_FISH_MARKET;
      }
      
      public static function getRewardKindByType(param1:String) : String
      {
         switch(param1)
         {
            case MissionRewardTypes.BAIT:
               return ResourceType.BAIT.name;
            case MissionRewardTypes.ROD:
               return ResourceType.ROD.name;
            case MissionRewardTypes.FURNITURE:
               return ResourceType.DECORATION.name;
            case MissionRewardTypes.LUCK_POTION:
               return ResourceType.LUCK_POTION.name;
            case MissionRewardTypes.MAGIC_WATCH:
               return ResourceType.MAGIC_WATCH.name;
            case MissionRewardTypes.RADAR:
               return ResourceType.FISH_RADAR.name;
            case MissionRewardTypes.ENERGY:
               return ResourceType.ENERGY.name;
            case MissionRewardTypes.FISHBUCKS:
               return ResourceType.FISHBUCKS.name;
            case MissionRewardTypes.FISHCOINS:
               return ResourceType.FISHCOINS.name;
            case MissionRewardTypes.SHINY_POTION:
               return ResourceType.SHINY_POTION.name;
            default:
               return "";
         }
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override public function close() : void
      {
         super.close();
         this._missions.removeEventListener(Event.CHANGE,this.redrawContent);
         this._missions.removeEventListener(Event.ADDED,this.redrawAcceptedContent);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         buttonAcceptMission.handler = this.handleMissionAcceptClick;
         buttonCollect.handler = this.handleMissionRewardCollectClick;
         buttonSwitchView.handler = this.handleSwitchViewClick;
         buttonPrevPage.handler = this.handlePrevPageClick;
         buttonNextPage.handler = this.handleNextPageClick;
         buttonAcceptMission.label = I18n.get("missions_button_accept");
         buttonCollect.label = I18n.get("missions_button_collect");
         buttonSwitchView.label = I18n.get("missions_switch_to_" + (this._currentView == MissionsModel.ACTIVE ? MissionsModel.COMPLETED : MissionsModel.ACTIVE));
         buttonSwitchView.disable();
         labelHeader.text = I18n.get("missions_header");
         labelProgressOverall.text = I18n.get("missions_progress_overall");
         this._missions.addEventListener(Event.CHANGE,this.redrawContent);
         this._missions.addEventListener(Event.ADDED,this.redrawAcceptedContent);
         this._missions.requestActiveMissionsData();
         this._labelMissionTitleWrapper = new TextFieldAutofitWrapper(labelMissionTitle);
         this._labelMissionProgressValueWrapper = new TextFieldAutofitWrapper(labelMissionProgressValue);
         this._labelPagesValueWrapper = new TextFieldAutofitWrapper(labelPagesValue);
         title.text = I18n.get("missions_title_" + this._currentView);
         labelHeader.text = I18n.get("missions_header");
         labelProgressOverall.text = I18n.get("missions_progress_overall");
         this._labelPagesValueWrapper.text = "";
         this._labelMissionTitleWrapper.text = "";
         labelMissionDescription.text = "";
         labelMissionProgressValue.text = "";
         labelMissionReward.text = "";
         labelMissionRewardDescription.text = "";
         labelProgressOverallValue.text = "";
         labelProgressOverall.text = "";
         progressBarMission.visible = false;
         progressBarMission.gotoAndStop(1);
         progressBarOverall.gotoAndStop(1);
         rewardImageContainer.visible = false;
         buttonAcceptMission.visible = false;
         buttonCollect.visible = false;
         buttonPrevPage.visible = false;
         buttonNextPage.visible = false;
      }
      
      private function handlePrevPageClick(param1:MouseEvent) : void
      {
         if(this._currentPage > 0)
         {
            --this._currentPage;
         }
         else
         {
            this._currentPage = 0;
         }
         this.redrawContent();
      }
      
      private function handleNextPageClick(param1:MouseEvent) : void
      {
         if(this._currentPage < this._missions.missions[this._currentView].length - 1)
         {
            ++this._currentPage;
         }
         else
         {
            this._currentPage = this._missions.missions[this._currentView].length - 1;
         }
         this.redrawContent();
      }
      
      private function handleSwitchViewClick(param1:MouseEvent) : void
      {
         if(this._currentView == MissionsModel.ACTIVE)
         {
            this._currentView = MissionsModel.COMPLETED;
            this._missions.requestCompletedMissionsData();
         }
         else
         {
            this._currentView = MissionsModel.ACTIVE;
            this._missions.requestActiveMissionsData();
         }
         buttonAcceptMission.disable();
         buttonCollect.disable();
         buttonSwitchView.disable();
         buttonPrevPage.disable();
         buttonNextPage.disable();
      }
      
      private function handleMissionRewardCollectClick(param1:MouseEvent) : void
      {
         buttonCollect.disable();
         var _loc2_:Mission = Mission(this._missions.missions[this._currentView][this._currentPage]);
         this._missions.requestCollectReward(_loc2_);
         this.close();
      }
      
      private function handleMissionAcceptClick(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = null;
         this._missions.requestAcceptMission(this._missions.missions[this._currentView][this._currentPage]);
         if((this._missions.missions[this._currentView][this._currentPage] as Mission).action == MissionActionTypes.ITEM_USE)
         {
            GameSwf.instance.showShopDialog(ShopSwfDialogAsset.TAB_ID_EXTRA);
         }
         else if((this._missions.missions[this._currentView][this._currentPage] as Mission).action == MissionActionTypes.TOURNAMENT_ENTER)
         {
            GameSwf.currentLocationDialog.gui.onTournamentIconClick();
         }
         else if((this._missions.missions[this._currentView][this._currentPage] as Mission).id == 54)
         {
            GameSwf.currentLocationDialog.gui.dailyQuestManWidget.onMouseClick();
         }
         else if((this._missions.missions[this._currentView][this._currentPage] as Mission).action == MissionActionTypes.SOCIAL_OPEN_LINK)
         {
            _loc2_ = null;
            if((this._missions.missions[this._currentView][this._currentPage] as Mission).id == 57)
            {
               _loc2_ = new URLRequest("http://forums.fishao.com");
            }
            else if((this._missions.missions[this._currentView][this._currentPage] as Mission).id == 64)
            {
               _loc2_ = new URLRequest("http://www.fishaowiki.com");
            }
            if(_loc2_ != null)
            {
               navigateToURL(_loc2_,"_blank");
            }
         }
         this.tryStartTutorialFor(this._missions.missions[this._currentView][this._currentPage] as Mission);
         this.close();
      }
      
      private function tryStartTutorialFor(param1:Mission) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = this._tutorialsMap[param1.id];
         if(_loc2_ == null)
         {
            return;
         }
         this._managerTutorial.tryStartTutorialByType(_loc2_);
      }
      
      private function redrawAcceptedContent(param1:Event) : void
      {
         this.close();
      }
      
      private function redrawContent(param1:Event = null) : void
      {
         var _loc2_:Mission = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:ScaledBitmap = null;
         this._currentPage = param1 == null ? this._currentPage : 0;
         title.text = I18n.get("missions_title_" + this._currentView);
         buttonSwitchView.label = I18n.get("missions_switch_to_" + (this._currentView == MissionsModel.ACTIVE ? MissionsModel.COMPLETED : MissionsModel.ACTIVE));
         this.updateOverallProgress();
         buttonAcceptMission.enable();
         buttonCollect.enable();
         buttonSwitchView.enable();
         if(this._currentPage > 0)
         {
            buttonPrevPage.enable();
         }
         else
         {
            buttonPrevPage.disable();
         }
         if(this._currentPage < this._missions.missions[this._currentView].length - 1)
         {
            buttonNextPage.enable();
         }
         else
         {
            buttonNextPage.disable();
         }
         if(this._missions.missions[this._currentView].length > 0)
         {
            _loc2_ = Mission(this._missions.missions[this._currentView][this._currentPage]);
            _loc3_ = I18n.get("missions_paging");
            _loc3_ = _loc3_.replace("#CURRENT#",this._currentPage + 1);
            _loc3_ = _loc3_.replace("#TOTAL#",this._missions.missions[this._currentView].length);
            this._labelPagesValueWrapper.text = _loc3_;
            this.updateRewardText(_loc2_);
            this.updateMissionProgressBar(_loc2_);
            _loc4_ = I18n.get("mission_" + _loc2_.id + "_title");
            _loc4_ = _loc4_.replace("#SIZE#",I18n.formatDistance(_loc2_.values[0]));
            _loc5_ = I18n.get("mission_" + _loc2_.id + "_description");
            _loc5_ = _loc5_.replace("$username",app.user.username);
            _loc5_ = _loc5_.replace("#SIZE#",I18n.formatDistance(_loc2_.values[0]));
            this._labelMissionTitleWrapper.text = _loc4_;
            labelMissionDescription.text = _loc5_;
            rewardImageContainer.removeChildren();
            _loc6_ = getRewardKindByType(_loc2_.reward);
            if(_loc6_.length)
            {
               _loc7_ = FishaoBitmapLoader.getResourceFilenameByKind(_loc6_,_loc2_.rewardTypeId);
               _loc8_ = new ScaledBitmap();
               _loc8_.width = 128;
               _loc8_.height = 128;
               _loc8_.x = -64;
               _loc8_.y = -64;
               app.resourceManager.replaceBitmapDataFromURL(_loc8_,FishaoBitmapLoader.convertImageNameURL(_loc7_));
               rewardImageContainer.addChild(_loc8_);
            }
            buttonPrevPage.visible = true;
            buttonNextPage.visible = true;
            rewardImageContainer.visible = true;
            buttonAcceptMission.visible = !_loc2_.isAccepted;
            buttonCollect.visible = _loc2_.isDone && !_loc2_.rewardCollected;
         }
         else
         {
            this._labelPagesValueWrapper.text = "";
            this._labelMissionTitleWrapper.text = "";
            labelMissionDescription.text = "";
            labelMissionProgressValue.text = "";
            labelMissionReward.text = "";
            progressBarMission.visible = false;
            progressBarMission.gotoAndStop(1);
            rewardImageContainer.visible = false;
            buttonAcceptMission.visible = false;
            buttonCollect.visible = false;
            buttonPrevPage.visible = false;
            buttonNextPage.visible = false;
         }
      }
      
      private function updateMissionProgressBar(param1:Mission) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         switch(param1.type)
         {
            case MissionTypes.ITEM:
               if(param1.actionProperty == MissionActionPropertiesType.ITEM_HOME_POINTS)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length ? param1.values[0] : 0;
               }
               else if(param1.actionProperty == MissionActionPropertiesType.ITEM_COLLECTION)
               {
                  _loc2_ = param1.condition.length ? int(param1.condition.length) : 0;
                  _loc3_ = param1.values.length ? int(param1.values.length) : 1;
               }
               else
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = int(param1.values.length);
               }
               break;
            case MissionTypes.CATCH:
               if(param1.action == MissionActionTypes.CATCH_FISH_IN_NUMBER)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length ? param1.values[0] : 0;
               }
               else if(param1.action == MissionActionTypes.CATCH_FISH_DIFFERENT_IN_NUMBER)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length ? param1.values[0] : 0;
                  _loc3_ = _loc3_ == 0 ? int(app.fishDict.getAll().length) : _loc3_;
               }
               else if(param1.action == MissionActionTypes.CATCH_FISH_BREED)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length ? param1.values[0] : 0;
                  _loc3_ = _loc3_ == 0 ? int(app.fishDict.getAll().length) : _loc3_;
                  if(this._currentView == MissionsModel.COMPLETED)
                  {
                     if(_loc3_ < _loc2_)
                     {
                        _loc2_ = _loc3_;
                     }
                     else if(_loc3_ > _loc2_)
                     {
                        _loc3_ = _loc2_;
                     }
                  }
               }
               else if(param1.action == MissionActionTypes.CATCH_FISH_BY_DIFFICULTY)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length > 1 ? param1.values[1] : 1;
               }
               else if(param1.action == MissionActionTypes.CATCH_FISH_SHINY)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length ? param1.values[0] : 1;
               }
               else if(param1.action == MissionActionTypes.CATCH_FISH_SHINY_COLLECTION)
               {
                  _loc2_ = int(param1.condition.length);
                  _loc3_ = int(param1.values.length);
               }
               else
               {
                  _loc2_ = int(param1.condition.length);
                  _loc3_ = int(param1.values.length);
               }
               break;
            case MissionTypes.NPC:
               if(param1.action == MissionActionTypes.NPC_MINIGAME)
               {
                  _loc2_ = param1.condition.length ? param1.condition[0] : 0;
                  _loc3_ = param1.values.length ? param1.values[0] : 0;
               }
               else if(param1.action == MissionActionTypes.NPC_CHAT)
               {
                  _loc2_ = param1.condition.length ? int(param1.condition.length) : 0;
                  _loc3_ = param1.values.length ? int(param1.values.length) : 0;
               }
               break;
            case MissionTypes.SOCIAL:
               _loc2_ = param1.condition.length ? param1.condition[0] : 0;
               if(param1.action == MissionActionTypes.SOCIAL_FRIEND_MAKE)
               {
                  _loc3_ = param1.values.length ? param1.values[0] : 0;
               }
               else
               {
                  _loc3_ = param1.values.length > 1 ? int(param1.values.length) : 1;
               }
               break;
            case MissionTypes.LOCATION:
               _loc2_ = param1.condition.length ? int(param1.condition.length) : 0;
               _loc3_ = param1.values.length ? int(param1.values.length) : 0;
               break;
            case MissionTypes.RAFT:
               _loc2_ = param1.condition.length ? int(param1.condition.length) : 0;
               _loc3_ = param1.values.length ? int(param1.values.length) : 0;
               break;
            case MissionTypes.TOURNAMENT:
               _loc2_ = param1.condition.length ? param1.condition[0] : 0;
               _loc3_ = param1.values.length ? param1.values[0] : 0;
               break;
            case MissionTypes.FEATURE:
               _loc2_ = param1.condition.length ? param1.condition[0] : 0;
               _loc3_ = param1.values.length ? param1.values[0] : 0;
         }
         progressBarMission.visible = _loc3_ > 1;
         labelMissionProgressValue.visible = _loc3_ > 1;
         progressBarMission.gotoAndStop(1 + Math.round(_loc2_ / _loc3_ * 99));
         this._labelMissionProgressValueWrapper.text = _loc2_ + "/" + _loc3_;
      }
      
      private function updateRewardText(param1:Mission) : void
      {
         labelMissionReward.text = I18n.get("missions_reward_title");
         if(param1.reward == MissionRewardTypes.FISHBUCKS)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + " " + I18n.get("fishbucks_1");
         }
         else if(param1.reward == MissionRewardTypes.FISHCOINS)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + " " + I18n.get("missions_reward_fishcoin" + (param1.rewardAmount > 1 ? "s" : ""));
         }
         else if(param1.reward == MissionRewardTypes.ENERGY)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + " " + I18n.get("tutorialPopup_energy");
         }
         else if(param1.reward == MissionRewardTypes.FURNITURE)
         {
            labelMissionRewardDescription.text = I18n.get("decoration_" + param1.rewardTypeId);
         }
         else if(param1.reward == MissionRewardTypes.ROD)
         {
            labelMissionRewardDescription.text = I18n.get("rod_" + param1.rewardTypeId);
         }
         else if(param1.reward == MissionRewardTypes.BAIT)
         {
            labelMissionRewardDescription.text = param1.rewardAmount + " " + I18n.get("bait_" + param1.rewardTypeId);
         }
         else
         {
            labelMissionRewardDescription.text = param1.rewardAmount + " " + I18n.get("resource_" + param1.rewardTypeId);
         }
      }
      
      private function updateOverallProgress() : void
      {
         labelProgressOverallValue.text = Math.round(100 * (this._missions.completedMissionsNum / this._missions.allMissionsNum)) + "%";
         progressBarOverall.gotoAndStop(1 + Math.round(100 * this._missions.completedMissionsNum / this._missions.allMissionsNum));
      }
   }
}


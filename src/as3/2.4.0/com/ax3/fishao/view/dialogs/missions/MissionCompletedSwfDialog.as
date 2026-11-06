package com.ax3.fishao.view.dialogs.missions
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.model.missions.Mission;
   import com.ax3.fishao.model.missions.MissionsModel;
   import com.ax3.fishao.model.types.MissionActionTypes;
   import com.ax3.fishao.model.types.MissionRewardTypes;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import flash.events.MouseEvent;
   
   public class MissionCompletedSwfDialog extends MissionCompletedSwfDialogAsset
   {
      
      private var _mission:Mission;
      
      private var _missionsModel:MissionsModel = new MissionsModel();
      
      private var _missionTitleWrapper:TextFieldAutofitWrapper;
      
      public function MissionCompletedSwfDialog()
      {
         super();
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
      
      public function setMission(param1:Mission) : void
      {
         this._mission = param1;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var missionDescText:String = null;
         var missionTitleText:String = null;
         var defaultTextFieldY:Number = NaN;
         var defaultTextFieldHeight:Number = NaN;
         var kind:String = null;
         var imageFilename:String = null;
         var bitmap:ScaledBitmap = null;
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         this._missionTitleWrapper = new TextFieldAutofitWrapper(labelMissionTitle);
         missionDescText = I18n.get("mission_" + this._mission.id + "_completed");
         missionTitleText = "\"" + I18n.get("mission_" + this._mission.id + "_title") + "\"";
         if(missionDescText.indexOf("$username") != -1)
         {
            missionDescText = missionDescText.replace("$username",app.user.username);
         }
         if(missionTitleText.indexOf("$username") != -1)
         {
            missionTitleText = missionTitleText.replace("$username",app.user.username);
         }
         if(missionTitleText.indexOf("#SIZE#") != -1)
         {
            missionTitleText = missionTitleText.replace("#SIZE#",I18n.formatDistance(this._mission.values[0]));
         }
         if(this._mission.completedTimeSec - this._mission.acceptedTimeSec < 2 && this._mission.action != MissionActionTypes.SOCIAL_OPEN_LINK)
         {
            labelHeader.text = I18n.getUpper("mission_completed_header_instant");
            labelMissionDescription.text = I18n.get("mission_completed_message_instant");
         }
         else
         {
            labelHeader.text = I18n.getUpper("mission_completed_header_normal");
            labelMissionDescription.text = missionDescText;
         }
         this._missionTitleWrapper.text = missionTitleText;
         defaultTextFieldY = labelMissionDescription.y;
         defaultTextFieldHeight = labelMissionDescription.height;
         labelMissionDescription.height = labelMissionDescription.textHeight + 5;
         labelMissionDescription.y = defaultTextFieldY + (defaultTextFieldHeight - labelMissionDescription.textHeight) / 2;
         labelMissionReward.text = I18n.get("missions_reward_title");
         if(this._mission.reward == MissionRewardTypes.FISHBUCKS)
         {
            labelRewardDescription.text = this._mission.rewardAmount + " " + I18n.get("fishbucks_1");
         }
         else if(this._mission.reward == MissionRewardTypes.FISHCOINS)
         {
            labelRewardDescription.text = this._mission.rewardAmount + " " + I18n.get("tutorialPopup_fishcoins");
         }
         else if(this._mission.reward == MissionRewardTypes.ENERGY)
         {
            labelRewardDescription.text = this._mission.rewardAmount + " " + I18n.get("tutorialPopup_energy");
         }
         else if(this._mission.reward == MissionRewardTypes.FURNITURE)
         {
            labelRewardDescription.text = I18n.get("decoration_" + this._mission.rewardTypeId);
         }
         else if(this._mission.reward == MissionRewardTypes.ROD)
         {
            labelRewardDescription.text = I18n.get("rod_" + this._mission.rewardTypeId);
         }
         else if(this._mission.reward == MissionRewardTypes.BAIT)
         {
            labelRewardDescription.text = this._mission.rewardAmount + " " + I18n.get("bait_" + this._mission.rewardTypeId);
         }
         else
         {
            labelRewardDescription.text = this._mission.rewardAmount + " " + I18n.get("resource_" + this._mission.rewardTypeId);
         }
         rewardImageContainer.removeChildren();
         kind = getRewardKindByType(this._mission.reward);
         if(kind.length)
         {
            imageFilename = FishaoBitmapLoader.getResourceFilenameByKind(kind,this._mission.rewardTypeId);
            bitmap = new ScaledBitmap();
            bitmap.width = 128;
            bitmap.height = 128;
            bitmap.x = -64;
            bitmap.y = -64;
            app.resourceManager.replaceBitmapDataFromURL(bitmap,FishaoBitmapLoader.convertImageNameURL(imageFilename));
            rewardImageContainer.addChild(bitmap);
         }
         labelShareProgress.visible = false;
         checkShareProgress.visible = false;
         checkShareProgress.state = CheckBoxState.UNSELECTED;
         buttonCollect.label = I18n.get("mission_completed_button_collect");
         buttonCollect.handler = this.handleCollectRewardClick;
         buttonCollect.enable();
         super.onAssetCreationComplete();
      }
      
      private function handleCollectRewardClick(param1:MouseEvent) : void
      {
         buttonCollect.disable();
         this._missionsModel.requestCollectReward(this._mission);
         this.close();
      }
      
      override public function close() : void
      {
         GameSwf.currentLocationDialog.showMissionCompletedDialog();
         super.close();
      }
      
      override public function onShowComplete() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_066_MUS_Tournament_win);
      }
   }
}


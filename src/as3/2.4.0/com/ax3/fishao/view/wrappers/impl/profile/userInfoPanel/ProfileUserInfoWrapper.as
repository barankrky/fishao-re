package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.impl.ToolTipTargetMovieClip;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs.SequentTextFieldMediator;
   import com.ax3.fishao.model.CountryRecord;
   import com.ax3.fishao.model.profile.userInfoPanelData.UserInfoPanelData;
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.*;
   import com.ax3.utils.SetBitmapInContainer;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class ProfileUserInfoWrapper extends ProfilePanelWrapper implements IAssetWrapperRecursive
   {
      
      private static const AVATAR_BITMAP_WIDTH:int = 128;
      
      private static const AVATAR_BITMAP_HEIGHT:int = 190;
      
      private static const AVATAR_CONTAINER_WIDTH:int = 155;
      
      private static const AVATAR_CONTAINER_HEIGHT:int = 200;
      
      private static const FLAG_BITMAP_WIDTH:int = 21;
      
      private static const FLAG_BITMAP_HEIGHT:int = 21;
      
      private static const FLAG_CONTAINER_WIDTH:int = 21;
      
      private static const FLAG_CONTAINER_HEIGHT:int = 21;
      
      public static const TABS_LIST_UPDATE:String = "tabsListUpdate";
      
      public var addAsFriendButton:FrameButtonWrapper;
      
      public var flagContainer:DisplayObjectContainer;
      
      public var totalPlayedHours:UserInfoLabelWrapper;
      
      public var tournamentsWon:UserInfoLabelWrapper;
      
      public var numberOfPrizesWon:UserInfoLabelWrapper;
      
      public var fishesCaught:UserInfoLabelWrapper;
      
      public var totalFishesCaught:UserInfoLabelWrapper;
      
      public var biggestFishCaught:UserInfoLabelWrapper;
      
      public var homePoints:UserInfoLabelWrapper;
      
      public var numberOfMissionsCompleted:UserInfoLabelWrapper;
      
      public var userNameText:TextField;
      
      public var userYearsText:TextField;
      
      public var userCountryText:TextField;
      
      public var userMemberSinceText:TextField;
      
      public var userBannedText:TextField;
      
      public var userLevelText:TextField;
      
      public var userStatusTextOnline:TextField;
      
      public var userStatusTextOffline:TextField;
      
      public var statusOn:DisplayObjectContainer;
      
      public var statusOff:DisplayObjectContainer;
      
      public var avatarContainer:DisplayObjectContainer;
      
      private var _ageLanguageTextsMediator:SequentTextFieldMediator;
      
      private var _panelData:UserInfoPanelData;
      
      private var _controllerClubInfo:ControllerProfileClubInfo;
      
      private var _tooltipFlag:ToolTipTargetMovieClip;
      
      private var _tooltipLanguage:ToolTipTargetMovieClip;
      
      public function ProfileUserInfoWrapper()
      {
         super();
      }
      
      private static function initTooltipOnObject(param1:DisplayObject, param2:ToolTipTargetMovieClip) : void
      {
         param2.graphics.beginFill(9461904,0);
         param2.graphics.drawRect(0,0,param1.width,param1.height);
         param2.graphics.endFill();
         param2.x = param1.x;
         param2.y = param1.y;
         param1.parent.addChild(param2);
      }
      
      private function set friendshipState(param1:String) : void
      {
         switch(param1)
         {
            case UserInfoPanelData.IS_FRIENDS:
            case UserInfoPanelData.FRENDSHIP_BANNED:
               this.addAsFriendButton.visible = false;
               this.addAsFriendButton.disable();
               break;
            case UserInfoPanelData.ALREADY_SEND:
               this.addAsFriendButton.visible = true;
               this.addAsFriendButton.disable();
               break;
            default:
               this.addAsFriendButton.visible = true;
               this.addAsFriendButton.enable();
         }
      }
      
      private function set isOnline(param1:Boolean) : void
      {
         this.statusOn.visible = param1;
         this.userStatusTextOnline.visible = param1;
         this.statusOff.visible = !param1;
         this.userStatusTextOffline.visible = !param1;
      }
      
      private function set isFriendOrPlayer(param1:Boolean) : void
      {
         this.addAsFriendButton.visible = !param1;
      }
      
      private function set flagUrl(param1:String) : void
      {
         SetBitmapInContainer.loadBitmapInContainer(param1,this.flagContainer["container"],_app.resourceManager,FLAG_BITMAP_WIDTH,FLAG_BITMAP_HEIGHT,FLAG_CONTAINER_WIDTH,FLAG_CONTAINER_HEIGHT);
      }
      
      public function get showInventory() : Boolean
      {
         return this._panelData.showInventory;
      }
      
      private function onAddAsFriendButtonClick(param1:Event) : void
      {
         this.addAsFriendButton.disable();
         this._panelData.addAsFriend(_login,this.onAddAsFriendComplete);
      }
      
      private function onAddAsFriendComplete() : void
      {
      }
      
      override public function onAssetProcessComplete() : void
      {
         this.initStaticData();
         this._tooltipFlag = new ToolTipTargetMovieClip();
         this._tooltipLanguage = new ToolTipTargetMovieClip();
         this._panelData = new UserInfoPanelData();
         this._ageLanguageTextsMediator = new SequentTextFieldMediator(this.userYearsText,this.flagContainer,this.userCountryText);
         this._controllerClubInfo = new ControllerProfileClubInfo(Debug.assertProperty(_asset,"viewClubInfo"));
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._panelData.load(_login,this.setPanelData);
      }
      
      private function initStaticData() : void
      {
         this.addAsFriendButton.label = I18n.getUpper("addAsFriend");
         this.addAsFriendButton.handler = this.onAddAsFriendButtonClick;
         this.totalPlayedHours.labelText = I18n.getUpper("totalPlayedHours");
         this.tournamentsWon.labelText = I18n.getUpper("tournamentsWon");
         this.numberOfPrizesWon.labelText = I18n.getUpper("numberOfPrizesWon");
         this.fishesCaught.labelText = I18n.getUpper("fishesCaught");
         this.totalFishesCaught.labelText = I18n.getUpper("totalFishesCaught");
         this.biggestFishCaught.labelText = I18n.getUpper("biggestFishCaught");
         this.homePoints.labelText = I18n.getUpper("homePoints");
         this.numberOfMissionsCompleted.labelText = I18n.getUpper("missionsPassed");
         this.userStatusTextOnline.text = I18n.get("online");
         this.userStatusTextOffline.text = I18n.get("offline");
      }
      
      private function setPanelData() : void
      {
         if(this._controllerClubInfo != null)
         {
            this._controllerClubInfo.clubData = this._panelData.clubInfo;
         }
         this.totalPlayedHours.labelValueText = this._panelData.totalPlayedHours.toString();
         this.tournamentsWon.labelValueText = this._panelData.tournamentsWon.toString();
         this.numberOfPrizesWon.labelValueText = this._panelData.numberOfPrizesWon.toString();
         this.fishesCaught.labelValueText = this._panelData.fishesCaught.toString() + "/" + this._panelData.amountOfAllFishTypes.toString();
         this.totalFishesCaught.labelValueText = this._panelData.totalFishesCaught.toString();
         this.biggestFishCaught.labelValueText = I18n.formatDistance(this._panelData.biggestFishCaught);
         this.homePoints.labelValueText = this._panelData.homePoints.toString();
         this.numberOfMissionsCompleted.labelValueText = this._panelData.missionsCompleted.toString();
         this.userYearsText.text = this._panelData.age == "" ? "" : I18n.get("profileYearOld").replace("#AGE#",this._panelData.age);
         this.userCountryText.text = I18n.get(this._panelData.languageName);
         this._ageLanguageTextsMediator.displace();
         initTooltipOnObject(this.userCountryText,this._tooltipLanguage);
         initTooltipOnObject(this.flagContainer,this._tooltipFlag);
         var _loc1_:CountryRecord = app.countries.getCountryById(this._panelData.countryName);
         var _loc2_:String = I18n.get(EStringType.EST_DIALOG_USER_PROFILE_COUNTRY).replace(EStringTypeStubs.ESTS_COUNTRY,_loc1_.name);
         this._tooltipLanguage.tooltipText = _loc2_;
         this._tooltipFlag.tooltipText = _loc2_;
         this.userNameText.text = this._panelData.usersName;
         this.userMemberSinceText.text = I18n.get("profileMemberSince").replace("#DateOfRegistration#",this._panelData.dateOfRegistration);
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.align = TextFormatAlign.CENTER;
         this.userLevelText.text = this._panelData.usersLevel.toString();
         this.userLevelText.setTextFormat(_loc3_);
         this.isOnline = this._panelData.userIsOnline;
         this.isFriendOrPlayer = this._panelData.userIsFriend || app.user.username == _login;
         if(this._panelData.banType != null && this._panelData.banType != BanType.NORMAL)
         {
            this.userBannedText.text = I18n.get(this._panelData.banType.name);
         }
         else
         {
            this.userBannedText.text = this._panelData.userIsModerator ? I18n.getUpper("moderator") : "";
         }
         this.flagUrl = this._panelData.languageFlagUrl;
         SetBitmapInContainer.setUserAvatarInContainer(_login,this.avatarContainer,AVATAR_BITMAP_WIDTH,AVATAR_BITMAP_HEIGHT,AVATAR_CONTAINER_WIDTH,AVATAR_CONTAINER_HEIGHT);
         this.friendshipState = this._panelData.friendshipState;
         dispatchEvent(new Event(TABS_LIST_UPDATE));
         dispatchEvent(new Event(ProfileSwfDialog.USER_INFO_DATA_LOADED_COMPLETE));
         callUpdateCallback();
      }
   }
}


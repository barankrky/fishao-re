package com.ax3.fishao.model.profile.userInfoPanelData
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.profile.ProfilePanelData;
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class UserInfoPanelData extends ProfilePanelData
   {
      
      public static const IS_FRIENDS:String = "friends";
      
      public static const ALREADY_SEND:String = "alreadySend";
      
      public static const FRENDSHIP_BANNED:String = "banned";
      
      public var usersName:String;
      
      public var age:String;
      
      public var languageFlagUrl:String;
      
      public var languageName:String;
      
      public var countryName:String;
      
      public var dateOfRegistration:String;
      
      public var banType:BanType;
      
      public var userIsModerator:Boolean;
      
      public var usersPictureUrl:String;
      
      public var userIsOnline:Boolean;
      
      public var userIsFriend:Boolean;
      
      public var usersLevel:Number;
      
      public var totalPlayedHours:Number;
      
      public var tournamentsWon:Number;
      
      public var numberOfPrizesWon:Number;
      
      public var achievementsComplete:Number;
      
      public var fishesCaught:Number;
      
      public var totalFishesCaught:Number;
      
      public var biggestFishCaught:Number;
      
      public var amountOfAllFishTypes:Number;
      
      public var showInventory:Boolean;
      
      public var friendshipState:String;
      
      public var missionsCompleted:int;
      
      public var homePoints:Number;
      
      public var clubInfo:Object;
      
      private var _callbackAddAsFriend:Function;
      
      public function UserInfoPanelData()
      {
         super();
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         super.load(param1,param2);
         FishaoFscModelManager.profileExtension.getProfileUserInfo(param1,Preloader.waitForResponse(this.initServerData));
      }
      
      private function initServerData(param1:ProfileUserInfoResp) : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.locationModel != null)
         {
            GameSwf.currentLocationDialog.locationModel.updateByProfileUserInfoResp(_login,param1);
         }
         this.usersName = _login;
         this.clubInfo = param1.clubInfo;
         this.age = param1.age != -1 ? param1.age.toString() : "";
         this.languageFlagUrl = "flag/flag_" + param1.language + ".png";
         this.languageName = "lang_" + param1.language;
         this.countryName = param1.countryIso3;
         this.dateOfRegistration = I18n.formatTimestamp(param1.timeFromRegistration);
         this.banType = BanType.findByName(param1.banType);
         this.userIsModerator = param1.isModerator;
         this.usersPictureUrl = "profile_temp/profile_icon.png";
         this.userIsOnline = param1.timeFromLastLogin == -1;
         this.userIsFriend = param1.isFriend;
         this.usersLevel = param1.level;
         this.showInventory = param1.showInventory;
         this.totalPlayedHours = int(param1.totalMinutesPlayed / 60);
         this.tournamentsWon = param1.tournamentsWon;
         this.numberOfPrizesWon = param1.prizesWon;
         this.achievementsComplete = param1.achievementsAreaDone + param1.achievementsGlobalDone;
         this.fishesCaught = param1.amountCaughtFish;
         this.totalFishesCaught = param1.totalAmountOfCaughtFish;
         this.biggestFishCaught = param1.biggestCaughtFishLength;
         this.amountOfAllFishTypes = param1.amountOfAllFishTypes;
         this.missionsCompleted = param1.missionsCompleted;
         this.homePoints = param1.housePoints;
         if(param1.friendshipState != null)
         {
            this.friendshipState = param1.friendshipState;
         }
         else
         {
            this.friendshipState = "";
         }
         _callback();
      }
      
      public function addAsFriend(param1:String, param2:Function) : void
      {
         this._callbackAddAsFriend = param2;
         FishaoFscModelManager.profileExtension.addAsFriend(param1,this.onAddAsFriendComplete);
      }
      
      private function onAddAsFriendComplete(param1:Object) : void
      {
         this._callbackAddAsFriend();
      }
   }
}


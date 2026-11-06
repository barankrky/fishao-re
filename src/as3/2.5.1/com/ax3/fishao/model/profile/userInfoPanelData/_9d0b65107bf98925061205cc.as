package com.ax3.fishao.model.profile.userInfoPanelData
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.profile._5b25b89cb3368976ba33f1ea;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class _9d0b65107bf98925061205cc extends _5b25b89cb3368976ba33f1ea
   {
      
      public static const IS_FRIENDS:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸၸ၏ႤჃႲႦခၕგႿ჎ႀႨၮႝိჹၑ၊ႛဲ","ვჍჴყၮ႗ဘၻႦၟ႕အყႼცပ");
      
      public static const ALREADY_SEND:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("务勚勐刔勂刅劀剙勒刌削判劃勎劽劏勶剥勢勦動募刱剽列剡劣勨剛勌","勩勮劗劇勞勉剱劐刕効剣勎勱勷剀劓");
      
      public static const FRENDSHIP_BANNED:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挵揄掻掿掂掩揲捥挊挛挤捰挿揓挙掰捍掺挪捗","接挸揺捊揁挅探挢掚捪推掓捁掩捇挄");
      
      public var usersName:String;
      
      public var age:String;
      
      public var languageFlagUrl:String;
      
      public var languageName:String;
      
      public var countryName:String;
      
      public var dateOfRegistration:String;
      
      public var banType:_3e150da9e23ba0916ccbf8e9;
      
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
      
      private var _34fe228fb908c3ec40a77f76:Function;
      
      public function _9d0b65107bf98925061205cc()
      {
         super();
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         super.load(param1,param2);
         _dfa25706e58a240c1e33e5c6.profileExtension._ef237745072f3d2bb9343194(param1,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._d6b7009877e1f04cd5df9167));
      }
      
      private function _d6b7009877e1f04cd5df9167(param1:ProfileUserInfoResp) : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.locationModel != null)
         {
            GameSwf.currentLocationDialog.locationModel._8a6045407265211773eaad2e(_login,param1);
         }
         this.usersName = _login;
         this.clubInfo = param1.clubInfo;
         this.age = param1.age != (0x4654006D ^ 0x488F597C ^ -772000422 ^ 0x20D893B4) ? param1.age.toString() : "";
         this.languageFlagUrl = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挱捒挦挺揽挡挣掁挿揎捌挳揀捍挍揥掵揨換挬捠挨掳揫掜挍捋授","挐挰揽探揌掗捝据掉捽捑揠挘捌挀换") + param1.language + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剷動剩劳勬剠功刵劵刁劗剴切劅劈劳","劧刮勢劓剅劏勩副刺剥勰剘剞剰刖刎");
         this.languageName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჊სႩပဗႮညႤၐၣ၇ၵှပၰႋၫႠ","ၠ႙နႄႰႄႻნႍ၎რဈ၌ဋ჎ီ") + param1.language;
         this.countryName = param1.countryIso3;
         this.dateOfRegistration = _c2ad9d37d7be0097d6d2e977._9c73905d95ecb7dae39a4243(param1.timeFromRegistration);
         this.banType = _3e150da9e23ba0916ccbf8e9._4f0abf31624ad8d39f1e1bfd(param1.banType);
         this.userIsModerator = param1.isModerator;
         this.usersPictureUrl = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剌剁刳功剙刵刣初刻勿勇判勰労勏勔刨刞劚勧剶剛刓勡勢勌剒劘剐劽刄剅劲刺刢剬到刖劽劋刑励刘剨剂勋劰労刅勜剱到刄剢删功劓勧勜刚勽剐劑勥剀勊","划劦劇势劓刧刚刉刢刎劂劏勴刌劵募");
         this.userIsOnline = param1.timeFromLastLogin == (0x5832F3E9 ^ 0x7568C470 ^ -602827246 ^ 0x0EB45E74);
         this.userIsFriend = param1.isFriend;
         this.usersLevel = param1.level;
         this.showInventory = param1.showInventory;
         this.totalPlayedHours = int(param1.totalMinutesPlayed / (-1968524119 ^ 0x2E883CBE ^ -1493140840 ^ 0x0322F2B3));
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
         this._34fe228fb908c3ec40a77f76 = param2;
         _dfa25706e58a240c1e33e5c6.profileExtension.addAsFriend(param1,this._7811b3d3a05b1d3f27eb3553);
      }
      
      private function _7811b3d3a05b1d3f27eb3553(param1:Object) : void
      {
         this._34fe228fb908c3ec40a77f76();
      }
   }
}


package protocol.sr.profile
{
   import protocol.api.clubs.base.ResponseWithClubInfo;
   
   public class ProfileUserInfoResp extends ResponseWithClubInfo
   {
      
      public var level:int;
      
      public var totalAmountOfCaughtFish:int;
      
      public var amountCaughtFish:int;
      
      public var amountOfAllFishTypes:int;
      
      public var biggestCaughtFishLength:int;
      
      public var tournamentsWon:int;
      
      public var prizesWon:int;
      
      public var achievementsAreaDone:int;
      
      public var achievementsGlobalDone:int;
      
      public var language:String;
      
      public var age:int;
      
      public var timeFromLastLogin:int;
      
      public var timeFromRegistration:int;
      
      public var totalMinutesPlayed:int;
      
      public var email:String;
      
      public var isModerator:Boolean;
      
      public var banType:String;
      
      public var countryIso3:String;
      
      public var isFriend:Boolean;
      
      public var showInventory:Boolean;
      
      public var friendshipState:String;
      
      public var housePoints:Number;
      
      public var missionsCompleted:int;
      
      public function ProfileUserInfoResp()
      {
         super();
      }
   }
}


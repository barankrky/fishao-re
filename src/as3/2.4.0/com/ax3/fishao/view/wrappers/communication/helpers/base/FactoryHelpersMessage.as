package com.ax3.fishao.view.wrappers.communication.helpers.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.types.PrivateMessageType;
   import com.ax3.fishao.view.wrappers.communication.helpers.HelperMessageEventEnd;
   import com.ax3.fishao.view.wrappers.communication.helpers.club.HelperMessageClubFishUnlocked;
   import com.ax3.fishao.view.wrappers.communication.helpers.club.HelperMessageClubGoalCompleted;
   import com.ax3.fishao.view.wrappers.communication.helpers.club.HelperMessageClubMemberApproved;
   import com.ax3.fishao.view.wrappers.communication.helpers.club.HelperMessageClubMemberKicked;
   import com.ax3.fishao.view.wrappers.communication.helpers.club.HelperMessageClubMemberRejected;
   import com.ax3.fishao.view.wrappers.communication.helpers.club.HelperMessageClubTournamentEnd;
   
   public class FactoryHelpersMessage
   {
      
      public function FactoryHelpersMessage()
      {
         super();
      }
      
      public static function createHelper(param1:String) : HelperMessageBase
      {
         var _loc2_:HelperMessageBase = null;
         switch(param1)
         {
            case PrivateMessageType.EVENT_END:
               _loc2_ = new HelperMessageEventEnd();
               break;
            case PrivateMessageType.CLUB_TOURNAMENT_END:
               _loc2_ = new HelperMessageClubTournamentEnd();
               break;
            case PrivateMessageType.CLUB_GOAL_COMPLETED:
               _loc2_ = new HelperMessageClubGoalCompleted();
               break;
            case PrivateMessageType.CLUB_MEMBER_KICKED:
               _loc2_ = new HelperMessageClubMemberKicked();
               break;
            case PrivateMessageType.CLUB_MEMBER_APPROVED:
               _loc2_ = new HelperMessageClubMemberApproved();
               break;
            case PrivateMessageType.CLUB_MEMBER_REJECTED:
               _loc2_ = new HelperMessageClubMemberRejected();
               break;
            case PrivateMessageType.CLUB_FISH_UNLOCKED:
               _loc2_ = new HelperMessageClubFishUnlocked();
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}


package com.ax3.fishao.tutorial
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.tutorial.common.common_a.TutorialInfoCommonAGuest;
   import com.ax3.fishao.tutorial.common.common_a.TutorialInfoCommonARegistered;
   import com.ax3.fishao.tutorial.common.common_b.TutorialInfoCommonBGuest;
   import com.ax3.fishao.tutorial.common.common_b.TutorialInfoCommonBRegistered;
   import com.ax3.fishao.tutorial.simple.bob.TutorialInfoBob;
   import com.ax3.fishao.tutorial.simple.change_character.TutorialInfoChangeCharacter;
   import com.ax3.fishao.tutorial.simple.decoration.TutorialInfoDecoration;
   import com.ax3.fishao.tutorial.simple.fish_market.TutorialInfoFishMarket;
   
   public class FactoryTutorial
   {
      
      public function FactoryTutorial()
      {
         super();
      }
      
      public static function createTutorial(param1:Object) : TutorialInfo
      {
         var _loc2_:TutorialInfo = null;
         var _loc3_:String = param1["type"];
         switch(_loc3_)
         {
            case ETutorialType.ETT_COMMON_A_GUEST:
               _loc2_ = new TutorialInfoCommonAGuest();
               break;
            case ETutorialType.ETT_COMMON_A_REGISTERED:
               _loc2_ = new TutorialInfoCommonARegistered();
               break;
            case ETutorialType.ETT_COMMON_B_GUEST:
               _loc2_ = new TutorialInfoCommonBGuest();
               break;
            case ETutorialType.ETT_COMMON_B_REGISTERED:
               _loc2_ = new TutorialInfoCommonBRegistered();
               break;
            case ETutorialType.ETT_DECORATION:
               _loc2_ = new TutorialInfoDecoration();
               break;
            case ETutorialType.ETT_BOB_GAME:
               _loc2_ = new TutorialInfoBob();
               break;
            case ETutorialType.ETT_FISH_MARKET:
               _loc2_ = new TutorialInfoFishMarket();
               break;
            case ETutorialType.ETT_CHANGE_CHARACTER:
               _loc2_ = new TutorialInfoChangeCharacter();
               break;
            default:
               Debug.assert(false);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}


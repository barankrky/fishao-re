package com.ax3.fishao.quests
{
   import com.ax3.fishao.debug.Debug;
   
   public class FactoryQuestInfo
   {
      
      public function FactoryQuestInfo()
      {
         super();
      }
      
      public static function createQuestInfo(param1:String, param2:Object) : QuestInfoBase
      {
         var _loc3_:QuestInfoBase = null;
         switch(param1)
         {
            case EQuestType.EQT_GAME_END:
               _loc3_ = new QuestInfoGameEnd();
               break;
            case EQuestType.EQT_PIRATE_CAVE:
               _loc3_ = new QuestInfoPirateCave();
               break;
            default:
               Debug.assert(false,"FactoryQuestInfo::createQuestInfo. Type:" + param1);
         }
         if(_loc3_ != null)
         {
            _loc3_.deserialize(param2);
         }
         return _loc3_;
      }
   }
}


package com.ax3.fishao.quests
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.utils.Dictionary;
   import protocol.api.quests.FscExtensionQuests;
   import protocol.api.quests.init.ResponseQuestsInit;
   import protocol.api.quests.update.ResponseQuestsUpdate;
   
   public class ManagerQuests extends ManagerBase
   {
      
      private var _questsMap:Dictionary;
      
      private var _extensionQuests:FscExtensionQuests;
      
      public function ManagerQuests()
      {
         super();
         this.init();
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         super.onInitDataLoaded(param1);
         var _loc4_:ResponseQuestsInit = param1 as ResponseQuestsInit;
         for(_loc2_ in _loc4_.questsMap)
         {
            _loc3_ = _loc4_.questsMap[_loc2_];
            this._questsMap[_loc2_] = FactoryQuestInfo.createQuestInfo(_loc2_,_loc3_);
         }
      }
      
      private function onQuestInfoUpdated(param1:ResponseQuestsUpdate) : void
      {
         var _loc2_:String = null;
         var _loc3_:QuestInfoBase = null;
         var _loc4_:Object = null;
         for(_loc2_ in param1.questsMap)
         {
            _loc3_ = this._questsMap[_loc2_];
            _loc4_ = param1.questsMap[_loc2_];
            if(_loc3_ == null)
            {
               _loc3_ = FactoryQuestInfo.createQuestInfo(_loc2_,_loc4_);
            }
            else
            {
               _loc3_.deserialize(_loc4_);
            }
            this._questsMap[_loc2_] = _loc3_;
         }
      }
      
      private function init() : void
      {
         this._questsMap = new Dictionary(true);
         this._extensionQuests = FishaoFscModelManager.fscModel.extensionQuests;
         _remoteExtension = this._extensionQuests;
         addResponseHandler(ResponseQuestsUpdate,this.onQuestInfoUpdated);
      }
      
      public function getQuestInfoByType(param1:String) : QuestInfoBase
      {
         return this._questsMap[param1];
      }
   }
}


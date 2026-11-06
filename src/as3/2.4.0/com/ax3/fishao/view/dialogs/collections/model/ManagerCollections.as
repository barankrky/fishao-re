package com.ax3.fishao.view.dialogs.collections.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.collectionPrize.DialogCollectionPrize;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import protocol.api.collections.add.ResponseCollectionsAdd;
   import protocol.api.collections.init.ResponseCollectionsInit;
   import protocol.api.collections.update.ResponseCollectionsUpdate;
   
   public class ManagerCollections extends ManagerBase
   {
      
      private var _collectionsCompleted:Array;
      
      private var _collectionsNotCompleted:Array;
      
      public function ManagerCollections()
      {
         super();
         this._collectionsCompleted = [];
         this._collectionsNotCompleted = [];
         _remoteExtension = FishaoFscModelManager.fscModel.extensionCollections;
         addResponseHandler(ResponseCollectionsAdd,this.onNewCollectionsReceived);
         addResponseHandler(ResponseCollectionsUpdate,this.onCollectionUpdate);
      }
      
      public function get collectionsCompleted() : Array
      {
         return this._collectionsCompleted;
      }
      
      public function get collectionsNotCompleted() : Array
      {
         return this._collectionsNotCompleted;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseCollectionsInit = param1 as ResponseCollectionsInit;
         var _loc3_:Array = decodeJson(_loc2_.list);
         this.addCollections(_loc3_);
      }
      
      private function onNewCollectionsReceived(param1:ResponseCollectionsAdd) : void
      {
         var _loc2_:Array = decodeJson(param1.list);
         this.addCollections(_loc2_);
      }
      
      private function onCollectionUpdate(param1:ResponseCollectionsUpdate) : void
      {
         var _loc2_:DialogCollectionPrize = null;
         var _loc3_:CollectionBase = this.getCollectionById(param1.collectionID);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Boolean = _loc3_.isComplete;
         _loc3_.deserialize(param1.collectionData);
         if(!_loc4_ && _loc3_.isComplete)
         {
            UtilsArray.removeValue(this._collectionsNotCompleted,_loc3_);
            this._collectionsCompleted.unshift(_loc3_);
            _loc2_ = app.dialogFactory.getCollectionPrizeSwfDialog();
            _loc2_.entity = _loc3_;
            _loc2_.show();
         }
         else if(_loc4_ && !_loc3_.isComplete)
         {
            UtilsArray.removeValue(this._collectionsCompleted,_loc3_);
            this._collectionsNotCompleted.unshift(_loc3_);
         }
      }
      
      private function getCollectionById(param1:int) : CollectionBase
      {
         var _loc2_:CollectionBase = null;
         var _loc3_:CollectionBase = null;
         for each(_loc2_ in this._collectionsNotCompleted)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         if(_loc3_ == null)
         {
            for each(_loc2_ in this._collectionsCompleted)
            {
               if(_loc2_.id == param1)
               {
                  _loc3_ = _loc2_;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      private function addCollections(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:CollectionBase = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = FactoryCollection.createCollection(_loc2_);
            if(_loc3_.isComplete)
            {
               this._collectionsCompleted.push(_loc3_);
            }
            else
            {
               this._collectionsNotCompleted.push(_loc3_);
            }
         }
      }
      
      public function sortItems() : void
      {
         this._collectionsNotCompleted.sort(CollectionBase.sortByRequirement);
         this._collectionsCompleted.sort(CollectionBase.sortByCompleteTimeAgo);
      }
   }
}


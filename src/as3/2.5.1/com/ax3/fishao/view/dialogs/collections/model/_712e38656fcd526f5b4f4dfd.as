package com.ax3.fishao.view.dialogs.collections.model
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.collectionPrize._1af0d6db7f2f1c1b21ceeb5e;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   import protocol.api.collections.add.ResponseCollectionsAdd;
   import protocol.api.collections.init.ResponseCollectionsInit;
   import protocol.api.collections.update.ResponseCollectionsUpdate;
   
   public class _712e38656fcd526f5b4f4dfd extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _4e5a5cbf6a03c5b03fff22b0:Array;
      
      private var _75947d33390dfab752eb074d:Array;
      
      public function _712e38656fcd526f5b4f4dfd()
      {
         super();
         this._4e5a5cbf6a03c5b03fff22b0 = [];
         this._75947d33390dfab752eb074d = [];
         _remoteExtension = _dfa25706e58a240c1e33e5c6.fscModel.extensionCollections;
         _4575c3ec15103b43cbf2be04(ResponseCollectionsAdd,this._de325772dfe9859353c5b6f0);
         _4575c3ec15103b43cbf2be04(ResponseCollectionsUpdate,this._803fe69d10d64d7d1b1a0068);
      }
      
      public function get collectionsCompleted() : Array
      {
         return this._4e5a5cbf6a03c5b03fff22b0;
      }
      
      public function get collectionsNotCompleted() : Array
      {
         return this._75947d33390dfab752eb074d;
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc2_:ResponseCollectionsInit = param1 as ResponseCollectionsInit;
         var _loc3_:Array = decodeJson(_loc2_.list);
         this._b98846cdc22aef85391b406d(_loc3_);
      }
      
      private function _de325772dfe9859353c5b6f0(param1:ResponseCollectionsAdd) : void
      {
         var _loc2_:Array = decodeJson(param1.list);
         this._b98846cdc22aef85391b406d(_loc2_);
      }
      
      private function _803fe69d10d64d7d1b1a0068(param1:ResponseCollectionsUpdate) : void
      {
         var _loc2_:_1af0d6db7f2f1c1b21ceeb5e = null;
         var _loc3_:_a9131e6257bb33cc49417f53 = this._4444f6f20055d5aa095b6858(param1.collectionID);
         if(_loc3_ == null)
         {
            return;
         }
         var _loc4_:Boolean = _loc3_.isComplete;
         _loc3_.deserialize(param1.collectionData);
         if(!_loc4_ && _loc3_.isComplete)
         {
            _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._75947d33390dfab752eb074d,_loc3_);
            this._4e5a5cbf6a03c5b03fff22b0.unshift(_loc3_);
            _loc2_ = app.dialogFactory._f478e2cacde7947499bc4f2a();
            _loc2_.entity = _loc3_;
            _loc2_.show();
         }
         else if(_loc4_ && !_loc3_.isComplete)
         {
            _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._4e5a5cbf6a03c5b03fff22b0,_loc3_);
            this._75947d33390dfab752eb074d.unshift(_loc3_);
         }
      }
      
      private function _4444f6f20055d5aa095b6858(param1:int) : _a9131e6257bb33cc49417f53
      {
         var _loc2_:_a9131e6257bb33cc49417f53 = null;
         var _loc3_:_a9131e6257bb33cc49417f53 = null;
         for each(_loc2_ in this._75947d33390dfab752eb074d)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         if(_loc3_ == null)
         {
            for each(_loc2_ in this._4e5a5cbf6a03c5b03fff22b0)
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
      
      private function _b98846cdc22aef85391b406d(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_a9131e6257bb33cc49417f53 = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = _41a9abfb978f97e8ad1af3f2._a046bd55843ecee97de21baa(_loc2_);
            if(_loc3_.isComplete)
            {
               this._4e5a5cbf6a03c5b03fff22b0.push(_loc3_);
            }
            else
            {
               this._75947d33390dfab752eb074d.push(_loc3_);
            }
         }
      }
      
      public function _29a7aafc75dcbdf339b4a6a2() : void
      {
         this._75947d33390dfab752eb074d.sort(_a9131e6257bb33cc49417f53._b1544f695aabef28392e6ed9);
         this._4e5a5cbf6a03c5b03fff22b0.sort(_a9131e6257bb33cc49417f53._7d661f70714d37a3f34a436a);
      }
   }
}


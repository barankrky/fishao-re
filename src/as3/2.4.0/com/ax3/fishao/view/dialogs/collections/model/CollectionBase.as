package com.ax3.fishao.view.dialogs.collections.model
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.model.info.RewardItem;
   import com.ax3.fishao.requirements.FactoryRequirement;
   import com.ax3.fishao.requirements.RequirementBase;
   import com.ax3.fishao.utils.I18n;
   import com.brokenfunction.json.decodeJson;
   
   public class CollectionBase
   {
      
      private var _id:int;
      
      private var _type:int;
      
      private var _reward:RewardItem;
      
      private var _isComplete:Boolean;
      
      private var _completeTimeAgo:int;
      
      private var _requirements:Array;
      
      protected var _itemsIDs:Array;
      
      private var _collectedItemsIDs:Array;
      
      private var _locationIDs:Array;
      
      public function CollectionBase()
      {
         super();
         this._itemsIDs = [];
         this._collectedItemsIDs = [];
         this._locationIDs = [];
      }
      
      protected static function sortFishByName(param1:int, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:String = I18n.get("fish_" + param1);
         var _loc5_:String = I18n.get("fish_" + param2);
         if(_loc4_ > _loc5_)
         {
            _loc3_ = 1;
         }
         else if(_loc4_ < _loc5_)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      protected static function sortDecorationByName(param1:int, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:String = I18n.get("decoration_" + param1);
         var _loc5_:String = I18n.get("decoration_" + param2);
         if(_loc4_ > _loc5_)
         {
            _loc3_ = 1;
         }
         else if(_loc4_ < _loc5_)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      protected static function sortFruitByName(param1:int, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:String = I18n.get("fruit_" + param1);
         var _loc5_:String = I18n.get("fruit_" + param2);
         if(_loc4_ > _loc5_)
         {
            _loc3_ = 1;
         }
         else if(_loc4_ < _loc5_)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public static function sortByRequirement(param1:CollectionBase, param2:CollectionBase) : int
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = param1.isLocked;
         var _loc5_:Boolean = param2.isLocked;
         if(_loc4_ && _loc5_ || !_loc4_ && !_loc5_)
         {
            _loc3_ = sortById(param1,param2);
         }
         else if(_loc4_)
         {
            _loc3_ = 1;
         }
         else if(_loc5_)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public static function sortByCompleteTimeAgo(param1:CollectionBase, param2:CollectionBase) : int
      {
         var _loc3_:int = 0;
         if(param1._completeTimeAgo > param2._completeTimeAgo)
         {
            _loc3_ = 1;
         }
         else if(param1._completeTimeAgo < param2._completeTimeAgo)
         {
            _loc3_ = -1;
         }
         else
         {
            _loc3_ = sortById(param1,param2);
         }
         return _loc3_;
      }
      
      public static function sortById(param1:CollectionBase, param2:CollectionBase) : int
      {
         var _loc3_:int = 0;
         if(param1._id > param2._id)
         {
            _loc3_ = 1;
         }
         else if(param1._id < param2._id)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public static function sortByType(param1:CollectionBase, param2:CollectionBase) : int
      {
         var _loc3_:int = 0;
         if(param1._type == param2._type)
         {
            _loc3_ = 0;
         }
         else if(param1._type == ECollectionType.ECT_COLLECT_FOSSILS)
         {
            _loc3_ = 1;
         }
         else if(param2._type == ECollectionType.ECT_COLLECT_FOSSILS)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public function get isCanCollectOnCurrentLocation() : Boolean
      {
         var _loc1_:LocationModel = null;
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         if(GameSwf.currentLocationDialog != null)
         {
            _loc1_ = GameSwf.currentLocationDialog.locationModel;
            _loc2_ = _loc1_.absoluteId;
            _loc3_ = this._locationIDs.indexOf(_loc2_) != ConstantsBase.INDEX_NONE;
         }
         return _loc3_;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isComplete() : Boolean
      {
         return this._isComplete;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get reward() : RewardItem
      {
         return this._reward;
      }
      
      public function get isLocked() : Boolean
      {
         var _loc1_:RequirementBase = null;
         var _loc2_:Boolean = false;
         for each(_loc1_ in this._requirements)
         {
            if(!_loc1_.isComplete)
            {
               _loc2_ = true;
               break;
            }
         }
         return _loc2_;
      }
      
      public function get requirements() : Array
      {
         return this._requirements;
      }
      
      public function get itemsIDs() : Array
      {
         return this._itemsIDs;
      }
      
      public function get collectedItemsIDs() : Array
      {
         return this._collectedItemsIDs;
      }
      
      public function deserialize(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         this._id = Debug.getPropertyOrDefault(param1,"id",this._id);
         this._type = Debug.getPropertyOrDefault(param1,"type",this._type);
         if(param1.hasOwnProperty("reward_info"))
         {
            _loc2_ = decodeJson(Debug.assertProperty(param1,"reward_info"));
            this._reward = new RewardItem();
            this._reward.deserialize(_loc2_);
         }
         this._isComplete = Debug.getPropertyOrDefault(param1,"is_complete",this._isComplete);
         this._completeTimeAgo = Debug.getPropertyOrDefault(param1,"completed_time_ago",this._completeTimeAgo);
         if(param1.hasOwnProperty("requirements"))
         {
            _loc3_ = decodeJson(param1["requirements"]);
            this._requirements = FactoryRequirement.createRequirements(_loc3_);
         }
         if(param1.hasOwnProperty("collected_items_ids"))
         {
            this._collectedItemsIDs = [];
            _loc4_ = decodeJson(param1["collected_items_ids"]);
            for each(_loc5_ in _loc4_)
            {
               this._collectedItemsIDs.push(_loc5_);
            }
         }
         if(param1.hasOwnProperty("collection_items_ids"))
         {
            this._itemsIDs = [];
            _loc6_ = decodeJson(param1["collection_items_ids"]);
            for each(_loc7_ in _loc6_)
            {
               this._itemsIDs.push(_loc7_);
            }
         }
         if(param1.hasOwnProperty("location_ids"))
         {
            this._locationIDs = [];
            this._locationIDs = decodeJson(param1["location_ids"]);
         }
      }
   }
}


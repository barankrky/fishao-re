package com.ax3.fishao.view.dialogs.monster_fishes.base
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   
   public class MonsterFishInfo
   {
      
      private var _type:String;
      
      private var _fishIDs:Array;
      
      private var _requiredFeedLevel:int;
      
      private var _fishingDurationMultiplier:Number;
      
      public function MonsterFishInfo()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get requiredFeedLevel() : int
      {
         return this._requiredFeedLevel;
      }
      
      public function get fishingDurationMultiplier() : Number
      {
         return this._fishingDurationMultiplier;
      }
      
      public function isRelatedToFishId(param1:int) : Boolean
      {
         return this._fishIDs.indexOf(param1) != ConstantsBase.INDEX_NONE;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
         this._fishIDs = Debug.assertProperty(param1,"fish_ids",Array);
         this._requiredFeedLevel = Debug.assertProperty(param1,"required_feed_level");
         this._fishingDurationMultiplier = Debug.assertProperty(param1,"fishing_duration_multiplier");
      }
   }
}


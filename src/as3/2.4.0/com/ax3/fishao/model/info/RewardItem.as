package com.ax3.fishao.model.info
{
   import com.ax3.fishao.debug.Debug;
   
   public class RewardItem
   {
      
      private var _resourceType:int;
      
      private var _resourceId:int;
      
      private var _amount:int;
      
      public function RewardItem()
      {
         super();
      }
      
      public function get resourceType() : int
      {
         return this._resourceType;
      }
      
      public function get resourceId() : int
      {
         return this._resourceId;
      }
      
      public function get amount() : int
      {
         return this._amount;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._resourceType = Debug.assertProperty(param1,"resource_type");
         this._resourceId = Debug.assertProperty(param1,"resource_id");
         this._amount = Debug.assertProperty(param1,"amount");
      }
   }
}


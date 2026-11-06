package com.ax3.fishao.display.panels
{
   public class InfluencingItemWidget
   {
      
      private var _itemId:int;
      
      private var _itemTypeId:int;
      
      public function InfluencingItemWidget(param1:int, param2:int)
      {
         super();
         this._itemId = param2;
         this._itemTypeId = param1;
      }
      
      public function get itemId() : int
      {
         return this._itemId;
      }
      
      public function get itemTypeId() : int
      {
         return this._itemTypeId;
      }
   }
}


package com.ax3.fishao.view.dialogs.collections.model
{
   public class CollectionCollectFurniture extends CollectionBase
   {
      
      public function CollectionCollectFurniture()
      {
         super();
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         _itemsIDs.sort(sortDecorationByName);
      }
   }
}


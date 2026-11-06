package com.ax3.fishao.view.dialogs.collections.model
{
   public class CollectionCrushFruits extends CollectionBase
   {
      
      public function CollectionCrushFruits()
      {
         super();
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         _itemsIDs.sort(sortFruitByName);
      }
   }
}


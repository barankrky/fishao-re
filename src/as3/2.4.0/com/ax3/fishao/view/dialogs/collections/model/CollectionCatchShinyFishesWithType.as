package com.ax3.fishao.view.dialogs.collections.model
{
   public class CollectionCatchShinyFishesWithType extends CollectionBase
   {
      
      public function CollectionCatchShinyFishesWithType()
      {
         super();
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         _itemsIDs.sort(sortFishByName);
      }
   }
}


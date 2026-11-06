package com.ax3.fishao.view.dialogs.collections.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class FactoryCollection
   {
      
      public function FactoryCollection()
      {
         super();
      }
      
      public static function createCollection(param1:Object) : CollectionBase
      {
         var _loc2_:CollectionBase = null;
         switch(param1["type"])
         {
            case ECollectionType.ECT_CATCH_ALL_FISHES_AT_LOCATION:
               _loc2_ = new CollectionCatchFishesAtLocation();
               break;
            case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_NAME:
            case ECollectionType.ECT_CATCH_ALL_FISHES_WITH_TYPE:
               _loc2_ = new CollectionCatchFishesWithType();
               break;
            case ECollectionType.ECT_COLLECT_FURNITURE:
               _loc2_ = new CollectionCollectFurniture();
               break;
            case ECollectionType.ECT_FURNITURE_FACTORY:
               _loc2_ = new CollectionFurnitureFactory();
               break;
            case ECollectionType.ECT_CATCH_SHINY_FISH_WITH_TYPE:
               _loc2_ = new CollectionCatchShinyFishesWithType();
               break;
            case ECollectionType.ECT_COLLECT_FOSSILS:
               _loc2_ = new CollectionFossils();
               break;
            case ECollectionType.ECT_CRUSH_FRUITS:
               _loc2_ = new CollectionCrushFruits();
               break;
            default:
               Debug.assert(false);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}


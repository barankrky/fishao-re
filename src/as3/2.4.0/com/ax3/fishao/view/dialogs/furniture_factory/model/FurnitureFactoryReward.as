package com.ax3.fishao.view.dialogs.furniture_factory.model
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.info.RewardItem;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class FurnitureFactoryReward
   {
      
      private var _item:RewardItem;
      
      private var _imageUrl:String;
      
      private var _rarity:int;
      
      private var _translationItem:String;
      
      private var _translationRarity:String;
      
      public function FurnitureFactoryReward()
      {
         super();
      }
      
      public function get item() : RewardItem
      {
         return this._item;
      }
      
      public function get imageUrl() : String
      {
         return this._imageUrl;
      }
      
      public function get rarity() : int
      {
         return this._rarity;
      }
      
      public function get translationItem() : String
      {
         return this._translationItem;
      }
      
      public function get translationRarity() : String
      {
         return this._translationRarity;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._item = new RewardItem();
         this._item.deserialize(param1);
         var _loc2_:ResourceType = ResourceType.findById(this._item.resourceType);
         this._imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(_loc2_.name,this._item.resourceId));
         var _loc3_:Object = app.privateHouseInteriorItemDict.get(this._item.resourceId);
         if(_loc3_ != null && _loc3_.hasOwnProperty("rarity"))
         {
            this._rarity = _loc3_.rarity;
         }
         this._translationItem = I18n.get(_loc2_.name + "_" + this._item.resourceId);
         this._translationRarity = I18n.get(EStringType.EST_FURNITURE_FACTORY_REWARD_RARITY + "_" + this._rarity);
      }
   }
}


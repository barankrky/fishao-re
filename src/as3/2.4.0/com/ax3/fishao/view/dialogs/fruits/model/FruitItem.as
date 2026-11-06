package com.ax3.fishao.view.dialogs.fruits.model
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   
   public class FruitItem
   {
      
      private var _id:int;
      
      private var _amount:int;
      
      private var _imageUrl:String;
      
      public function FruitItem(param1:int, param2:int)
      {
         super();
         this._id = param1;
         this._amount = param2;
         this.init();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get imageUrl() : String
      {
         return this._imageUrl;
      }
      
      public function get amount() : int
      {
         return this._amount;
      }
      
      public function set amount(param1:int) : void
      {
         this._amount = param1;
      }
      
      private function init() : void
      {
         this._imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.FRUIT.name,this._id));
      }
   }
}


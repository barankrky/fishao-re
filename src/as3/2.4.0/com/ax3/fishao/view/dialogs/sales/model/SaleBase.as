package com.ax3.fishao.view.dialogs.sales.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   
   public class SaleBase
   {
      
      private var _id:int;
      
      private var _type:String;
      
      private var _iconName:String;
      
      private var _iconUrl:String;
      
      private var _isShown:Boolean;
      
      public function SaleBase()
      {
         super();
         this._isShown = false;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get iconUrl() : String
      {
         return this._iconUrl;
      }
      
      public function set isShown(param1:Boolean) : void
      {
         this._isShown = param1;
      }
      
      public function get isShown() : Boolean
      {
         return this._isShown;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._id = Debug.assertProperty(param1,"id");
         this._type = Debug.assertProperty(param1,"type");
         this._iconName = Debug.assertProperty(param1,"icon_name");
         this._iconUrl = FishaoBitmapLoader.convertImageNameURL("sales/" + this._iconName);
      }
      
      public function start() : void
      {
      }
      
      public function end() : void
      {
      }
   }
}


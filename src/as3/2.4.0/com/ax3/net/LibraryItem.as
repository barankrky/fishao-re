package com.ax3.net
{
   public class LibraryItem
   {
      
      public var name:String;
      
      protected var _loaded:Boolean;
      
      protected var _item:Object;
      
      public function LibraryItem(param1:String, param2:Object = null)
      {
         super();
         this.name = param1;
         this._item = param2;
      }
      
      public function isLoaded() : Boolean
      {
         return Boolean(this._item) && this._loaded;
      }
      
      public function set loaded(param1:Boolean) : void
      {
         this._loaded = param1;
      }
      
      public function get item() : Object
      {
         return this._item;
      }
      
      public function set item(param1:Object) : void
      {
         this._item = param1;
      }
      
      public function toString() : String
      {
         return "LibraryItem(name=" + this.name + ")";
      }
   }
}


package com.ax3.fishao.view.dialogs.inventory
{
   import com.ax3.fishao.model.info.UserResource;
   
   public class InventoryTabInfo
   {
      
      private var _userResource:UserResource;
      
      private var _resourceId:int;
      
      private var _selectedItemId:int;
      
      private var _kind:String;
      
      public function InventoryTabInfo()
      {
         super();
         this.init();
      }
      
      public function get userResource() : UserResource
      {
         return this._userResource;
      }
      
      public function set userResource(param1:UserResource) : void
      {
         this._userResource = param1;
      }
      
      public function get resourceId() : int
      {
         return this._resourceId;
      }
      
      public function set resourceId(param1:int) : void
      {
         this._resourceId = param1;
      }
      
      public function get selectedItemId() : int
      {
         return this._selectedItemId;
      }
      
      public function set selectedItemId(param1:int) : void
      {
         this._selectedItemId = param1;
      }
      
      public function get kind() : String
      {
         return this._kind;
      }
      
      public function set kind(param1:String) : void
      {
         this._kind = param1;
      }
      
      private function init() : void
      {
         this._selectedItemId = -1;
         this._kind = "";
      }
   }
}


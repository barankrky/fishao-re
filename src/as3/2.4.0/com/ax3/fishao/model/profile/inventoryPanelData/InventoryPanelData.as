package com.ax3.fishao.model.profile.inventoryPanelData
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.info.InventoryItem;
   import com.ax3.fishao.model.profile.ProfilePanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import protocol.sr.profile.ProfileInventoryResp;
   
   public class InventoryPanelData extends ProfilePanelData
   {
      
      public var itemsList:Vector.<Object>;
      
      public var typesNamesList:Vector.<String>;
      
      private var _typesByNameObject:Object;
      
      public function InventoryPanelData()
      {
         super();
         this.itemsList = new Vector.<Object>(0);
         this.typesNamesList = new <String>[I18n.getUpper("all"),I18n.get("Rods"),I18n.get("Bait"),I18n.get("Fishes"),I18n.get("Decorations"),I18n.get("Other"),I18n.get("Looks")];
         this._typesByNameObject = {};
         this._typesByNameObject[I18n.get("Rods")] = ResourceType.ROD.id;
         this._typesByNameObject[I18n.get("Bait")] = ResourceType.BAIT.id;
         this._typesByNameObject[I18n.get("Other")] = ResourceType.OTHER.id;
         this._typesByNameObject[I18n.get("Looks")] = ResourceType.CLOTHE.id;
         this._typesByNameObject[I18n.get("Fishes")] = ResourceType.FISH.id;
         this._typesByNameObject[I18n.get("Decorations")] = ResourceType.DECORATION.id;
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         this.itemsList = new Vector.<Object>(0);
         super.load(param1,param2);
         FishaoFscModelManager.profileExtension.getProfileInventoryInfo(_login,Preloader.waitForResponse(this.initServerData));
      }
      
      public function getItemsList(param1:String) : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = new Vector.<Object>(0);
         var _loc3_:Boolean = this._typesByNameObject[param1] == null;
         var _loc4_:Number = 0;
         while(_loc4_ < this.itemsList.length)
         {
            if(_loc3_ || InventoryItem(this.itemsList[_loc4_]).type == this._typesByNameObject[param1] || this._typesByNameObject[param1] == ResourceType.OTHER.id && (InventoryItem(this.itemsList[_loc4_]).type == ResourceType.OTHER.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.FISHBOX.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.LUCK_POTION.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.FISH_RADAR.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.MAGIC_WATCH.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.EXP_BOOSTER.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.SHINY_POTION.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.POWER_BOOSTER.id || InventoryItem(this.itemsList[_loc4_]).type == ResourceType.FLOAT.id))
            {
               _loc2_.push(this.itemsList[_loc4_]);
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      private function initServerData(param1:ProfileInventoryResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         this.itemsList = new Vector.<Object>(0);
         if(param1.inventory)
         {
            _loc2_ = JSON.parse(param1.inventory);
            if(_loc2_ is Array)
            {
               _loc3_ = _loc2_ as Array;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = int(_loc3_[_loc4_].resourceId);
                  _loc6_ = int(_loc3_[_loc4_].resourceType);
                  _loc7_ = int(_loc3_[_loc4_].qualityLeft);
                  this.addInventory(_loc5_,_loc6_,_loc7_,0);
                  _loc4_++;
               }
            }
         }
         _callback();
      }
      
      private function addInventory(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.itemsList.push(InventoryItem.createItemWithType(param2,param1,param3,param4));
      }
   }
}


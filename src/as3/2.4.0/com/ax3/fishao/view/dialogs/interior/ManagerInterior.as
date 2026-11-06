package com.ax3.fishao.view.dialogs.interior
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemRotation;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemType;
   import com.ax3.fishao.model.vo.PrivateHouseInteriorItemVO;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.interior.FscExtensionInterior;
   import protocol.api.interior.get_info.ResponseInteriorGetInfo;
   import protocol.api.interior.update.ResponseInteriorUpdate;
   
   public class ManagerInterior extends ManagerBase
   {
      
      private var _extensionInterior:FscExtensionInterior;
      
      private var _currentLocationItems:Array;
      
      public function ManagerInterior()
      {
         super();
         this.init();
      }
      
      public static function createInteriorItemData(param1:int) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:PrivateHouseInteriorItemVO = app.privateHouseInteriorItemDict.get(param1) as PrivateHouseInteriorItemVO;
         if(_loc3_ != null)
         {
            _loc2_ = {};
            _loc2_.id = _loc3_.id;
            _loc2_.item_id = _loc3_.id;
            _loc2_.price_fishbucks = _loc3_.priceFishbucks;
            _loc2_.price_fishcoins = _loc3_.priceFishcoins;
            _loc2_.type = _loc3_.type;
            _loc2_.rotation = EInteriorItemRotation.EIIR_FRONT;
            _loc2_.floor = 1;
            _loc2_.size_x = _loc3_.size_x;
            _loc2_.size_y = _loc3_.size_y;
            _loc2_.position_x = 0;
            _loc2_.position_y = 0;
         }
         return _loc2_;
      }
      
      public function get currentLocationItems() : Array
      {
         return this._currentLocationItems;
      }
      
      public function set decorationShopItems(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         this._currentLocationItems = [];
         var _loc4_:Vector.<Object> = new Vector.<Object>();
         for each(_loc2_ in param1)
         {
            _loc3_ = createInteriorItemData(_loc2_);
            if(_loc3_ != null)
            {
               if(_loc3_.type == EInteriorItemType.EIIT_FURNITURE)
               {
                  _loc4_.push(_loc3_);
               }
               else
               {
                  this._currentLocationItems.push(_loc3_);
               }
            }
         }
         this.populateRow(_loc4_,0,3);
         this.populateRow(_loc4_,8,3);
         this.populateRow(_loc4_,0,7);
         this.populateRow(_loc4_,8,7);
         this.addCarpsCounterData();
      }
      
      private function onGetInteriorData(param1:ServerResp) : void
      {
         var _loc2_:ResponseInteriorGetInfo = param1 as ResponseInteriorGetInfo;
         if(_loc2_.isDecorationShop)
         {
            this.decorationShopItems = _loc2_.interiorItems;
         }
         else
         {
            this._currentLocationItems = _loc2_.interiorItems;
         }
         var _loc3_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(EControllerUpdate.ECU_INTERIOR_GET_DATA);
         }
      }
      
      private function onInteriorUpdateResponse(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseInteriorUpdate = param1 as ResponseInteriorUpdate;
         this._currentLocationItems = _loc2_.interiorItems;
         var _loc3_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(EControllerUpdate.ECU_INTERIOR_UPDATE);
         }
      }
      
      private function init() : void
      {
         this._extensionInterior = FishaoFscModelManager.fscModel.extensionInterior;
         addResponseHandler(ResponseInteriorGetInfo,this.onGetInteriorData);
         addResponseHandler(ResponseInteriorUpdate,this.onInteriorUpdateResponse);
      }
      
      private function populateRow(param1:Vector.<Object>, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = 4;
         while(_loc7_ < 4 && param1.length > 0)
         {
            _loc5_ = false;
            _loc6_ = 0;
            while(_loc6_ < param1.length)
            {
               _loc4_ = param1[_loc6_];
               if(_loc4_.size_x == _loc8_)
               {
                  _loc4_.position_x = param2 + _loc7_;
                  _loc4_.position_y = param3;
                  this._currentLocationItems.push(_loc4_);
                  _loc7_ += _loc4_.size_x;
                  _loc8_ = int(4 - _loc7_);
                  param1.splice(_loc6_,1);
                  _loc5_ = true;
                  break;
               }
               _loc6_++;
            }
            if(!_loc5_ && _loc8_ > 0)
            {
               _loc8_--;
            }
         }
      }
      
      public function addCarpsCounterData() : void
      {
         var _loc1_:Object = ManagerInterior.createInteriorItemData(130);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.position_x = 4;
         this._currentLocationItems.push(_loc1_);
      }
      
      public function buyItem(param1:int, param2:int, param3:Function = null) : void
      {
         this._extensionInterior.buyItem(param1,param2,param3);
      }
      
      public function getLocationItems(param1:String, param2:Boolean = false, param3:Function = null) : void
      {
         this._extensionInterior.getInfo(param1,param2,param3);
      }
      
      public function save(param1:String, param2:Function = null) : void
      {
         this._extensionInterior.save(param1,param2);
      }
   }
}


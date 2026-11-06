package com.ax3.fishao.view.dialogs.sales
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.sales.model.ESaleType;
   import com.ax3.fishao.view.dialogs.sales.model.FactorySales;
   import com.ax3.fishao.view.dialogs.sales.model.SaleBase;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.sales.FscExtensionSales;
   import protocol.api.sales.end.ResponseSaleEnd;
   import protocol.api.sales.init.ResponseSalesInit;
   import protocol.api.sales.start.ResponseSaleStart;
   
   public class ManagerSales extends ManagerBase
   {
      
      private var _extensionSales:FscExtensionSales;
      
      private var _sales:Array;
      
      private var _salesMap:Dictionary;
      
      public function ManagerSales()
      {
         super();
         this.init();
      }
      
      private function onSalesInit(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:SaleBase = null;
         if(handleResponseError(param1))
         {
            return;
         }
         if(!this.isDataLoaded)
         {
            super.onInitDataLoaded(param1);
         }
         var _loc4_:ResponseSalesInit = param1 as ResponseSalesInit;
         var _loc5_:Array = decodeJson(_loc4_.data) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = FactorySales.createSale(_loc2_);
            this._sales.push(_loc3_);
            this._salesMap[_loc3_.id] = _loc3_;
         }
      }
      
      private function onSaleStart(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseSaleStart = param1 as ResponseSaleStart;
         var _loc3_:Object = decodeJson(_loc2_.sale);
         var _loc4_:SaleBase = FactorySales.createSale(_loc3_);
         this._sales.push(_loc4_);
         this._salesMap[_loc4_.id] = _loc4_;
         _loc4_.start();
      }
      
      private function onSaleEnd(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseSaleEnd = param1 as ResponseSaleEnd;
         var _loc3_:SaleBase = this._salesMap[_loc2_.saleId];
         Debug.assertNotEqual(_loc3_,null,"Impossible to end Sale that is not started");
         this._sales.splice(this._sales.indexOf(_loc3_),1);
         this._salesMap[_loc3_.id] = null;
         _loc3_.end();
      }
      
      private function init() : void
      {
         this._sales = [];
         this._salesMap = new Dictionary(true);
         this._extensionSales = FishaoFscModelManager.fscModel.extensionSales;
         addResponseHandler(ResponseSaleStart,this.onSaleStart);
         addResponseHandler(ResponseSaleEnd,this.onSaleEnd);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         super.loadInitData(param1);
         this._extensionSales.getDataInit(this.onSalesInit);
      }
      
      public function getFishcoinsSaleIfAvailable() : SaleBase
      {
         var _loc1_:SaleBase = null;
         var _loc2_:SaleBase = null;
         for each(_loc1_ in this._sales)
         {
            if(_loc1_.type == ESaleType.EST_EXTRA_AMOUNT)
            {
               _loc2_ = _loc1_;
               break;
            }
         }
         return _loc2_;
      }
   }
}


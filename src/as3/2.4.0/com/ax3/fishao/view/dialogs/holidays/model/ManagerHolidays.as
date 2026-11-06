package com.ax3.fishao.view.dialogs.holidays.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.holidays.model.base.FactoryHolidays;
   import com.ax3.fishao.view.dialogs.holidays.model.base.HolidayInfo;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.holidays.FscExtensionHolidays;
   import protocol.api.holidays.init.ResponseHolidaysInit;
   import protocol.api.holidays.update.ResponseHolidayUpdate;
   
   public class ManagerHolidays extends ManagerBase
   {
      
      private var _extensionHolidays:FscExtensionHolidays;
      
      private var _holidays:Array;
      
      private var _holidaysMap:Dictionary;
      
      public function ManagerHolidays()
      {
         super();
         this.init();
      }
      
      public function getHoliday(param1:String) : HolidayInfo
      {
         return this._holidaysMap[param1];
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:HolidayInfo = null;
         super.onInitDataLoaded(param1);
         var _loc4_:ResponseHolidaysInit = param1 as ResponseHolidaysInit;
         for each(_loc2_ in _loc4_.holidays)
         {
            _loc3_ = FactoryHolidays.createHoliday(_loc2_);
            this._holidays.push(_loc3_);
            this._holidaysMap[_loc3_.type] = _loc3_;
         }
      }
      
      private function onHolidayUpdate(param1:ServerResp) : void
      {
         var _loc2_:ResponseHolidayUpdate = param1 as ResponseHolidayUpdate;
         var _loc3_:Object = decodeJson(_loc2_.data);
         var _loc4_:HolidayInfo = new HolidayInfo();
         _loc4_.deserializeSimple(_loc3_);
         (this._holidaysMap[_loc4_.type] as HolidayInfo).isActive = _loc4_.isActive;
         var _loc5_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc5_ != null)
         {
            _loc5_.updateWithType(EControllerUpdate.ECU_HOLIDAY_UPDATE);
         }
      }
      
      private function init() : void
      {
         this._holidays = [];
         this._holidaysMap = new Dictionary(true);
         this._extensionHolidays = FishaoFscModelManager.fscModel.extensionHolidays;
         _remoteExtension = this._extensionHolidays;
         addResponseHandler(ResponseHolidayUpdate,this.onHolidayUpdate);
      }
   }
}


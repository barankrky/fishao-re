package com.ax3.fishao.view.dialogs.holidays.model
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.holidays.model.base._304106890422442ac0cb20b8;
   import com.ax3.fishao.view.dialogs.holidays.model.base._52645f77443f490b6b19dcd3;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.holidays.FscExtensionHolidays;
   import protocol.api.holidays.init.ResponseHolidaysInit;
   import protocol.api.holidays.update.ResponseHolidayUpdate;
   
   public class _3c51decd20a57adafebafc70 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _b5281d53ba5536b9c9673dc9:FscExtensionHolidays;
      
      private var _32e060df3950fd35e32c1e17:Array;
      
      private var _dfdea3b7fc8d31dbf7a6a972:Dictionary;
      
      public function _3c51decd20a57adafebafc70()
      {
         super();
         this.init();
      }
      
      public function _97ff7d2f681e8eebad63961e(param1:String) : _304106890422442ac0cb20b8
      {
         return this._dfdea3b7fc8d31dbf7a6a972[param1];
      }
      
      override protected function _fcd2ab11aa6496ff709ec1ea(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_304106890422442ac0cb20b8 = null;
         super._fcd2ab11aa6496ff709ec1ea(param1);
         var _loc4_:ResponseHolidaysInit = param1 as ResponseHolidaysInit;
         for each(_loc2_ in _loc4_.holidays)
         {
            _loc3_ = _52645f77443f490b6b19dcd3._d52181b1f788d33aa171ba85(_loc2_);
            this._32e060df3950fd35e32c1e17.push(_loc3_);
            this._dfdea3b7fc8d31dbf7a6a972[_loc3_.type] = _loc3_;
         }
      }
      
      private function _b6453c405e0c570a78a44b2b(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseHolidayUpdate = param1 as ResponseHolidayUpdate;
         var _loc3_:Object = decodeJson(_loc2_.data);
         var _loc4_:_304106890422442ac0cb20b8 = new _304106890422442ac0cb20b8();
         _loc4_._4414e1badeb1091f95f49247(_loc3_);
         (this._dfdea3b7fc8d31dbf7a6a972[_loc4_.type] as _304106890422442ac0cb20b8).isActive = _loc4_.isActive;
         var _loc5_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc5_ != null)
         {
            _loc5_.updateWithType(_6b63fd0a4028eb279b227831.ECU_HOLIDAY_UPDATE);
         }
      }
      
      private function init() : void
      {
         this._32e060df3950fd35e32c1e17 = [];
         this._dfdea3b7fc8d31dbf7a6a972 = new Dictionary(true);
         this._b5281d53ba5536b9c9673dc9 = _dfa25706e58a240c1e33e5c6.fscModel.extensionHolidays;
         _remoteExtension = this._b5281d53ba5536b9c9673dc9;
         _4575c3ec15103b43cbf2be04(ResponseHolidayUpdate,this._b6453c405e0c570a78a44b2b);
      }
   }
}


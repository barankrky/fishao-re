package com.ax3.fishao.view.dialogs.location
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.locations.FscExtensionLocation;
   import protocol.api.locations.change_position.ResponseLocationChangePosition;
   
   public class _a0004c868e522c1510193b5f extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _7a9ceac184ed04c55786d4c5:FscExtensionLocation;
      
      private var _88ccdf615900d498685b6a10:String;
      
      private var _ba134eef89e17da7d78b9fe7:String;
      
      public function _a0004c868e522c1510193b5f()
      {
         super();
         this._7a9ceac184ed04c55786d4c5 = _dfa25706e58a240c1e33e5c6.fscModel.extensionLocation;
         _4575c3ec15103b43cbf2be04(ResponseLocationChangePosition,this._b3b63b5f6fcd4ef0d57384a8);
      }
      
      public function get userChangedPositionLogin() : String
      {
         return this._88ccdf615900d498685b6a10;
      }
      
      public function get userChangedPositionPosition() : String
      {
         return this._ba134eef89e17da7d78b9fe7;
      }
      
      private function _b3b63b5f6fcd4ef0d57384a8(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseLocationChangePosition = param1 as ResponseLocationChangePosition;
         this._88ccdf615900d498685b6a10 = _loc2_.login;
         this._ba134eef89e17da7d78b9fe7 = _loc2_.position_new;
         var _loc3_:_c24229eda44b942058106fae = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(_6b63fd0a4028eb279b227831.ECU_LOCATION_USER_CHANGE_POSITION);
         }
      }
      
      public function changePosition(param1:String, param2:Function = null) : void
      {
         this._7a9ceac184ed04c55786d4c5.changePosition(param1,param2);
      }
   }
}


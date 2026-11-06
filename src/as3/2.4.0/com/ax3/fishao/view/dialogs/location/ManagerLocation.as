package com.ax3.fishao.view.dialogs.location
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.locations.FscExtensionLocation;
   import protocol.api.locations.change_position.ResponseLocationChangePosition;
   
   public class ManagerLocation extends ManagerBase
   {
      
      private var _extensionLocation:FscExtensionLocation;
      
      private var _userChangedPositionLogin:String;
      
      private var _userChangedPositionPosition:String;
      
      public function ManagerLocation()
      {
         super();
         this._extensionLocation = FishaoFscModelManager.fscModel.extensionLocation;
         addResponseHandler(ResponseLocationChangePosition,this.onUserChangePosition);
      }
      
      public function get userChangedPositionLogin() : String
      {
         return this._userChangedPositionLogin;
      }
      
      public function get userChangedPositionPosition() : String
      {
         return this._userChangedPositionPosition;
      }
      
      private function onUserChangePosition(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseLocationChangePosition = param1 as ResponseLocationChangePosition;
         this._userChangedPositionLogin = _loc2_.login;
         this._userChangedPositionPosition = _loc2_.position_new;
         var _loc3_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(EControllerUpdate.ECU_LOCATION_USER_CHANGE_POSITION);
         }
      }
      
      public function changePosition(param1:String, param2:Function = null) : void
      {
         this._extensionLocation.changePosition(param1,param2);
      }
   }
}


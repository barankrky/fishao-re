package com.ax3.fishao.view.dialogs.maintenance
{
   import com.ax3.fishao.display.dialogs.ConnectionLostDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ManagerMaintenance extends ManagerBase
   {
      
      private var _maintenanceTime:uint;
      
      private var _maintenanceIn:uint;
      
      public function ManagerMaintenance()
      {
         super();
         this._maintenanceTime = 0;
         this._maintenanceIn = 0;
      }
      
      public static function showMaintenanceInProgressDialog() : void
      {
         var _loc1_:ConnectionLostDialog = app.dialogFactory.getConnectionLostDialog();
         _loc1_.text = I18n.get("maintenanceInProgress");
         _loc1_.show();
         PopupManager.GAME_FIELD_LAYER.visible = false;
         PopupManager.DIALOG_LAYER.visible = false;
         PopupManager.LOADING_SCREEN.visible = false;
      }
      
      public function get maintenanceTime() : uint
      {
         return this._maintenanceTime;
      }
      
      public function get maintenanceIn() : uint
      {
         return this._maintenanceIn;
      }
      
      public function checkAndProcessMaintanence(param1:ServerResp) : void
      {
         this._maintenanceTime = param1.maintenanceTime;
         this._maintenanceIn = param1.maintenanceIn;
         if(param1.maintenanceTime > 0 && param1.maintenanceIn <= 0)
         {
            showMaintenanceInProgressDialog();
         }
      }
   }
}


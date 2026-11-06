package com.ax3.fishao.mediators
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.display.dialogs.ConnectionLostDialog;
   import com.ax3.fishao.display.dialogs.IconMessageDialog;
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.events.RespErrorEvent;
   import com.ax3.fishao.utils.FishaoDialogFactory;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.model.FishaoFscModel;
   import com.ax3.jss.model.states.FscModelState;
   import com.ax3.jss.model.states.StateChangeEvent;
   import com.ax3.net.LoadingIndicator;
   import com.junkbyte.console.Cc;
   import protocol.api.base.EErrorType;
   import protocol.sr.EnterLocationErrorResp;
   import protocol.sr.ErrorResp;
   import protocol.sr.FishbonesMiniGameError;
   
   public class FscConnectionMediator
   {
      
      private static const KICK_ERROR_CODES:Array = [EErrorType.USER_LOGINED_FROM_ANOTHER_SOCKET,EErrorType.USER_BANNED,"1001",EErrorType.SESSION_NOT_FOUND];
      
      private var _fscModel:FishaoFscModel;
      
      private var _isConnectedState:Boolean = false;
      
      private var _dialogFactory:FishaoDialogFactory;
      
      private var _connectionLostDialog:ConnectionLostDialog;
      
      private var _indicator:LoadingIndicator;
      
      private const IGNORED_ERROR_CODES:Vector.<String> = new <String>["100","206","207","1007","1018",EErrorType.CANT_FISH_IN_ICE,"1030",EErrorType.USER_IS_BIG_SPENDER,EErrorType.LOCATION_NOT_CONTAINS_SHELLS,EErrorType.LOCATION_NOT_CONTAINS_CURRENT_SHELL,EErrorType.LOCATION_NOT_CONTAINS_FRUITS,EErrorType.LOCATION_NOT_CONTAINS_CURRENT_FRUIT];
      
      private const CLOSEABLE_ERROR_CODES:Vector.<String> = new <String>[EErrorType.TRADE_ERROR,EErrorType.TRADE_ID_WRONG,EErrorType.TRADE_DATA_IS_WRONG,"1025","1028","1029","1032",EErrorType.EMAIL_IN_USE,"1035","1036",EErrorType.TRADE_OPPONENT_OUT_OF_LOCATION,EErrorType.TRADE_OPPONENT_IN_TRADING_NOW,"2101","3101","5103","5102","5104","5200"];
      
      public function FscConnectionMediator()
      {
         super();
      }
      
      private static function onFishbonesMiniGameErrorResp(param1:FishbonesMiniGameError) : void
      {
         GameSwf.sendReportToServer("fishboneError");
      }
      
      private function getConnectionLostDialog() : ConnectionLostDialog
      {
         if(this._connectionLostDialog == null)
         {
            this._connectionLostDialog = this._dialogFactory.getConnectionLostDialog();
         }
         return this._connectionLostDialog;
      }
      
      private function onEnterLocationErrorResp(param1:EnterLocationErrorResp) : void
      {
         var _loc2_:IconMessageDialog = null;
         if(param1.errDesc == 3102 || param1.errDesc == 3101)
         {
            _loc2_ = this._dialogFactory.getIconMessageDialog();
            _loc2_.iconType = IconMessageDialog.ERROR_ICON;
            _loc2_.closeButton.visible = true;
            _loc2_.text = I18n.get("enterLocationErrorResp_" + param1.errDesc);
            _loc2_.show();
            if(GameSwf.currentLocationDialog != null)
            {
               GameSwf.closeCurrentLocation();
            }
         }
      }
      
      private function onErrorResp(param1:ErrorResp) : void
      {
         var _loc2_:MessageDialog = null;
         var _loc3_:IconMessageDialog = null;
         var _loc4_:Object = null;
         if(app.user.inLogoutProcess)
         {
            return;
         }
         if(KICK_ERROR_CODES.indexOf(param1.descr) != -1)
         {
            FscConnection.logToFile("Server kick: ErrorResp descr=" + param1.descr);
         }
         switch(param1.descr)
         {
            case EErrorType.USER_LOGINED_FROM_ANOTHER_SOCKET:
               Cc.log("User logined from another socket. Username = " + app.user.username);
               FishaoFscModelManager.fscModel.loginFscExtension.disableReconnect();
               app.user.inLogountProcess = true;
               break;
            case EErrorType.USER_BANNED:
               Cc.log("User banned");
               FishaoFscModelManager.fscModel.loginFscExtension.disableReconnect();
               app.user.inLogountProcess = true;
         }
         if(param1.descr == EErrorType.ENERGY_IS_EMPTY)
         {
            GameSwf.instance.showBuyEnergyWindow();
         }
         else if(param1.descr == "1009")
         {
            GameSwf.instance.stopFishing();
         }
         else if(param1.descr == "1001")
         {
            Cc.log("Disconnect by response.descr == 1001");
            this._fscModel.disconnect();
         }
         else if(param1.descr == EErrorType.SESSION_NOT_FOUND)
         {
            Cc.log("Session not found");
            this.showConnectionLostDialog();
         }
         else if(param1.descr == EErrorType.TOURNAMENT_IP_RESTRICTION || param1.descr == EErrorType.TOURNAMENT_LEVEL_RESTRICTION)
         {
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.setText(I18n.get("errorRespMessage_" + param1.descr));
            _loc2_.buttons = MessageDialog.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
         }
         else if(this.IGNORED_ERROR_CODES.lastIndexOf(param1.descr) == -1)
         {
            if(param1.descr == EErrorType.NOT_ENOUGH_MONEY)
            {
               GameSwf.instance.showBuyFishcoinsDialog();
            }
            else
            {
               _loc3_ = this._dialogFactory.getIconMessageDialog();
               _loc3_.iconType = IconMessageDialog.ERROR_ICON;
               _loc3_.closeButton.visible = this.CLOSEABLE_ERROR_CODES.indexOf(param1.descr) > -1;
               if(param1.descr == EErrorType.EMAIL_IN_USE)
               {
                  GameSwf.sendReportToServer("emailInUse");
               }
               if(param1.params != "" && param1.params != null)
               {
                  _loc4_ = JSON.parse(param1.params);
                  if(_loc4_.hasOwnProperty("banEndTimeLeftSec"))
                  {
                     _loc4_.banEndTimeLeftSec = I18n.formatFullTimestamp(_loc4_.banEndTimeLeftSec);
                  }
                  _loc3_.text = I18n.template("errorRespMessage_" + param1.descr,_loc4_);
               }
               else
               {
                  _loc3_.text = I18n.get("errorRespMessage_" + param1.descr);
               }
               _loc3_.show();
            }
         }
         if(param1.descr == "1008")
         {
            return;
         }
         GameSwf.globalDispatcher.dispatchEvent(new RespErrorEvent(param1));
      }
      
      private function onStateChange(param1:StateChangeEvent = null) : void
      {
         this.updateGivenState();
      }
      
      public function init(param1:FishaoFscModel, param2:FishaoDialogFactory) : void
      {
         var fscModel:FishaoFscModel = param1;
         var dialogFactory:FishaoDialogFactory = param2;
         this._fscModel = fscModel;
         this._dialogFactory = dialogFactory;
         this._fscModel.addEventListener(StateChangeEvent.UPDATE_STATE,this.onStateChange);
         this._fscModel.addRequestHandler(ErrorResp,this.onErrorResp);
         this._fscModel.addRequestHandler(FishbonesMiniGameError,onFishbonesMiniGameErrorResp);
         this._fscModel.addRequestHandler(EnterLocationErrorResp,this.onEnterLocationErrorResp);
         Cc.addSlashCommand("errorResp",function():void
         {
            var _loc1_:ErrorResp = new ErrorResp();
            _loc1_.descr = "0000";
            onErrorResp(_loc1_);
         });
         this._indicator = new LoadingIndicator(LoadingScreen.TYPE_SIMPLE);
         this.updateGivenState();
      }
      
      private function updateGivenState() : void
      {
         var _loc1_:Boolean = this._fscModel.isConnected();
         Cc.logch(this,"isConnected: " + _loc1_ + ", state=" + this._fscModel.state);
         if(this._fscModel.state == FscModelState.ERROR)
         {
            this.showConnectionLostDialog();
         }
         else if(_loc1_ != this._isConnectedState)
         {
            this._isConnectedState = _loc1_;
            if(this._isConnectedState)
            {
               Preloader.removeIndicator(this._indicator);
            }
            else if(this._fscModel.isEstablishingConnection() || this._fscModel.loginFscExtension.isEstablishingSession())
            {
               Preloader.addIndicator(this._indicator);
            }
            else
            {
               this.showConnectionLostDialog();
            }
         }
      }
      
      private function showConnectionLostDialog() : void
      {
         var _loc1_:ConnectionLostDialog = this.getConnectionLostDialog();
         _loc1_.text = "Server is offline. Come back later.";
         _loc1_.show();
         PopupManager.GAME_FIELD_LAYER.visible = false;
         PopupManager.DIALOG_LAYER.visible = false;
         PopupManager.LOADING_SCREEN.visible = false;
      }
      
      public function removeIndicator() : void
      {
         Preloader.removeIndicator(this._indicator);
      }
      
      public function destroy() : void
      {
         this._fscModel.removeEventListener(StateChangeEvent.UPDATE_STATE,this.onStateChange);
         this._fscModel.removeRequestHandler(ErrorResp,this.onErrorResp);
         this._fscModel.removeRequestHandler(FishbonesMiniGameError,onFishbonesMiniGameErrorResp);
         this._fscModel.removeRequestHandler(EnterLocationErrorResp,this.onEnterLocationErrorResp);
      }
   }
}


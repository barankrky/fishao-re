package com.ax3.fishao.display.dialogs
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsRegistration;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.data.EncryptedLocalStore;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import protocol.sr.ErrorResp;
   import protocol.sr.LoginErrorResp;
   import protocol.sr.LoginSuccessResp;
   import protocol.sr.RegisterErrorResp;
   import protocol.sr.UpdateResp;
   
   public class LoginDialog extends LoginDialogAsset
   {
      
      private static const SAVED_LOGIN_KEY:String = "savedLogin";
      
      public function LoginDialog()
      {
         super();
         init(app.dialogManager.assetWrappersProcessor);
         loginButton.handler = this.onLoginButtonClick;
         regButton.handler = this.onRegistrationButtonClick;
         this.loadSavedLogin();
         if(Debug.AUTO_LOGIN)
         {
            this.onLoginButtonClick();
         }
      }
      
      private function onUserLogin(param1:Object) : void
      {
         var data:Object = param1;
         var colorStatisticResponse:Object = null;
         if(data is ErrorResp)
         {
            this.onLoginError(data as ErrorResp);
         }
         else if(data is UpdateResp)
         {
            try
            {
               colorStatisticResponse = this.parseColorStatisticResponse(data);
               this.close();
               GameSwf.instance.showCharacterDialog(decodeJson(data.data.charView),colorStatisticResponse,data.sid);
            }
            catch(e:Error)
            {
               Cc.log(data);
               Cc.error("LoginDialog.processLoginResponse ERROR",e);
               Cc.error(e.getStackTrace());
               GameSwf.sendReportToServer("updateResp");
            }
         }
         else if(data is LoginSuccessResp)
         {
            this.onLoginSuccess(data as LoginSuccessResp);
         }
         this.unlockEnterButtons();
      }
      
      private function onLoginSuccess(param1:LoginSuccessResp) : void
      {
         app.sid = param1.sid;
         app.user.username = param1.login;
         app.user.unreadPMNumber = param1.unreadPrivateMessages;
         GameSwf.instance.onLoginSuccess(param1);
         this.close();
      }
      
      private function onLoginError(param1:ErrorResp) : void
      {
         GameSwf.processError(I18n.get("login_error_" + param1.descr));
      }
      
      private function onLoginButtonClick(param1:MouseEvent = null) : void
      {
         this.lockEnterButtons();
         var _loc2_:String = loginUsernameField.text;
         app.user.username = _loc2_;
         FishaoFscModelManager.loginFscExtension.login(_loc2_,loginPassField.text,null,Preloader.waitForResponse(this.loginAsRegisteredHandler));
      }
      
      private function lockEnterButtons() : void
      {
         loginButton.disable();
         regButton.disable();
      }
      
      private function unlockEnterButtons() : void
      {
         loginButton.enable();
         regButton.enable();
      }
      
      private function onRegistrationButtonClick(param1:MouseEvent = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         this.lockEnterButtons();
         var _loc5_:Date = _dateDropdownMediator.date;
         var _loc6_:Boolean = UtilsRegistration.validateRegistration(regUsernameField.text,regPassField.text,regPass2Field.text,regEmailField.text);
         if(_loc6_)
         {
            _loc2_ = regUsernameField.text;
            app.user.username = _loc2_;
            _loc3_ = regNewsCheck.isSelected;
            GameSwf.settings.setEmail(regEmailField.text);
            _loc4_ = Config.LANGUAGE;
            _loc4_ = I18n.inspectLanguageCodeForExists(_loc4_);
            FishaoFscModelManager.loginFscExtension.register(_loc2_,regPassField.text,_loc5_,regEmailField.text,_loc3_,_loc4_,String(Config.AFFILIATE_ID),String(Config.CAMPAIGN_ID),String(Config.CAMPAIGN_REC_ID),Config.PROMO_CODE,Config.SEND_WELCOME_EMAIL,Preloader.waitForResponse(this.registrationHandler),Config.IS_BETA ? regPass2Field.text : null);
         }
         else
         {
            this.unlockEnterButtons();
         }
      }
      
      private function registrationHandler(param1:Object) : void
      {
         var data:Object = param1;
         var colorStatisticResponse:Object = null;
         if(data is RegisterErrorResp)
         {
            if(data.descr == "4102")
            {
               this.onVerificationSent();
            }
            else if(data.descr != "203")
            {
               this.onRegistrationError(data.descr);
            }
            else
            {
               data = JSON.parse(RegisterErrorResp(data).data);
               if(data.hasOwnProperty("logins"))
               {
                  showUsernameSelectPopup(data["logins"]);
               }
               else
               {
                  Cc.error("LoginDialog.registrationHandler(): Can\'t parse: ",JSON.stringify(data));
               }
            }
         }
         else if(data is LoginErrorResp)
         {
            if(data.descr != "203")
            {
               this.onRegistrationError(data.descr);
            }
         }
         else if(data is UpdateResp)
         {
            try
            {
               colorStatisticResponse = this.parseColorStatisticResponse(data);
               this.close();
               GameSwf.instance.showCharacterDialog(JSON.parse(data.data.charView),colorStatisticResponse,data.sid);
            }
            catch(e:Error)
            {
               Cc.log(data);
               Cc.error("LoginDialog.registrationHandler ERROR",e);
               Cc.error(e.getStackTrace());
               GameSwf.sendReportToServer("updateResp");
            }
         }
         else if(data is LoginSuccessResp)
         {
            app.user.onRegistrationSuccess();
            app.sid = data.sid;
            if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog is LocationDialogPrivateHouse)
            {
               GameSwf.instance.exitVirtualLocationViaMap();
               GameSwf.instance.exitFromAllLocations2();
            }
            GameSwf.instance.onLoginSuccess(data as LoginSuccessResp);
            this.close();
         }
         this.unlockEnterButtons();
      }
      
      private function loginAsRegisteredHandler(param1:Object) : void
      {
         if(param1 is LoginSuccessResp)
         {
            app.user.onUserLoginedAsRegistered();
            this.saveLogin();
         }
         this.onUserLogin(param1);
      }
      
      private function loadSavedLogin() : void
      {
         var data:ByteArray = null;
         var saved:Object = null;
         if(!EncryptedLocalStore.isSupported)
         {
            return;
         }
         try
         {
            data = EncryptedLocalStore.getItem(SAVED_LOGIN_KEY);
            if(data != null)
            {
               saved = JSON.parse(data.readUTFBytes(data.length));
               loginUsernameField.text = saved.username;
               loginPassField.text = saved.password;
               loginRememberCheck.state = CheckBoxState.SELECTED;
            }
         }
         catch(e:Error)
         {
            Cc.error("LoginDialog.loadSavedLogin ERROR",e);
         }
      }
      
      private function saveLogin() : void
      {
         var data:ByteArray = null;
         if(!EncryptedLocalStore.isSupported)
         {
            return;
         }
         try
         {
            if(!loginRememberCheck.isSelected)
            {
               EncryptedLocalStore.removeItem(SAVED_LOGIN_KEY);
               return;
            }
            data = new ByteArray();
            data.writeUTFBytes(JSON.stringify({
               "username":loginUsernameField.text,
               "password":loginPassField.text
            }));
            EncryptedLocalStore.setItem(SAVED_LOGIN_KEY,data);
         }
         catch(e:Error)
         {
            Cc.error("LoginDialog.saveLogin ERROR",e);
         }
      }
      
      private function parseColorStatisticResponse(param1:Object) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = {};
         if(param1.data.hasOwnProperty("hair"))
         {
            _loc3_.hair = JSON.parse(param1.data.hair);
         }
         if(param1.data.hasOwnProperty("upper"))
         {
            _loc3_.upper = JSON.parse(param1.data.upper);
         }
         if(param1.data.hasOwnProperty("lower"))
         {
            _loc3_.lower = JSON.parse(param1.data.lower);
         }
         if(param1.data.hasOwnProperty("shoes"))
         {
            _loc2_ = JSON.parse(param1.data.shoes);
            if(_loc2_.hasOwnProperty("1"))
            {
               _loc3_.shoes1 = JSON.parse(_loc2_["1"]);
            }
            if(_loc2_.hasOwnProperty("3"))
            {
               _loc3_.shoes2 = JSON.parse(_loc2_["3"]);
            }
         }
         return _loc3_;
      }
      
      private function onRegistrationError(param1:String) : void
      {
         GameSwf.processError(I18n.get("reg_error_" + param1));
      }
      
      private function onVerificationSent() : void
      {
         var _loc1_:String = regEmailField.text;
         loginUsernameField.text = regUsernameField.text;
         loginPassField.text = regPassField.text;
         regUsernameField.text = "";
         regPassField.text = "";
         regPass2Field.text = "";
         regEmailField.text = "";
         GameSwf.processError(I18n.template("reg_verify_sent",{"EMAIL":_loc1_}));
      }
      
      override public function show() : void
      {
         if(this.parent == null)
         {
            super.show();
            if(!Config.NEWS_DISABLED)
            {
               regNewsCheck.state = CheckBoxState.SELECTED;
               regNewsCheck.visible = true;
               regNewsLabel.visible = true;
            }
            else
            {
               regNewsCheck.state = CheckBoxState.UNSELECTED;
               regNewsCheck.visible = false;
               regNewsLabel.visible = false;
            }
            Listeners.addEventListener(this,GameSwf.stage,KeyboardEvent.KEY_UP,this.onKeyPress);
         }
      }
      
      private function onKeyPress(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            if(stage.focus == regUsernameField || stage.focus == regPassField || stage.focus == regPass2Field || stage.focus == regEmailField)
            {
               this.onRegistrationButtonClick();
            }
            else if(stage.focus == loginUsernameField || stage.focus == loginPassField)
            {
               this.onLoginButtonClick();
            }
         }
      }
      
      override public function close() : void
      {
         Listeners.removeEventListener(this,GameSwf.stage,KeyboardEvent.KEY_UP,this.onKeyPress);
         super.close();
      }
   }
}


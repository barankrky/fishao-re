package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.FishaoBaseDialog;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import com.ax3.fishao.view.wrappers.impl.DateDropdownMediator;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownDateWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.utils.math.randomRange;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class LoginDialogAsset extends FishaoBaseDialog
   {
      
      public static const LOGIN_MAX_CHARS:int = 16;
      
      private var _asset:LOGIN_DIALOG;
      
      public var dialogBg:MovieClip;
      
      public var loginTitle:TextField;
      
      public var loginUsernameLabel:TextField;
      
      public var loginUsernameField:TextField;
      
      public var loginPassLabel:TextField;
      
      public var loginPassField:TextField;
      
      public var loginForgotPassLabel:TextField;
      
      public var loginButton:FrameButtonWrapper;
      
      public var loginRememberCheck:FishaoCheckboxWrapper;
      
      public var loginRememberLabel:TextField;
      
      public var regTitle:TextField;
      
      public var regUsernameLabel:TextField;
      
      public var regUsernameField:TextField;
      
      public var regPassLabel:TextField;
      
      public var regPassField:TextField;
      
      public var regPass2Label:TextField;
      
      public var regPass2Field:TextField;
      
      public var regEmailLabel:TextField;
      
      public var regEmailField:TextField;
      
      public var regDobLabel:TextField;
      
      public var regMonthDropdown:FishaoDropdownDateWrapper;
      
      public var regDayDropdown:FishaoDropdownDateWrapper;
      
      public var regYearDropdown:FishaoDropdownDateWrapper;
      
      public var regNewsCheck:FishaoCheckboxWrapper;
      
      public var regNewsLabel:TextField;
      
      public var regButton:FrameButtonWrapper;
      
      public var loginElementBg:MovieClip;
      
      private var _usernameSelectPopup:UsernameSelectPopup;
      
      public var usernameTextBg:Sprite;
      
      public var passwordTextBg:Sprite;
      
      public var password2TextBg:Sprite;
      
      public var emailTextBg:Sprite;
      
      public var line:Sprite;
      
      protected var _dateDropdownMediator:DateDropdownMediator;
      
      public function LoginDialogAsset()
      {
         super();
      }
      
      public function init(param1:IAssetWrappersProcessor) : void
      {
         this._asset = new LOGIN_DIALOG();
         addChild(this._asset);
         param1.process(this._asset,this);
         this.render();
      }
      
      public function showUsernameSelectPopup(param1:Array) : void
      {
         if(this._usernameSelectPopup == null)
         {
            this._usernameSelectPopup = new UsernameSelectPopup();
         }
         this._usernameSelectPopup.addEventListener(Event.COMPLETE,this.onUsernameSelected);
         this._usernameSelectPopup.list = param1;
         this._usernameSelectPopup.description.text = I18n.get("usernameSelectPopupDesc").replace("#USERNAME#",this.regUsernameField.text);
         this._usernameSelectPopup.show();
      }
      
      private function onUsernameSelected(param1:Event) : void
      {
         this._usernameSelectPopup.removeEventListener(Event.COMPLETE,this.onUsernameSelected);
         this.regUsernameField.text = this._usernameSelectPopup.value;
      }
      
      private function render() : void
      {
         this.loginTitle.text = I18n.getUpper("loginTitle");
         this.loginUsernameLabel.text = I18n.get("loginUsernameLabel");
         this.loginUsernameField.text = BuildConfig.isLocal() ? "user" : "";
         this.loginUsernameField.maxChars = LOGIN_MAX_CHARS;
         this.loginPassLabel.text = I18n.get("loginPassLabel");
         this.loginPassField.text = BuildConfig.isLocal() ? "111" : "";
         this.loginPassField.displayAsPassword = true;
         this.loginForgotPassLabel.htmlText = "<b><a href=\'" + Config.FORGOT_PASSWORD_URL + "\' target=\'_blank\'>" + I18n.get("loginForgotPassLabel") + "</a></b>";
         this.loginForgotPassLabel.x += this.loginForgotPassLabel.width - this.loginForgotPassLabel.textWidth - 5;
         this.loginForgotPassLabel.width = this.loginForgotPassLabel.textWidth + 5;
         this.loginForgotPassLabel.visible = !Config.HIDE_FORGOT_PASS;
         this.loginRememberLabel.text = I18n.exist("loginRememberLabel") ? I18n.get("loginRememberLabel") : "Remember me";
         this.loginButton.label = I18n.getUpper("loginButton");
         this.regTitle.text = I18n.getUpper("regTitle");
         this.regUsernameLabel.text = I18n.get("regUsernameLabel");
         var _loc1_:String = String(randomRange(10000,99999));
         this.regUsernameField.text = BuildConfig.isLocal() ? "user" + _loc1_ : "";
         this.regUsernameField.maxChars = LOGIN_MAX_CHARS;
         this.regPassLabel.text = I18n.get("regPassLabel");
         this.regPassField.text = BuildConfig.isLocal() ? "122" : "";
         this.regPassField.displayAsPassword = true;
         this.regPass2Label.text = Config.IS_BETA ? I18n.get("beta_reg_key_label") : I18n.get("regPass2Label");
         this.regPass2Field.text = BuildConfig.isLocal() ? "122" : "";
         this.regPass2Field.displayAsPassword = !Config.IS_BETA;
         this.regEmailLabel.text = I18n.get("regEmailLabel");
         this.regEmailField.text = BuildConfig.isLocal() ? "user" + _loc1_ + "@fishao.com" : "";
         this.regDobLabel.text = I18n.get("regDobLabel");
         this._dateDropdownMediator = new DateDropdownMediator();
         this._dateDropdownMediator.config(this.regDayDropdown,this.regMonthDropdown,this.regYearDropdown);
         this.regNewsLabel.text = I18n.get("regNewsLabel");
         this.regNewsCheck.state = CheckBoxState.SELECTED;
         this.regButton.label = I18n.getUpper("regButton");
         this.loginUsernameField.tabIndex = 1;
         this.loginPassField.tabIndex = 2;
         this.regUsernameField.tabIndex = 3;
         this.regPassField.tabIndex = 4;
         this.regPass2Field.tabIndex = 5;
         this.regEmailField.tabIndex = 6;
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         super.centerToRect(param1,param2,param3,param4);
      }
      
      override public function get width() : Number
      {
         return this.dialogBg ? this.dialogBg.width : this.width;
      }
      
      override public function get height() : Number
      {
         return this.dialogBg ? this.dialogBg.height : this.height;
      }
   }
}


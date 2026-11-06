package com.ax3.fishao.view.dialogs
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.control.managers.SettingsManager;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.ReloadDialog;
   import com.ax3.fishao.model.SettingsModel;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import com.ax3.fishao.view.wrappers.impl.CountryDropdownMediator;
   import com.ax3.fishao.view.wrappers.impl.DateDropdownMediator;
   import com.ax3.fishao.view.wrappers.impl.FishaoOptButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoOptListMediator;
   import com.ax3.fishao.view.wrappers.impl.LanguageDropdownMediator;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class SettingsSwfDialog extends SettingsSwfDialogAsset implements IUpdate
   {
      
      private var _settingsFloatOpt:FishaoOptListMediator;
      
      private var _settingsTimeFormatOpt:FishaoOptListMediator;
      
      private var _settingsUnitsOpt:FishaoOptListMediator;
      
      private var _dateDropdownMediator:DateDropdownMediator;
      
      private var _countryDropdownMediator:CountryDropdownMediator;
      
      private var _languageDropdownMediator:LanguageDropdownMediator;
      
      private var _currentTimezoneId:String;
      
      private var _gameSettings:SettingsModel;
      
      private var _originalMusicVolume:Number;
      
      private var _originalSfxVolume:Number;
      
      private var _prevTimezoneId:String = null;
      
      private var _emailConfirmField:TextField;
      
      public function SettingsSwfDialog()
      {
         super();
      }
      
      private static function normalizedEmail(param1:String) : String
      {
         return param1 == null ? "" : param1.replace(/^\s+|\s+$/g,"").toLowerCase();
      }
      
      private static function copyTextField(param1:TextField) : TextField
      {
         var _loc3_:TextField = null;
         var _loc2_:TextFormat = param1.length > 0 ? param1.getTextFormat(0,1) : param1.defaultTextFormat;
         _loc3_ = new TextField();
         _loc3_.embedFonts = param1.embedFonts && isFontEmbedded(_loc2_.font);
         _loc3_.antiAliasType = param1.antiAliasType;
         _loc3_.gridFitType = param1.gridFitType;
         _loc3_.sharpness = param1.sharpness;
         _loc3_.thickness = param1.thickness;
         _loc3_.defaultTextFormat = _loc2_;
         _loc3_.filters = param1.filters;
         _loc3_.multiline = false;
         _loc3_.width = param1.width;
         _loc3_.height = param1.height;
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         return _loc3_;
      }
      
      private static function isFontEmbedded(param1:String) : Boolean
      {
         var _loc2_:Font = null;
         for each(_loc2_ in Font.enumerateFonts(false))
         {
            if(_loc2_.fontName == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      private static function copyBitmap(param1:DisplayObject) : Bitmap
      {
         var _loc5_:Bitmap = null;
         var _loc2_:Rectangle = param1.getBounds(param1.parent);
         var _loc3_:BitmapData = new BitmapData(Math.max(1,Math.ceil(_loc2_.width)),Math.max(1,Math.ceil(_loc2_.height)),true,0);
         var _loc4_:Matrix = param1.transform.matrix.clone();
         _loc4_.translate(-_loc2_.x,-_loc2_.y);
         _loc3_.draw(param1,_loc4_);
         _loc5_ = new Bitmap(_loc3_);
         _loc5_.x = _loc2_.x;
         _loc5_.y = _loc2_.y;
         return _loc5_;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         floatsList.visible = false;
         settingsFloatOpt_6.visible = false;
         settingsFloatOpt_7.visible = false;
         settingsFloatOpt_8.visible = false;
         settingsFloatOpt_9.visible = false;
         title.text = I18n.getUpper("settingsTitle");
         settingsCharEditorButton.label = I18n.getUpper("settingsCharEditorButton");
         settingsSaveButton.label = I18n.getUpper("settingsSaveButton");
         settingsProfileLabel.text = I18n.getUpper("settingsProfileLabel");
         settingsDateOfBirthLabel.text = I18n.get("settingsDateOfBirthLabel");
         var _loc3_:int = settingsYearDropdown.x - settingsDayDropdown.x;
         var _loc4_:int = settingsMonthDropdown.x - settingsDayDropdown.x;
         settingsDayDropdown.x = settingsDateOfBirthLabel.x + settingsDateOfBirthLabel.textWidth + 10;
         settingsMonthDropdown.x = settingsDayDropdown.x + _loc4_;
         settingsYearDropdown.x = settingsDayDropdown.x + _loc3_;
         settingsShowDateOnProfLabel.text = I18n.get("settingsShowDateOnProfLabel");
         settingsEmailLabel.text = I18n.get("settingsEmailLabel");
         settingsEmailFieldBg.x = settingsEmailLabel.x + settingsEmailLabel.textWidth + 10;
         settingsEmailField.x = settingsEmailLabel.x + settingsEmailLabel.textWidth + 14;
         settingsShowMailOnProfLabel.text = I18n.get("settingsShowMailOnProfLabel");
         settingsShowInventoryOnProfLabel.text = I18n.get("settingsShowInventoryOnProfLabel");
         settingsLocAndTimeLabel.text = I18n.getUpper("settingsLocAndTimeLabel");
         settingsTimeFormatLabel.text = I18n.get("settingsTimeFormatLabel");
         settingsAmPmLabel.text = I18n.get("settingsAmPmLabel");
         settings24hourLabel.text = I18n.get("settings24hourLabel");
         settingsUnitsLabel.text = I18n.get("settingsUnitsLabel");
         settingsFeetLabel.text = I18n.get("settingsFeetLabel");
         settingsCentimetersLabel.text = I18n.get("settingsCentimetersLabel");
         settingsLanguageLabel.text = I18n.get("settingsLanguageLabel");
         settingsCountryLabel.text = I18n.get("settingsCountryLabel");
         settingsTimezoneLabel.text = I18n.get("settingsTimezoneLabel");
         settingsYouCanChangeLabel.text = I18n.get("settingsYouCanChangeLabel");
         settingsSoundsLabel.text = I18n.getUpper("settingsSoundsLabel");
         settingsBackMusicLabel.text = I18n.get("settingsBackMusicLabel");
         settingsSoudEffectsLabel.text = I18n.get("settingsSoudEffectsLabel");
         settingsFloatLabel.text = I18n.getUpper("settingsFloatLabel");
         closeBtn.handler = this.onCloseClick;
         settingsCharEditorButton.handler = this.onCharEditorButtonClick;
         settingsSaveButton.handler = this.onSaveButtonClick;
         changeTimeZoneButton.handler = this.onChangeTimezoneClick;
         this._settingsTimeFormatOpt = new FishaoOptListMediator(settingsTimeFormatOptAmPm,settingsTimeFormatOpt24hours);
         this._settingsUnitsOpt = new FishaoOptListMediator(settingsUnitsOptFeet,settingsUnitsOptCm);
         var _loc5_:Array = [shapeLines,settingsLocAndTimeLabel,settingsTimeFormatLabel,settingsUnitsLabel,settingsLanguageLabel,settingsCountryLabel,settingsTimezoneLabel,changeTimeZoneButton,changeTimeZoneLabel,settingsYouCanChangeLabel,settingsTimeFormatOptAmPm,settingsTimeFormatOpt24hours,settingsUnitsOptFeet,settingsUnitsOptCm,settingsAmPmLabel,settings24hourLabel,settingsFeetLabel,settingsCentimetersLabel,settingsCountryDropdown,settingsLanguageDropdown,settingsSoundsLabel,settingsBackMusicLabel,settingsBackMusicSlider,settingsSoudEffectsLabel,settingsSoundEffectsSlider,settingsFloatLabel,settingsFloatOpt_1,settingsFloatOpt_2,settingsFloatOpt_3,settingsFloatOpt_4,settingsFloatOpt_5,settingsSaveButton,floatsList,settingsShowInventoryOnProfCheck,settingsShowInventoryOnProfLabel];
         if(Config.HIDE_SETTINGS_EMAIL)
         {
            settingsEmailLabel.visible = false;
            settingsEmailField.visible = false;
            settingsEmailFieldBg.visible = false;
            settingsShowMailOnProfCheck.visible = false;
            settingsShowMailOnProfLabel.visible = false;
            this.tabChildren = false;
            for each(_loc1_ in _loc5_)
            {
               if(_loc1_ != null)
               {
                  _loc1_.y -= 11 + settingsEmailFieldBg.height;
               }
            }
            bg.height -= 11 + settingsEmailFieldBg.height;
         }
         else
         {
            settingsEmailLabel.visible = true;
            settingsEmailField.visible = true;
            settingsEmailFieldBg.visible = true;
            settingsShowMailOnProfCheck.visible = false;
            settingsShowMailOnProfLabel.visible = false;
            this.tabChildren = true;
            settingsEmailField.tabIndex = 1;
            this.addEmailConfirmField();
         }
         var _loc6_:Vector.<FishaoOptButtonWrapper> = new Vector.<FishaoOptButtonWrapper>();
         var _loc7_:Array = app.user.inventory.getUserExtraFloatsIds();
         if(_loc7_ != null && _loc7_.length > 0)
         {
            _loc7_.sort();
            _loc2_ = 0;
            while(_loc2_ < _loc7_.length)
            {
               _loc6_.push(this["settingsFloatOpt_" + _loc7_[_loc2_]]);
               FishaoOptButtonWrapper(this["settingsFloatOpt_" + _loc7_[_loc2_]]).visible = true;
               _loc2_++;
            }
            _loc6_.push(this.settingsFloatOpt_1);
            _loc6_.push(this.settingsFloatOpt_2);
            _loc6_.push(this.settingsFloatOpt_3);
            _loc6_.push(this.settingsFloatOpt_4);
            _loc6_.push(this.settingsFloatOpt_5);
            floatsList.setItemList(_loc6_);
            this._settingsFloatOpt = new FishaoOptListMediator(_loc6_);
            floatsList.visible = true;
         }
         else
         {
            this._settingsFloatOpt = new FishaoOptListMediator(settingsFloatOpt_1,settingsFloatOpt_2,settingsFloatOpt_3,settingsFloatOpt_4,settingsFloatOpt_5);
            floatsList.visible = false;
         }
         super.onAssetCreationComplete();
      }
      
      private function onChangeTimezoneClick(param1:MouseEvent) : void
      {
         var _loc2_:TimezoneSwfDialog = app.dialogFactory.getTimezoneSwfDialog();
         _loc2_.onApply = this.onTimezoneChange;
         _loc2_.show();
         _loc2_.setCurrentZone(this._currentTimezoneId);
         if(this._prevTimezoneId == null)
         {
            this._prevTimezoneId = this._currentTimezoneId;
         }
      }
      
      private function onTimezoneChange(param1:String) : void
      {
         var _loc2_:String = null;
         this._prevTimezoneId = this._currentTimezoneId;
         this._currentTimezoneId = param1.replace(/ /g,"_");
         var _loc3_:Array = this._currentTimezoneId.split("/");
         if(_loc3_.length > 1)
         {
            _loc2_ = app.timezones.getUTC(_loc3_[0],_loc3_[1]);
            changeTimeZoneLabel.text = (_loc2_ != null ? "(UTC " + _loc2_ + ") " : "") + String(_loc3_[1]).replace(/_/g," ");
         }
         else
         {
            changeTimeZoneLabel.text = this._currentTimezoneId;
         }
      }
      
      private function showCurrentSettings() : void
      {
         this._gameSettings = GameSwf.instance.gameSettings;
         settingsEmailField.text = this._gameSettings.email;
         this.clearEmailConfirm();
         settingsBackMusicSlider.value = this._gameSettings["backMusic"];
         this._originalMusicVolume = this._gameSettings["backMusic"];
         settingsSoundEffectsSlider.value = this._gameSettings["soundEffects"];
         this._originalSfxVolume = this._gameSettings["soundEffects"];
         settingsShowDateOnProfCheck.state = this._gameSettings["showBirthDate"] ? CheckBoxState.SELECTED : CheckBoxState.UNSELECTED;
         settingsShowMailOnProfCheck.state = this._gameSettings["showEmail"] ? CheckBoxState.SELECTED : CheckBoxState.UNSELECTED;
         settingsShowInventoryOnProfCheck.state = this._gameSettings["showInventory"] ? CheckBoxState.SELECTED : CheckBoxState.UNSELECTED;
         if(this._gameSettings["timeFormat"] == 0)
         {
            this._settingsTimeFormatOpt.selectOption(settingsTimeFormatOptAmPm);
         }
         else
         {
            this._settingsTimeFormatOpt.selectOption(settingsTimeFormatOpt24hours);
         }
         if(this._gameSettings["units"] == "ft")
         {
            this._settingsUnitsOpt.selectOption(settingsUnitsOptFeet);
         }
         else
         {
            this._settingsUnitsOpt.selectOption(settingsUnitsOptCm);
         }
         this._settingsFloatOpt.selectOption(this["settingsFloatOpt_" + String(this._gameSettings["float"])]);
         this._dateDropdownMediator = new DateDropdownMediator(this._gameSettings["birthDate"]);
         this._dateDropdownMediator.config(settingsDayDropdown,settingsMonthDropdown,settingsYearDropdown);
         this.onTimezoneChange(String(this._gameSettings["timezone"]));
         this._countryDropdownMediator = new CountryDropdownMediator(app.countries,this._gameSettings["country"]);
         this._countryDropdownMediator.config(settingsCountryDropdown);
         this._countryDropdownMediator.setDropdownEnable(this._gameSettings["canChangeTimezone"]);
         if(this._gameSettings["canChangeTimezone"])
         {
            changeTimeZoneButton.enable();
         }
         else
         {
            changeTimeZoneButton.disable();
         }
         this._languageDropdownMediator = new LanguageDropdownMediator(this._gameSettings["gameLanguage"]);
         this._languageDropdownMediator.config(settingsLanguageDropdown);
      }
      
      private function changeCurrentSettings() : Object
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:Object = {};
         _loc3_["email"] = settingsEmailField.text;
         Cc.log("Email field: " + settingsEmailField.text);
         _loc3_["backMusic"] = settingsBackMusicSlider.value;
         _loc3_["soundEffects"] = settingsSoundEffectsSlider.value;
         _loc3_["showBirthDate"] = settingsShowDateOnProfCheck.isSelected;
         _loc3_["showEmail"] = settingsShowMailOnProfCheck.isSelected;
         _loc3_["showInventory"] = settingsShowInventoryOnProfCheck.isSelected;
         _loc3_["timeFormat"] = this._settingsTimeFormatOpt.currentOption == settingsTimeFormatOptAmPm ? 0 : 1;
         _loc3_["units"] = this._settingsUnitsOpt.currentOption == settingsUnitsOptFeet ? "ft" : "cm";
         var _loc4_:FishaoOptButtonWrapper = this._settingsFloatOpt.currentOption;
         if(_loc4_ != null)
         {
            _loc1_ = _loc4_.name;
            _loc2_ = _loc1_.split("_");
            if(1 in _loc2_)
            {
               _loc3_["float"] = parseInt(_loc2_[1]);
            }
         }
         if(this._prevTimezoneId != null && this._prevTimezoneId != this._currentTimezoneId)
         {
            _loc3_["canChangeTimezone"] = false;
         }
         _loc3_["birthDate"] = this._dateDropdownMediator.date;
         _loc3_["timezone"] = this._currentTimezoneId.replace(/ /g,"_");
         _loc3_["country"] = this._countryDropdownMediator.currentCountryID;
         _loc3_["gameLanguage"] = this._languageDropdownMediator.currentLangID;
         FishaoSoundManager.setVolume(FishaoSoundManager.GROUP_SFX,settingsSoundEffectsSlider.value);
         FishaoSoundManager.setVolume(FishaoSoundManager.GROUP_AMBIENT_SFX,settingsSoundEffectsSlider.value);
         FishaoSoundManager.setVolume(FishaoSoundManager.GROUP_BACKGROUND_MUSIC,settingsBackMusicSlider.value);
         return _loc3_;
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         GameSwf.settings.changeMusicVolumeWithoutSaving(this._originalMusicVolume);
         GameSwf.settings.changeSfxVolumeWithoutSaving(this._originalSfxVolume);
         close();
      }
      
      protected function onCharEditorButtonClick(param1:MouseEvent) : void
      {
         GameSwf.instance.showCharacterEditor(false,[]);
      }
      
      private function onSaveButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:ReloadDialog = null;
         var _loc3_:String = GameSwf.instance.gameSettings.gameLanguage;
         if(!this.emailConfirmed())
         {
            this.showEmailMismatch();
            return;
         }
         var _loc4_:Object = this.changeCurrentSettings();
         GameSwf.settings.saveSettings(_loc4_);
         if(_loc3_ != this._gameSettings.gameLanguage)
         {
            _loc2_ = new ReloadDialog();
            _loc2_.show();
         }
      }
      
      private function onSettingsChangePrevEmail(param1:Event) : void
      {
         Cc.log(this + ".onSettingsChangePrevEmail() GameSwf.instance.gameSettings.prevEmail = " + GameSwf.instance.gameSettings.prevEmail);
         if(settingsEmailField != null)
         {
            settingsEmailField.text = GameSwf.instance.gameSettings.email;
         }
         this.clearEmailConfirm();
      }
      
      private function addEmailConfirmField() : void
      {
         var _loc1_:DisplayObjectContainer = settingsEmailField.parent;
         var _loc2_:TextField = copyTextField(settingsEmailLabel);
         _loc2_.text = I18n.get("settingsEmailConfirmLabel");
         _loc2_.width = _loc2_.textWidth + 6;
         _loc2_.x = settingsEmailFieldBg.x + settingsEmailFieldBg.width + 15;
         _loc1_.addChild(_loc2_);
         var _loc3_:Bitmap = copyBitmap(settingsEmailFieldBg);
         _loc3_.x = _loc2_.x + _loc2_.textWidth + 10;
         _loc1_.addChildAt(_loc3_,_loc1_.getChildIndex(settingsEmailField));
         this._emailConfirmField = copyTextField(settingsEmailField);
         this._emailConfirmField.type = TextFieldType.INPUT;
         this._emailConfirmField.selectable = true;
         this._emailConfirmField.x = _loc3_.x + (settingsEmailField.x - settingsEmailFieldBg.x);
         this._emailConfirmField.tabIndex = 2;
         this._emailConfirmField.addEventListener(TextEvent.TEXT_INPUT,this.onEmailConfirmInput);
         _loc1_.addChild(this._emailConfirmField);
      }
      
      private function onEmailConfirmInput(param1:TextEvent) : void
      {
         if(param1.text.length > 1)
         {
            param1.preventDefault();
         }
      }
      
      private function clearEmailConfirm() : void
      {
         if(this._emailConfirmField != null)
         {
            this._emailConfirmField.text = "";
         }
      }
      
      private function emailConfirmed() : Boolean
      {
         if(this._emailConfirmField == null || this._gameSettings == null)
         {
            return true;
         }
         var _loc1_:String = normalizedEmail(settingsEmailField.text);
         return _loc1_ == normalizedEmail(this._gameSettings.email) || _loc1_ == normalizedEmail(this._emailConfirmField.text);
      }
      
      private function showEmailMismatch() : void
      {
         var _loc1_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc1_.setText(I18n.get("settings_error_emailMismatch"),false);
         _loc1_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
         _loc1_.closeOnOk = true;
         _loc1_.show();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.showCurrentSettings();
         GameSwf.settings.addEventListener(SettingsManager.CHANGE_PREV_EMAIL,this.onSettingsChangePrevEmail);
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).add(this);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         GameSwf.settings.removeEventListener(SettingsManager.CHANGE_PREV_EMAIL,this.onSettingsChangePrevEmail);
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).remove(this);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(settingsBackMusicSlider.value != GameSwf.settings.getSettings().backMusic)
         {
            GameSwf.settings.changeMusicVolumeWithoutSaving(settingsBackMusicSlider.value);
         }
         if(settingsSoundEffectsSlider.value != GameSwf.settings.getSettings().soundEffects)
         {
            GameSwf.settings.changeSfxVolumeWithoutSaving(settingsSoundEffectsSlider.value);
         }
      }
   }
}


package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.CroppedTextFieldWrapper;
   import com.ax3.display.wrappers.impl.MenuFrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownDateWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownWithImage;
   import com.ax3.fishao.view.wrappers.impl.FishaoLongDropdown;
   import com.ax3.fishao.view.wrappers.impl.FishaoOptButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoSettingsSliderWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.SettingsFloatsListWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class SettingsSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      protected var _isLoaded:Boolean = false;
      
      public var title:DialogTitleWrapper;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var settingsProfileLabel:TextField;
      
      public var settingsDateOfBirthLabel:TextField;
      
      public var settingsShowDateOnProfLabel:TextField;
      
      public var settingsEmailLabel:TextField;
      
      public var settingsShowMailOnProfLabel:TextField;
      
      public var settingsShowInventoryOnProfLabel:TextField;
      
      public var settingsLocAndTimeLabel:TextField;
      
      public var settingsTimeFormatLabel:TextField;
      
      public var settingsAmPmLabel:TextField;
      
      public var settings24hourLabel:TextField;
      
      public var settingsUnitsLabel:TextField;
      
      public var settingsFeetLabel:TextField;
      
      public var settingsCentimetersLabel:TextField;
      
      public var settingsLanguageLabel:TextField;
      
      public var settingsCountryLabel:TextField;
      
      public var settingsTimezoneLabel:TextField;
      
      public var settingsYouCanChangeLabel:TextField;
      
      public var settingsSoundsLabel:TextField;
      
      public var settingsBackMusicLabel:TextField;
      
      public var settingsSoudEffectsLabel:TextField;
      
      public var settingsFloatLabel:TextField;
      
      public var settingsEmailField:TextField;
      
      public var settingsEmailFieldBg:MovieClip;
      
      public var settingsCharEditorButton:MenuFrameButtonWrapper;
      
      public var settingsSaveButton:ConfirmFrameButtonWrapper;
      
      public var settingsDayDropdown:FishaoDropdownDateWrapper;
      
      public var settingsMonthDropdown:FishaoDropdownDateWrapper;
      
      public var settingsYearDropdown:FishaoDropdownDateWrapper;
      
      public var settingsShowDateOnProfCheck:FishaoCheckboxWrapper;
      
      public var settingsShowMailOnProfCheck:FishaoCheckboxWrapper;
      
      public var settingsShowInventoryOnProfCheck:FishaoCheckboxWrapper;
      
      public var settingsTimeFormatOptAmPm:FishaoOptButtonWrapper;
      
      public var settingsTimeFormatOpt24hours:FishaoOptButtonWrapper;
      
      public var settingsUnitsOptFeet:FishaoOptButtonWrapper;
      
      public var settingsUnitsOptCm:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_1:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_2:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_3:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_4:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_5:FishaoOptButtonWrapper;
      
      public var settingsBackMusicSlider:FishaoSettingsSliderWrapper;
      
      public var settingsSoundEffectsSlider:FishaoSettingsSliderWrapper;
      
      public var settingsCountryDropdown:FishaoLongDropdown;
      
      public var settingsLanguageDropdown:FishaoDropdownWithImage;
      
      public var floatsList:SettingsFloatsListWrapper;
      
      public var settingsFloatOpt_6:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_7:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_8:FishaoOptButtonWrapper;
      
      public var settingsFloatOpt_9:FishaoOptButtonWrapper;
      
      public var changeTimeZoneLabel:CroppedTextFieldWrapper;
      
      public var changeTimeZoneButton:FrameButtonWrapper;
      
      public var shapeLines:Sprite;
      
      public function SettingsSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "SettingsDialog.swf";
         super(_loc1_);
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         this._isLoaded = true;
         super.onAssetLoadingComplete(param1);
      }
   }
}


package com.ax3.fishao.display.settings
{
   import com.ax3.events.Listeners;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.control.FullScreenController;
   import com.ax3.fishao.control.managers.SettingsManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.club.club_inside.DialogClubInside;
   import com.ax3.fishao.view.dialogs.club.club_outside.DialogClubOutside;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.fishao.view.dialogs.events.model.ManagerEvents;
   import flash.events.DataEvent;
   import flash.events.Event;
   
   public class ControllerSettings extends Controller
   {
      
      private var _view:ViewSettings = new ViewSettings(this);
      
      private var _isActive:Boolean;
      
      public function ControllerSettings()
      {
         super(this._view);
         this.init();
      }
      
      public function set buttonsIsVisible(param1:Boolean) : void
      {
         this._view.buttonSound.source.visible = param1;
         this._view.buttonMusic.source.visible = param1;
         this._view.buttonSettings.source.visible = param1;
         this._view.buttonFullscreen.source.visible = param1;
         this._view.buttonPling.source.visible = param1;
         this._view.buttonEvents.source.visible = param1 && Boolean(app.user.isEventsAvailable);
         this._view.buttonFriends.source.visible = param1 && !app.user.isGuest;
         this._view.buttonClubs.source.visible = param1 && !app.user.isGuest;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(this._isActive == param1)
         {
            return;
         }
         this._isActive = param1;
         this.updateButtonMusic();
         this.updateButtonSound();
      }
      
      public function get viewSettings() : ViewSettings
      {
         return this._view;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:ManagerClubs = null;
         var _loc4_:DialogClubInside = null;
         var _loc5_:DialogClubOutside = null;
         var _loc6_:Boolean = super.onViewClicked(param1,param2);
         if(!this._isActive)
         {
            return _loc6_;
         }
         var _loc7_:ViewButtonSettings = param1 as ViewButtonSettings;
         if(_loc7_ != null)
         {
            _loc7_.isActive = !_loc7_.isActive;
         }
         switch(param1)
         {
            case this._view.buttonModerator:
               app.dialogFactory.getModeratorSwfDialog().show();
               _loc6_ = true;
               break;
            case this._view.buttonMusic:
               GameSwf.settings.music = this._view.buttonMusic.isActive;
               _loc6_ = true;
               break;
            case this._view.buttonSound:
               GameSwf.settings.sfx = this._view.buttonSound.isActive;
               _loc6_ = true;
               break;
            case this._view.buttonFullscreen:
               FullScreenController.getInstance().switchFullScreen();
               _loc6_ = true;
               break;
            case this._view.buttonSettings:
               if(!GameSwf.inspectGuestLockedAction())
               {
                  GameSwf.instance.showSettingsDialog();
                  _loc6_ = true;
               }
               break;
            case this._view.buttonPling:
               if(!GameSwf.inspectGuestLockedAction())
               {
                  app.dialogFactory.getPlingHistoryWindow().show();
                  _loc6_ = true;
               }
               break;
            case this._view.buttonEvents:
               app.dialogFactory.getEventsDialog().show();
               _loc6_ = true;
               break;
            case this._view.buttonFriends:
               app.dialogFactory.getFriendsDialog().show();
               _loc6_ = true;
               break;
            case this._view.buttonClubs:
               _loc3_ = GameSwf.instance.managerClubs;
               if(_loc3_.userInClub)
               {
                  _loc4_ = app.dialogFactory.getDialog(DialogClubInside);
                  _loc4_.entity = _loc3_.userClub;
                  _loc4_.show();
               }
               else
               {
                  _loc5_ = app.dialogFactory.getDialog(DialogClubOutside);
                  _loc5_.show();
               }
               break;
            default:
               Debug.assert(false);
         }
         return _loc6_;
      }
      
      private function onChangeAmountOfNewReports(param1:VariableChangeEvent) : void
      {
         Debug.assert(app.user.isModerator,"isModerator value of user should be true to call onChangeAmountOfNewReports method. Now it is false");
         this._view.buttonModerator.amount = app.moderatorModel.amountOfNewReports.value;
      }
      
      private function onUserLevelChange(param1:Event) : void
      {
         this.update(EControllerUpdate.ECU_USER_LEVEL);
      }
      
      private function init() : void
      {
         this._isActive = true;
         Listeners.addEventListener(this,GameSwf.settings,SettingsManager.MUSIC_VOLUME,this.updateButtonMusic);
         Listeners.addEventListener(this,GameSwf.settings,SettingsManager.SFX_VOLUME,this.updateButtonSound);
         this.updateButtonMusic();
         this.updateButtonSound();
         app.user.onLevelChange(this.onUserLevelChange);
         if(app.user.isModerator)
         {
            Listeners.addEventListener(this,app.moderatorModel.amountOfNewReports,VariableChangeEvent.CHANGE,this.onChangeAmountOfNewReports);
            this._view.buttonModerator.source.visible = true;
            this._view.buttonModerator.amount = app.moderatorModel.amountOfNewReports.value;
         }
         else
         {
            this._view.buttonModerator.source.visible = false;
         }
         this.update(EControllerUpdate.ECU_USER_LEVEL);
         this.update(EControllerUpdate.ECU_EVENTS_EVENT_SHOWN);
         if(Debug.DISABLE_MUSIC)
         {
            GameSwf.settings.music = false;
         }
      }
      
      public function set activateInTutorial(param1:Boolean) : void
      {
         this._view.buttonFullscreen.isEnabled = param1;
         this._view.buttonSettings.isEnabled = param1;
         this._view.buttonPling.isEnabled = param1;
         this._view.buttonFriends.isEnabled = param1;
         this._view.buttonClubs.isEnabled = param1;
         this._view.buttonEvents.isEnabled = param1;
      }
      
      private function updateButtonSound(param1:DataEvent = null) : void
      {
         this._view.buttonSound.isActive = GameSwf.settings.sfx;
      }
      
      private function updateButtonMusic(param1:DataEvent = null) : void
      {
         this._view.buttonMusic.isActive = GameSwf.settings.music;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:ManagerEvents = null;
         var _loc3_:LocationDialog = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_EVENTS_EVENT_END:
            case EControllerUpdate.ECU_EVENTS_EVENT_START:
            case EControllerUpdate.ECU_EVENTS_EVENT_SHOWN:
               _loc2_ = GameSwf.instance.managerEvents;
               this._view.viewArrowEvents.source.visible = _loc2_.eventCurrent != null && Boolean(app.user.isEventsAvailable) && !_loc2_.isFirstEventShown;
               break;
            case EControllerUpdate.ECU_USER_LEVEL:
               this._view.buttonEvents.source.visible = app.user.isEventsAvailable;
               this._view.buttonFriends.source.visible = !app.user.isGuest;
               this._view.buttonClubs.source.visible = !app.user.isGuest;
               _loc3_ = GameSwf.currentLocationDialog;
               if(_loc3_ != null)
               {
                  _loc3_.gui.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
               }
               break;
            default:
               Debug.assert(false);
         }
      }
      
      override public function cleanup() : void
      {
         app.user.removeOnLevelChange(this.onUserLevelChange);
         Listeners.removeEventListener(this,GameSwf.settings,SettingsManager.MUSIC_VOLUME,this.updateButtonMusic);
         Listeners.removeEventListener(this,GameSwf.settings,SettingsManager.SFX_VOLUME,this.updateButtonSound);
         Listeners.removeEventListener(this,app.moderatorModel.amountOfNewReports,VariableChangeEvent.CHANGE,this.onChangeAmountOfNewReports);
         super.cleanup();
      }
   }
}


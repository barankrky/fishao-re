package com.ax3.fishao.display.settings
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public class ViewSettings extends ViewBase
   {
      
      private var _source:gViewSettings = new gViewSettings();
      
      private var _buttonModerator:ViewButtonModerator;
      
      private var _buttonMusic:ViewButtonSettings;
      
      private var _buttonSound:ViewButtonSettings;
      
      private var _buttonSettings:ViewButtonSettings;
      
      private var _buttonPling:ViewButtonSettings;
      
      private var _buttonFullscreen:ViewButtonSettings;
      
      private var _buttonEvents:ViewButtonSettings;
      
      private var _buttonFriends:ViewButtonSettings;
      
      private var _buttonClubs:ViewButtonSettings;
      
      private var _viewArrowEvents:ViewArrow;
      
      public function ViewSettings(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonMusic() : ViewButtonSettings
      {
         return this._buttonMusic;
      }
      
      public function get buttonModerator() : ViewButtonModerator
      {
         return this._buttonModerator;
      }
      
      public function get buttonSound() : ViewButtonSettings
      {
         return this._buttonSound;
      }
      
      public function get buttonPling() : ViewButtonSettings
      {
         return this._buttonPling;
      }
      
      public function get buttonFullscreen() : ViewButtonSettings
      {
         return this._buttonFullscreen;
      }
      
      public function get buttonSettings() : ViewButtonSettings
      {
         return this._buttonSettings;
      }
      
      public function get buttonEvents() : ViewButtonSettings
      {
         return this._buttonEvents;
      }
      
      public function get buttonClubs() : ViewButtonSettings
      {
         return this._buttonClubs;
      }
      
      public function get buttonFriends() : ViewButtonSettings
      {
         return this._buttonFriends;
      }
      
      public function get viewArrowEvents() : IView
      {
         return this._viewArrowEvents;
      }
      
      private function init() : void
      {
         var _loc1_:Point = new Point(0,6);
         var _loc2_:Point = new Point(-6,0);
         this._buttonModerator = new ViewButtonModerator(controller,this._source.buttonModerator);
         this._buttonModerator.offset = _loc1_;
         this._buttonMusic = this.createButtonSettings(this._source.buttonMusic,_loc1_);
         this._buttonSound = this.createButtonSettings(this._source.buttonSound,_loc1_);
         this._buttonSettings = this.createButtonSettings(this._source.buttonSettings,_loc1_);
         this._buttonPling = this.createButtonSettings(this._source.buttonPling,_loc1_);
         this._buttonFullscreen = this.createButtonSettings(this._source.buttonFullscreen,_loc1_);
         this._buttonEvents = this.createButtonSettings(this._source.buttonEvents,_loc2_,EStringType.EST_UI_BUTTON_EVENTS_TOOLTIP);
         this._buttonFriends = this.createButtonSettings(this._source.buttonFriends,_loc2_,EStringType.EST_UI_BUTTON_FRIENDS_TOOLTIP);
         this._buttonClubs = this.createButtonSettings(this._source.buttonClubs,_loc2_,EStringType.EST_UI_BUTTON_CLUBS_TOOLTIP);
         this._viewArrowEvents = new ViewArrow(controller,this._source.viewArrow,EStringType.EST_UI_BUTTON_EVENTS_ARROW);
      }
      
      private function createButtonSettings(param1:MovieClip, param2:Point, param3:String = null) : ViewButtonSettings
      {
         var _loc4_:ViewButtonSettings = new ViewButtonSettings(controller,param1);
         _loc4_.offset = param2;
         if(param3 != null)
         {
            _loc4_.tooltipText = I18n.get(param3);
         }
         return _loc4_;
      }
      
      override public function cleanup() : void
      {
         this._viewArrowEvents.cleanup();
         this._viewArrowEvents = null;
         this._buttonModerator.cleanup();
         this._buttonModerator = null;
         this._buttonMusic.cleanup();
         this._buttonMusic = null;
         this._buttonSound.cleanup();
         this._buttonSound = null;
         this._buttonSettings.cleanup();
         this._buttonSettings = null;
         this._buttonPling.cleanup();
         this._buttonPling = null;
         this._buttonFullscreen.cleanup();
         this._buttonFullscreen = null;
         this._buttonEvents.cleanup();
         this._buttonEvents = null;
         this._buttonFriends.cleanup();
         this._buttonFriends = null;
         this._buttonClubs.cleanup();
         this._buttonClubs = null;
         super.cleanup();
      }
   }
}


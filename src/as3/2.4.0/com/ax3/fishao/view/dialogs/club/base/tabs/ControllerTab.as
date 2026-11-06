package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import flash.events.Event;
   
   public class ControllerTab extends Controller
   {
      
      private var _view:ViewTab;
      
      private var _type:String;
      
      private var _owner:ControllerTabs;
      
      private var _isEnabled:Boolean;
      
      public function ControllerTab(param1:ControllerTabs, param2:String)
      {
         this._owner = param1;
         this._type = param2;
         var _loc3_:SourceButtonTabClubs = new SourceButtonTabClubs();
         _loc3_.pageType = this._type;
         this._view = new ViewTab(this,_loc3_,param2);
         super(this._view);
         this.init();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._view.isActive = param1;
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._isEnabled = param1;
         this._view.isEnabled = this._isEnabled;
      }
      
      public function set notifications(param1:int) : void
      {
         this._view.notificationsCount = param1;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         if(!this._isEnabled)
         {
            return false;
         }
         FishaoSoundManager.play(FishaoSoundManager.SFX_049_UI_Switch_tab);
         this._owner.onTabClicked(this._type);
         return true;
      }
      
      private function init() : void
      {
         this._view.handleEvents(true);
      }
      
      public function showEmblem(param1:int) : void
      {
         this._view.showEmblem(param1);
      }
   }
}


package com.ax3.fishao.locations.club_area.entrance
{
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   
   public class ControllerClubEntrance extends Controller
   {
      
      private var _view:ViewClubEntrance = new ViewClubEntrance(this);
      
      public function ControllerClubEntrance()
      {
         super(this._view);
         this.init();
      }
      
      public function get viewEntrance() : ViewClubEntrance
      {
         return this._view;
      }
      
      private function init() : void
      {
         this._view.isGuest = app.user.isGuest;
      }
   }
}


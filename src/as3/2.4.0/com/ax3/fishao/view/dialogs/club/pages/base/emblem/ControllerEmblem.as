package com.ax3.fishao.view.dialogs.club.pages.base.emblem
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerEmblem extends Controller
   {
      
      private var _view:ViewClubEmblemWithArrows;
      
      public function ControllerEmblem(param1:DisplayObjectContainer)
      {
         this._view = new ViewClubEmblemWithArrows(this,param1);
         super(this._view);
         this._view.pagesTotal = ConstantsBase.CLUB_EMBLEMS_COUNT;
         this._view.pageCurrent = 0;
      }
      
      public function get emblem() : int
      {
         return this._view.pageCurrent;
      }
      
      public function set emblemID(param1:int) : void
      {
         this._view.pageCurrent = param1;
      }
   }
}


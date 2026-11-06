package com.ax3.fishao.view.dialogs.club.pages.base
{
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerWithItems;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ControllerClubPage extends ControllerWithItems
   {
      
      protected var _managerClubs:ManagerClubs;
      
      protected var _entity:ClubInfo;
      
      protected var _type:String;
      
      protected var _canOpenDialogInside:Boolean;
      
      protected var _owner:DialogBase;
      
      public function ControllerClubPage(param1:IView)
      {
         super(param1);
         this.init();
      }
      
      public function set entity(param1:ClubInfo) : void
      {
         this._entity = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function set owner(param1:DialogBase) : void
      {
         this._owner = param1;
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._canOpenDialogInside = param1;
      }
      
      protected function onDataLoaded(param1:ServerResp) : void
      {
         UtilsDialog.tryHandleResponseError(param1);
      }
      
      public function onPageClosed() : void
      {
      }
      
      private function init() : void
      {
         this._managerClubs = GameSwf.instance.managerClubs;
      }
      
      public function loadData() : void
      {
         this._managerClubs.loadDataForPage(this._type,Preloader.waitForResponse(this.onDataLoaded));
      }
   }
}


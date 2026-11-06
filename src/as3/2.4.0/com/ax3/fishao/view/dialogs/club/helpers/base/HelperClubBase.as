package com.ax3.fishao.view.dialogs.club.helpers.base
{
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.jss.requests.server.ServerResp;
   
   public class HelperClubBase
   {
      
      protected var _managerClubs:ManagerClubs;
      
      protected var _onComplete:Function;
      
      public function HelperClubBase()
      {
         super();
         this._managerClubs = GameSwf.instance.managerClubs;
      }
      
      protected function onComplete() : void
      {
         if(this._onComplete != null)
         {
            this._onComplete();
         }
      }
      
      protected function onResponseReceived(param1:ServerResp) : void
      {
         UtilsDialog.tryHandleResponseError(param1);
      }
      
      public function doAction(param1:Function = null) : void
      {
         this._onComplete = param1;
      }
   }
}


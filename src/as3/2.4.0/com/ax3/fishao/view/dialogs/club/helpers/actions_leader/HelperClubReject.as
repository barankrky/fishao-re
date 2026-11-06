package com.ax3.fishao.view.dialogs.club.helpers.actions_leader
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.club.helpers.base.HelperClubBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.base.ResponseError;
   
   public class HelperClubReject extends HelperClubBase
   {
      
      private var _login:String;
      
      public function HelperClubReject()
      {
         super();
      }
      
      public function set login(param1:String) : void
      {
         this._login = param1;
      }
      
      override protected function onResponseReceived(param1:ServerResp) : void
      {
         super.onResponseReceived(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         if(_onComplete != null)
         {
            _onComplete(this._login);
         }
      }
      
      override public function doAction(param1:Function = null) : void
      {
         super.doAction(param1);
         var _loc2_:String = I18n.get(EStringType.EST_CLUB_REJECT_CONFIRMATION);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_USERNAME,this._login);
         UtilsDialog.showConfirmDialog(_loc2_,this.doActionInternal);
      }
      
      private function doActionInternal() : void
      {
         _managerClubs.rejectMember(this._login,Preloader.waitForResponse(this.onResponseReceived));
      }
   }
}


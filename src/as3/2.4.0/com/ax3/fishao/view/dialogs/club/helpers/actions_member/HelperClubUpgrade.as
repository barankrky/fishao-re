package com.ax3.fishao.view.dialogs.club.helpers.actions_member
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.helpers.base.HelperClubBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.base.ResponseError;
   
   public class HelperClubUpgrade extends HelperClubBase
   {
      
      private var _level:int;
      
      public function HelperClubUpgrade()
      {
         super();
      }
      
      public function set level(param1:int) : void
      {
         this._level = param1;
      }
      
      override protected function onResponseReceived(param1:ServerResp) : void
      {
         super.onResponseReceived(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         onComplete();
      }
      
      override public function doAction(param1:Function = null) : void
      {
         super.doAction(param1);
         var _loc2_:String = I18n.get(EStringType.EST_CLUB_UPGRADE_CONFIRMATION);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_USERNAME,app.user.username);
         _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_COUNT,_managerClubs.getPriceForUpgradeTo(this._level + 1));
         UtilsDialog.showConfirmDialog(_loc2_,this.doActionInternal);
      }
      
      private function doActionInternal() : void
      {
         _managerClubs.upgradeClubLevel(Preloader.waitForResponse(this.onResponseReceived));
      }
   }
}


package com.ax3.fishao.view.dialogs.club.helpers.actions_member
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.club_inside.DialogClubInside;
   import com.ax3.fishao.view.dialogs.club.club_outside.DialogClubOutside;
   import com.ax3.fishao.view.dialogs.club.helpers.base.HelperClubBase;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.EClubType;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   
   public class HelperClubJoin extends HelperClubBase
   {
      
      private var _clubInfo:ClubInfo;
      
      private var _canOpenDialogInside:Boolean;
      
      public function HelperClubJoin()
      {
         super();
      }
      
      public function set clubInfo(param1:ClubInfo) : void
      {
         this._clubInfo = param1;
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._canOpenDialogInside = param1;
      }
      
      override protected function onResponseReceived(param1:ServerResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:FishaoBaseSwfDialog = null;
         var _loc4_:FishaoBaseSwfDialog = null;
         super.onResponseReceived(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         switch(this._clubInfo.type)
         {
            case EClubType.ECT_OPENED:
               _loc2_ = I18n.get(EStringType.EST_CLUB_JOIN_CONGRATULATIONS);
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_USERNAME,app.user.username);
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_NAME,this._clubInfo.name);
               UtilsDialog.showDialogInfoWithButton(I18n.get(EStringType.EST_CONGRATULATIONS),_loc2_,I18n.get(EStringType.EST_COMMON_COOL),this.openDialogInside);
               _loc3_ = GameSwf.instance.getOpenedPopup(DialogClubOutside);
               if(_loc3_ != null)
               {
                  _loc3_.close();
               }
               _loc4_ = GameSwf.instance.getOpenedPopup(DialogClubInfoOutside);
               if(_loc4_ != null)
               {
                  _loc4_.close();
               }
               break;
            case EClubType.ECT_PRIVATE:
               UtilsDialog.showDialogInfo(I18n.get(EStringType.EST_COMMON_SUCCESS),I18n.get(EStringType.EST_CLUB_JOIN_REQUEST_SENT_TO_PRIVATE));
               break;
            case EClubType.ECT_CLOSED:
               break;
            default:
               Debug.assert(false);
         }
      }
      
      override public function doAction(param1:Function = null) : void
      {
         super.doAction(param1);
         switch(this._clubInfo.type)
         {
            case EClubType.ECT_PRIVATE:
               UtilsDialog.showConfirmDialog(I18n.get(EStringType.EST_CLUB_JOIN_CONFIRMATION),this.doActionInternal);
               break;
            case EClubType.ECT_CLOSED:
               break;
            case EClubType.ECT_OPENED:
               this.doActionInternal();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function doActionInternal(param1:Event = null) : void
      {
         _managerClubs.joinTo(this._clubInfo.ID,Preloader.waitForResponse(this.onResponseReceived));
      }
      
      private function openDialogInside() : void
      {
         var _loc1_:DialogClubInside = null;
         if(this._canOpenDialogInside)
         {
            _loc1_ = app.dialogFactory.getDialog(DialogClubInside);
            _loc1_.entity = _managerClubs.userClub;
            _loc1_.show();
         }
      }
   }
}


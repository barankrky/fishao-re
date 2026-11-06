package com.ax3.fishao.view.dialogs.club.helpers.actions_leader
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.club.helpers.base.HelperClubBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.base.ResponseError;
   
   public class HelperClubChangeInfo extends HelperClubBase
   {
      
      private var _emblemID:int;
      
      private var _description:String;
      
      private var _clubType:String;
      
      private var _requiredLevel:int;
      
      private var _infoEstablished:Boolean;
      
      public function HelperClubChangeInfo()
      {
         super();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._emblemID = param1;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set clubType(param1:String) : void
      {
         this._clubType = param1;
      }
      
      public function set infoEstablished(param1:Boolean) : void
      {
         this._infoEstablished = param1;
      }
      
      public function set requiredLevel(param1:int) : void
      {
         this._requiredLevel = param1;
      }
      
      override protected function onResponseReceived(param1:ServerResp) : void
      {
         super.onResponseReceived(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         UtilsDialog.showDialogInfo(I18n.get(EStringType.EST_COMMON_SUCCESS),I18n.get(EStringType.EST_CLUB_CHANGES_SAVED));
         onComplete();
      }
      
      public function isAnyFieldChanged(param1:int, param2:String, param3:String, param4:int) : Boolean
      {
         var _loc5_:Boolean = false;
         if(this._infoEstablished)
         {
            _loc5_ = param1 != this._emblemID || this._description != param2 || this._clubType != param3 || this._requiredLevel != param4;
         }
         return _loc5_;
      }
      
      override public function doAction(param1:Function = null) : void
      {
         super.doAction(param1);
         _managerClubs.updateInfo(this._emblemID,this._description,this._clubType,this._requiredLevel,Preloader.waitForResponse(this.onResponseReceived));
      }
   }
}


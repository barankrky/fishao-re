package com.ax3.fishao.view.dialogs.club.pages.create
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.dialogs.club.club_inside.DialogClubInside;
   import com.ax3.fishao.view.dialogs.club.club_outside.DialogClubOutside;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.base.club_type.ControllerClubType;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ControllerEmblem;
   import com.ax3.fishao.view.dialogs.club.pages.base.requirement_level.ControllerRequirementLevel;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithoutButtons;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   
   public class ControllerClubPageCreate extends ControllerClubPage
   {
      
      private var _view:ViewClubPageCreate;
      
      private var _controllerEmblem:ControllerEmblem;
      
      private var _controllerClubType:ControllerClubType;
      
      private var _controllerRequirementLevel:ControllerRequirementLevel;
      
      public function ControllerClubPageCreate(param1:DisplayObjectContainer)
      {
         this._view = new ViewClubPageCreate(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Function = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc9_)
         {
            switch(param1)
            {
               case this._view.buttonCreate:
                  _loc3_ = Preloader.waitForResponse(this.onCreateClubResponseReceived);
                  _loc4_ = this._view.viewInputName.label.text;
                  _loc5_ = this._view.viewInputDescription.label.text;
                  _loc6_ = this._controllerEmblem.emblem;
                  _loc7_ = this._controllerClubType.type;
                  _loc8_ = this._controllerRequirementLevel.requiredLevel;
                  _managerClubs.createClub(_loc4_,_loc5_,_loc8_,_loc7_,_loc6_,_loc3_);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc9_;
      }
      
      private function onCreateClubResponseReceived(param1:ServerResp) : void
      {
         var _loc2_:DialogSimpleWithoutButtons = null;
         var _loc3_:DialogClubInside = null;
         var _loc4_:ResponseError = param1 as ResponseError;
         if(_loc4_ != null)
         {
            _loc2_ = new DialogSimpleWithoutButtons();
            _loc2_.title = I18n.get(EStringType.EST_COMMON_ERROR);
            _loc2_.description = I18n.get(_loc4_.description);
            _loc2_.show();
            return;
         }
         var _loc5_:FishaoBaseSwfDialog = GameSwf.instance.getOpenedPopup(DialogClubOutside);
         _loc5_.close();
         if(_canOpenDialogInside)
         {
            _loc3_ = app.dialogFactory.getDialog(DialogClubInside);
            _loc3_.entity = _managerClubs.userClub;
            _loc3_.show();
         }
      }
      
      private function init() : void
      {
         this._controllerRequirementLevel = new ControllerRequirementLevel(this._view.sourceRequirementLevel);
         this._controllerEmblem = new ControllerEmblem(this._view.sourceEmblem);
         this._controllerClubType = new ControllerClubType(this._view.sourceClubType);
         this._view.viewInputName.label.maxChars = ConstantsBase.CLUB_NAME_CHARACTERS_MAX;
         this._view.viewInputDescription.label.maxChars = ConstantsBase.CLUB_DESCRIPTION_CHARACTERS_MAX;
         this._view.buttonCreate.label = _managerClubs.createCost.toString();
      }
      
      override public function loadData() : void
      {
      }
      
      override public function cleanup() : void
      {
         this._controllerRequirementLevel.cleanup();
         this._controllerRequirementLevel = null;
         this._controllerEmblem.cleanup();
         this._controllerEmblem = null;
         this._controllerClubType.cleanup();
         this._controllerClubType = null;
         super.cleanup();
      }
   }
}


package com.ax3.fishao.view.dialogs.club.pages.tournament.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.model.ETournamentClubsType;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ViewClubEmblem;
   import flash.display.MovieClip;
   
   public class ViewClubItemTournament extends ViewBase
   {
      
      private var _source:gViewClubsItemTournament = new gViewClubsItemTournament();
      
      private var _viewEmblem:ViewClubEmblem;
      
      private var _labelPosition:TextFieldAutofitWrapper;
      
      private var _labelName:TextFieldAutofitWrapper;
      
      private var _labelCriteria:TextFieldAutofitWrapper;
      
      private var _labelReward:TextFieldAutofitWrapper;
      
      private var _viewIcon:MovieClip;
      
      public function ViewClubItemTournament(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._viewEmblem.emblemID = param1;
      }
      
      public function set position(param1:int) : void
      {
         this._labelPosition.text = param1.toString();
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function setCriteria(param1:String, param2:int) : void
      {
         this._labelCriteria.text = ETournamentClubsType.getCriteriaString(param1,param2);
      }
      
      public function set tournamentType(param1:String) : void
      {
         switch(param1)
         {
            case ETournamentClubsType.ETCT_COMPLETE_MISSIONS:
               this._viewIcon.gotoAndStop("missions");
               break;
            default:
               this._viewIcon.gotoAndStop("fish");
         }
      }
      
      public function set reward(param1:int) : void
      {
         this._labelReward.text = param1.toString();
      }
      
      public function set isCurrent(param1:Boolean) : void
      {
         this._source.viewCurrent.visible = param1;
         if(param1)
         {
            this._labelPosition.source.textColor = 16777215;
            this._labelPosition.source.filters = [];
            this._labelName.source.textColor = 16777215;
            this._labelCriteria.source.textColor = 16777215;
            this._labelReward.source.textColor = 16777215;
         }
      }
      
      private function init() : void
      {
         this.handleEvents(true);
         this._source.mouseChildren = false;
         this._viewEmblem = new ViewClubEmblem(this.controller,Debug.assertProperty(this.source,"viewEmblem"));
         this._labelPosition = createAutofitLabel("labelPosition",null);
         this._labelName = createAutofitLabel("labelName",null);
         this._labelCriteria = createAutofitLabel("labelCriteria",null);
         this._labelReward = createAutofitLabel("labelReward",null);
         this._viewIcon = Debug.assertProperty(this.source,"viewIcon");
      }
   }
}


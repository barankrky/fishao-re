package com.ax3.fishao.view.dialogs.club.pages.tournament
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.model.ETournamentClubsType;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewPageTournament extends ViewBase
   {
      
      private var _buttonHistory:FrameButtonWrapper;
      
      private var _labelText:TextFieldAutofitWrapper;
      
      private var _labelTournamentType:TextFieldAutofitWrapper;
      
      private var _labelColumnType:TextFieldAutofitWrapper;
      
      private var _labelTimeLeft:TextFieldAutofitWrapper;
      
      private var _labelTimeLeftValue:TextFieldAutofitWrapper;
      
      private var _labelNote:TextFieldAutofitWrapper;
      
      private var _sourceTableTitle:DisplayObject;
      
      private var _viewPagination:ViewPagination;
      
      public function ViewPageTournament(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set isTournamentInProgress(param1:Boolean) : void
      {
         this._sourceTableTitle.visible = param1;
         this._labelTournamentType.source.visible = param1;
         this._viewPagination.source.visible = param1;
         this._labelTimeLeft.source.visible = param1;
         this._labelTimeLeftValue.source.visible = param1;
         this._labelNote.source.visible = param1;
      }
      
      public function get buttonHistory() : FrameButtonWrapper
      {
         return this._buttonHistory;
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      public function set tournamentType(param1:String) : void
      {
         var _loc2_:String = ETournamentClubsType.getColumnStringType(param1);
         this._labelColumnType.text = I18n.get(_loc2_);
         this._labelTournamentType.text = I18n.get(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._labelText.text = param1;
      }
      
      public function set timeLeft(param1:int) : void
      {
         param1 = Math.max(param1,0);
         this._labelTimeLeftValue.text = I18n.formatTimestampToClockView(param1);
      }
      
      private function init() : void
      {
         this._labelText = createAutofitLabel("labelText",null);
         this._labelTournamentType = createAutofitLabel("labelTournamentType",null);
         this._labelNote = createAutofitLabel("labelNote",EStringType.EST_CLUB_RANKINGS_NOTE);
         this.initTableTitle();
         this._buttonHistory = createButton("buttonHistory");
         this._buttonHistory.label = I18n.get(EStringType.EST_CLUB_BUTTON_TOURNAMENT_HISTORY);
         this._labelTimeLeft = createAutofitLabel("labelTimeLeft",EStringType.EST_COMMON_TIME_LEFT);
         this._labelTimeLeftValue = createAutofitLabel("labelTimeLeftValue",null);
         this._viewPagination = new ViewPagination(controller,Debug.assertProperty(this.source,"viewPagination"));
      }
      
      private function initTableTitle() : void
      {
         this._sourceTableTitle = Debug.assertProperty(this.source,"viewTableTitle");
         var _loc1_:TextFieldAutofitWrapper = createAutofitLabel("labelNumber",null,this._sourceTableTitle);
         _loc1_.text = "#";
         this._labelColumnType = createAutofitLabel("labelType",null,this._sourceTableTitle);
         createAutofitLabel("labelClubName",EStringType.EST_CLUB_COLUMN_CLUB,this._sourceTableTitle);
         createAutofitLabel("labelReward",EStringType.EST_COMMON_REWARD,this._sourceTableTitle);
      }
   }
}


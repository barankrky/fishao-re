package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.ScalableCenterTextFieldWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewDialogTournamentResults extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _labelMessage:ScalableCenterTextFieldWrapper;
      
      private var _labelFieldPosition:TextField;
      
      private var _labelFieldLogin:TextField;
      
      private var _labelFieldCriteria:TextField;
      
      private var _labelFieldReward:TextField;
      
      private var _labelPage:TextField;
      
      private var _buttonPrevious:FrameButtonWrapper;
      
      private var _buttonNext:FrameButtonWrapper;
      
      private var _buttonOk:FrameButtonWrapper;
      
      private var _items:Array;
      
      private var _viewContainer:ViewContainerItems;
      
      public function ViewDialogTournamentResults(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get buttonPrevious() : FrameButtonWrapper
      {
         return this._buttonPrevious;
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._buttonNext;
      }
      
      public function get buttonOk() : FrameButtonWrapper
      {
         return this._buttonOk;
      }
      
      public function get labelPage() : TextField
      {
         return this._labelPage;
      }
      
      public function get itemsOnPage() : int
      {
         return this._viewContainer.itemsOnPage;
      }
      
      public function set message(param1:String) : void
      {
         this._labelMessage.text = param1;
      }
      
      public function set items(param1:Array) : void
      {
         this._viewContainer.items = param1;
      }
      
      public function set tournamentType(param1:String) : void
      {
         var _loc2_:String = EStringType.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_CRITERIA_TEMPLATE.replace(EStringTypeStubs.ESTS_TYPE,param1);
         this._labelFieldCriteria.text = I18n.get(_loc2_);
      }
      
      public function init() : void
      {
         var labelMessage:TextField = null;
         this._items = [];
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._viewTitle.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_TITLE);
         this._viewContainer = new ViewContainerItems(controller);
         this._viewContainer.size = new Point(1,7);
         this._viewContainer.gap = new Point(0,6);
         this._source.addChild(this._viewContainer.source);
         labelMessage = Debug.assertProperty(this._source,"labelMessage",TextField);
         this._labelMessage = new ScalableCenterTextFieldWrapper(labelMessage);
         this._labelFieldPosition = Debug.assertProperty(this._source,"labelFieldPosition",TextField);
         this._labelFieldPosition.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_POSITION);
         this._labelFieldLogin = Debug.assertProperty(this._source,"labelFieldLogin",TextField);
         this._labelFieldLogin.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_LOGIN);
         this._labelFieldCriteria = Debug.assertProperty(this._source,"labelFieldCriteria",TextField);
         this._labelFieldReward = Debug.assertProperty(this._source,"labelFieldReward",TextField);
         this._labelFieldReward.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_FIELD_REWARDS);
         this._labelPage = Debug.assertProperty(this._source,"labelPage",TextField);
         this._buttonNext = new FrameButtonWrapper();
         this._buttonNext.process(Debug.assertProperty(this._source,"buttonNext",DisplayObjectContainer));
         this._buttonNext.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonNext,param1);
         };
         this._buttonPrevious = new FrameButtonWrapper();
         this._buttonPrevious.process(Debug.assertProperty(this._source,"buttonPrevious",DisplayObjectContainer));
         this._buttonPrevious.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonPrevious,param1);
         };
         this._buttonOk = new FrameButtonWrapper();
         this._buttonOk.process(Debug.assertProperty(this._source,"buttonOk",DisplayObjectContainer));
         this._buttonOk.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonOk,param1);
         };
         this._buttonOk.label = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_BUTTON_OK);
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         this._viewContainer.placeViews(param1);
         this._viewContainer.source.x = 30;
         this._viewContainer.source.y = 150;
      }
      
      override public function cleanup() : void
      {
         this._buttonNext.handler = null;
         this._buttonPrevious.handler = null;
         super.cleanup();
      }
   }
}


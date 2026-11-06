package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.display.wrappers.impl.SignUpButtonWrapper;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewDoubleStyleLabel;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewDialogTournamentSignUp extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _labelMembers:ViewDoubleStyleLabel;
      
      private var _labelType:ViewDoubleStyleLabel;
      
      private var _labelDuration:ViewDoubleStyleLabel;
      
      private var _labelTimeSignUp:ViewDoubleStyleLabel;
      
      private var _labelTimeStart:ViewDoubleStyleLabel;
      
      private var _labelDescription:TextField;
      
      private var _viewDescriptionLine:DisplayObjectContainer;
      
      private var _buttonSignUp:SignUpButtonWrapper;
      
      private var _viewPrizes:ViewContainerItems;
      
      public function ViewDialogTournamentSignUp(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set members(param1:String) : void
      {
         this._labelMembers.value = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._labelType.value = param1;
      }
      
      public function set durationTitle(param1:String) : void
      {
         this._labelDuration.title = param1;
      }
      
      public function set duration(param1:String) : void
      {
         this._labelDuration.value = param1;
      }
      
      public function set description(param1:String) : void
      {
         this._labelDescription.text = param1;
         this._viewDescriptionLine.height = this._labelDescription.textHeight;
      }
      
      public function set timeStart(param1:String) : void
      {
         this._labelTimeStart.value = param1;
      }
      
      public function set timeSignUp(param1:String) : void
      {
         this._labelTimeSignUp.value = param1;
      }
      
      public function set dialogTitle(param1:String) : void
      {
         this._viewTitle.text = param1;
      }
      
      public function get buttonSignUp() : SignUpButtonWrapper
      {
         return this._buttonSignUp;
      }
      
      public function set prizes(param1:Array) : void
      {
         this._viewPrizes.items = param1;
      }
      
      private function init() : void
      {
         var labelMembersTitle:TextField = null;
         var labelMembersValue:TextField = null;
         var labelTypeTitle:TextField = null;
         var labelTypeValue:TextField = null;
         var labelDurationTitle:TextField = null;
         var labelDurationValue:TextField = null;
         var labelTimeStartTitle:TextField = null;
         var labelTimeStartValue:TextField = null;
         var labelTimeSignUpTitle:TextField = null;
         var labelTimeSignUpValue:TextField = null;
         this._viewPrizes = new ViewContainerItems(controller);
         this._viewPrizes.size = new Point(3,1);
         this._viewPrizes.offset = new Point(0,0);
         this._viewPrizes.gap = new Point(43,0);
         this._source.addChild(this._viewPrizes.source);
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         labelMembersTitle = Debug.assertProperty(this._source,"labelMembersTitle",TextField);
         labelMembersValue = Debug.assertProperty(this._source,"labelMembersValue",TextField);
         this._labelMembers = new ViewDoubleStyleLabel(controller,labelMembersTitle,labelMembersValue);
         this._labelMembers.title = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_MEMBERS);
         labelTypeTitle = Debug.assertProperty(this._source,"labelTypeTitle",TextField);
         labelTypeValue = Debug.assertProperty(this._source,"labelTypeValue",TextField);
         this._labelType = new ViewDoubleStyleLabel(controller,labelTypeTitle,labelTypeValue);
         this._labelType.title = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_TYPE);
         labelDurationTitle = Debug.assertProperty(this._source,"labelDurationTitle",TextField);
         labelDurationValue = Debug.assertProperty(this._source,"labelDurationValue",TextField);
         this._labelDuration = new ViewDoubleStyleLabel(controller,labelDurationTitle,labelDurationValue);
         this._labelDescription = Debug.assertProperty(this._source,"labelDescription",TextField);
         this._viewDescriptionLine = Debug.assertProperty(this._source,"viewDescriptionLine");
         labelTimeStartTitle = Debug.assertProperty(this._source,"labelTimeStartTitle",TextField);
         labelTimeStartValue = Debug.assertProperty(this._source,"labelTimeStartValue",TextField);
         this._labelTimeStart = new ViewDoubleStyleLabel(controller,labelTimeStartTitle,labelTimeStartValue,false);
         this._labelTimeStart.title = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_TIME_START);
         labelTimeSignUpTitle = Debug.assertProperty(this._source,"labelTimeSignUpTitle",TextField);
         labelTimeSignUpValue = Debug.assertProperty(this._source,"labelTimeSignUpValue",TextField);
         this._labelTimeSignUp = new ViewDoubleStyleLabel(controller,labelTimeSignUpTitle,labelTimeSignUpValue,false);
         this._labelTimeSignUp.title = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_TIME_SIGN_UP);
         this._buttonSignUp = new SignUpButtonWrapper();
         this._buttonSignUp.process(Debug.assertProperty(this._source,"buttonSignUp"));
         this._buttonSignUp.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonSignUp,param1);
         };
         this._buttonSignUp.label = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_BUTTON_SIGN_UP);
         this.placeViews(false);
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         this._viewPrizes.placeViews(param1);
         this._viewPrizes.source.x = 45;
         this._viewPrizes.source.y = 70;
      }
   }
}


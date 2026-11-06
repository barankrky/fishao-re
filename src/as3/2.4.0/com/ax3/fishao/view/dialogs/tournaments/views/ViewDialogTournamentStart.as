package com.ax3.fishao.view.dialogs.tournaments.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewDoubleStyleLabel;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ViewDialogTournamentStart extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _buttonReady:FrameButtonWrapper;
      
      private var _labelLevelTitle:TextField;
      
      private var _labelNameTitle:TextField;
      
      private var _labelStatusTitle:TextField;
      
      private var _labelTimeStart:ViewDoubleStyleLabel;
      
      private var _viewMembers:DisplayObjectContainer;
      
      public function ViewDialogTournamentStart(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonReady() : FrameButtonWrapper
      {
         return this._buttonReady;
      }
      
      public function get viewMembers() : DisplayObjectContainer
      {
         return this._viewMembers;
      }
      
      public function set dialogTitle(param1:String) : void
      {
         this._viewTitle.text = param1;
      }
      
      public function set timeStart(param1:String) : void
      {
         this._labelTimeStart.value = param1;
      }
      
      private function init() : void
      {
         var labelTimeStartTitle:TextField = null;
         var labelTimeStartValue:TextField = null;
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._labelLevelTitle = Debug.assertProperty(this._source,"labelLevelTitle",TextField);
         this._labelLevelTitle.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_START_LEVEL);
         this._labelNameTitle = Debug.assertProperty(this._source,"labelNameTitle",TextField);
         this._labelNameTitle.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_START_NAME);
         this._labelStatusTitle = Debug.assertProperty(this._source,"labelStatusTitle",TextField);
         this._labelStatusTitle.text = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_START_STATUS);
         labelTimeStartTitle = Debug.assertProperty(this._source,"labelTimeStartTitle",TextField);
         labelTimeStartValue = Debug.assertProperty(this._source,"labelTimeStartValue",TextField);
         this._labelTimeStart = new ViewDoubleStyleLabel(controller,labelTimeStartTitle,labelTimeStartValue,false);
         this._labelTimeStart.title = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_START_TIME_START);
         this._buttonReady = new FrameButtonWrapper();
         this._buttonReady.process(Debug.assertProperty(this._source,"buttonReady"));
         this._buttonReady.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonReady,param1);
         };
         this._buttonReady.label = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_START_BUTTON_READY);
         this._viewMembers = Debug.assertProperty(this._source,"viewMembers");
      }
      
      override public function cleanup() : void
      {
         this._buttonReady.disable();
         super.cleanup();
      }
   }
}


package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewDialogEventsUpcoming extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _viewContainerItems:ViewContainerItems;
      
      private var _labelPage:TextField;
      
      private var _buttonPrev:FrameButtonWrapper;
      
      private var _buttonNext:FrameButtonWrapper;
      
      private var _buttonBack:FrameButtonWrapper;
      
      private var _labelType:TextField;
      
      private var _labelStartTime:TextField;
      
      private var _labelDuration:TextField;
      
      public function ViewDialogEventsUpcoming(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._viewContainerItems.items = param1;
      }
      
      public function get buttonPrev() : FrameButtonWrapper
      {
         return this._buttonPrev;
      }
      
      public function get buttonNext() : FrameButtonWrapper
      {
         return this._buttonNext;
      }
      
      public function get buttonBack() : FrameButtonWrapper
      {
         return this._buttonBack;
      }
      
      public function get itemsOnPage() : int
      {
         return this._viewContainerItems.itemsOnPage;
      }
      
      public function get labelPage() : TextField
      {
         return this._labelPage;
      }
      
      private function init() : void
      {
         var buttonBack:MovieClip = null;
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._viewTitle.text = I18n.get(EStringType.EST_DIALOG_EVENTS_UPCOMING_TITLE);
         this._labelType = Debug.assertProperty(this._source,"labelFieldType",TextField);
         this._labelType.text = I18n.get(EStringType.EST_DIALOG_EVENTS_UPCOMING_FIELD_TYPE);
         this._labelStartTime = Debug.assertProperty(this._source,"labelFieldStartTime",TextField);
         this._labelStartTime.text = I18n.get(EStringType.EST_DIALOG_EVENTS_UPCOMING_FIELD_START_TIME);
         this._labelDuration = Debug.assertProperty(this._source,"labelFieldDuration",TextField);
         this._labelDuration.text = I18n.get(EStringType.EST_DIALOG_EVENTS_UPCOMING_FIELD_DURATION);
         this._viewContainerItems = new ViewContainerItems(controller);
         this._viewContainerItems.size = new Point(1,11);
         this._viewContainerItems.offset = new Point(20,85);
         this._viewContainerItems.gap = new Point(0,4);
         this._source.addChild(this._viewContainerItems.source);
         buttonBack = Debug.assertProperty(this._source,"buttonBack");
         this._buttonBack = new FrameButtonWrapper();
         this._buttonBack.process(buttonBack);
         this._buttonBack.label = I18n.get(EStringType.EST_DIALOG_EVENTS_UPCOMING_BUTTON_BACK);
         this._buttonBack.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonBack,param1);
         };
         this._labelPage = Debug.assertProperty(this._source,"labelPage",TextField);
         this._buttonPrev = new FrameButtonWrapper();
         this._buttonPrev.process(Debug.assertProperty(this._source,"buttonPrev"));
         this._buttonPrev.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonPrev,param1);
         };
         this._buttonNext = new FrameButtonWrapper();
         this._buttonNext.process(Debug.assertProperty(this._source,"buttonNext"));
         this._buttonNext.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonNext,param1);
         };
      }
   }
}


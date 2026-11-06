package com.ax3.fishao.view.dialogs.furniture_factory.views
{
   import com.ax3.display.wrappers.impl.SignUpButtonWrapper;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.collections.tabs.ViewTabs;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ViewDialogFurnitureFactory extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _labelMessage:TextFieldAutofitWrapper;
      
      private var _buttonOpen:FrameButtonWrapper;
      
      private var _buttonSkipTime:SignUpButtonWrapper;
      
      private var _viewTabs:ViewTabs;
      
      public function ViewDialogFurnitureFactory(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function get buttonOpen() : FrameButtonWrapper
      {
         return this._buttonOpen;
      }
      
      public function get buttonSkipTime() : SignUpButtonWrapper
      {
         return this._buttonSkipTime;
      }
      
      public function set npcMessage(param1:String) : void
      {
         this._labelMessage.text = param1;
      }
      
      public function get viewTabs() : ViewTabs
      {
         return this._viewTabs;
      }
      
      private function init() : void
      {
         var labelMessageSource:TextField = null;
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._viewTitle.text = I18n.getUpper(EStringType.EST_DIALOG_FURNITURE_FACTORY_TITLE);
         labelMessageSource = Debug.assertProperty(this._source,"labelMessage",TextField);
         this._labelMessage = new TextFieldAutofitWrapper(labelMessageSource);
         this._buttonOpen = new FrameButtonWrapper();
         this._buttonOpen.process(Debug.assertProperty(this._source,"buttonOpen"));
         this._buttonOpen.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonOpen,param1);
         };
         this._buttonOpen.label = I18n.getUpper(EStringType.EST_DIALOG_FURNITURE_FACTORY_BUTTON_OPEN);
         this._buttonSkipTime = new SignUpButtonWrapper();
         this._buttonSkipTime.process(Debug.assertProperty(this._source,"buttonSkipTime"));
         this._buttonSkipTime.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonSkipTime,param1);
         };
         this._buttonSkipTime.label = I18n.getUpper(EStringType.EST_DIALOG_FURNITURE_FACTORY_BUTTON_SKIP_TIME);
         this.initTabs();
      }
      
      private function initTabs() : void
      {
         this._viewTabs = new ViewTabs(controller);
         this._source.addChild(this._viewTabs.source);
         this._viewTabs.addTab(I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_ACTIVE));
         this._viewTabs.addTab(I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_COMPLETED));
         this._viewTabs.source.x = 70;
         this._viewTabs.source.y = 274;
      }
      
      private function tryCleanupTabs() : void
      {
         if(this._viewTabs == null || this._viewTabs.source.parent != this._source)
         {
            return;
         }
         this._source.removeChild(this._viewTabs.source);
         this._viewTabs.cleanup();
         this._viewTabs = null;
      }
      
      public function recreateTabs() : void
      {
         this.tryCleanupTabs();
         this.initTabs();
      }
   }
}


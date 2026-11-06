package com.ax3.fishao.view.dialogs.trade.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FishaoLongDropdown;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewTradeInventory extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _buttonPagePrevious:FrameButtonWrapper;
      
      private var _buttonPageNext:FrameButtonWrapper;
      
      private var _labelPages:TextField;
      
      private var _items:Array;
      
      private var _viewContainerItems:ViewContainerItems;
      
      private var _viewContentBackground:DisplayObject;
      
      private var _viewDropdown:FishaoLongDropdown;
      
      public function ViewTradeInventory(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonPagePrevious() : FrameButtonWrapper
      {
         return this._buttonPagePrevious;
      }
      
      public function get buttonPageNext() : FrameButtonWrapper
      {
         return this._buttonPageNext;
      }
      
      public function get viewDropdown() : FishaoLongDropdown
      {
         return this._viewDropdown;
      }
      
      public function get itemsOnPage() : int
      {
         return this._viewContainerItems.itemsOnPage;
      }
      
      public function set items(param1:Array) : void
      {
         if(param1 == this._items)
         {
            return;
         }
         this._items = param1;
         this._viewContainerItems.items = this._items;
      }
      
      private function init() : void
      {
         var viewDropdown:DisplayObjectContainer = null;
         this._viewContentBackground = Debug.assertProperty(this._source,"viewContentBackground");
         this._viewContainerItems = new ViewContainerItems(controller);
         this._viewContainerItems.size = new Point(3,3);
         this._viewContainerItems.offset = new Point(21,17);
         this._viewContainerItems.gap = new Point(28,10);
         this._viewContainerItems.source.x = this._viewContentBackground.x;
         this._viewContainerItems.source.y = this._viewContentBackground.y;
         this._source.addChild(this._viewContainerItems.source);
         this._labelPages = Debug.assertProperty(this._source,"labelPages",TextField);
         this._buttonPagePrevious = new FrameButtonWrapper();
         this._buttonPagePrevious.process(Debug.assertProperty(this._source,"buttonPagePrevious",DisplayObjectContainer));
         this._buttonPagePrevious.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonPagePrevious,param1);
         };
         this._buttonPageNext = new FrameButtonWrapper();
         this._buttonPageNext.process(Debug.assertProperty(this._source,"buttonPageNext",DisplayObjectContainer));
         this._buttonPageNext.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonPageNext,param1);
         };
         viewDropdown = Debug.assertProperty(this._source,"viewDropdown",DisplayObjectContainer);
         this._source.setChildIndex(viewDropdown,this._source.numChildren - 1);
         this._viewDropdown = new FishaoLongDropdown();
         this._viewDropdown.process(viewDropdown);
         this._viewDropdown.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_viewDropdown,param1);
         };
      }
      
      public function setPageLabel(param1:int, param2:int) : void
      {
         this._labelPages.text = param1.toString() + " " + I18n.get(EStringType.EST_COMMON_OF) + " " + param2.toString();
      }
      
      override public function cleanup() : void
      {
         this._buttonPagePrevious.handler = null;
         this._buttonPageNext.handler = null;
         super.cleanup();
      }
   }
}


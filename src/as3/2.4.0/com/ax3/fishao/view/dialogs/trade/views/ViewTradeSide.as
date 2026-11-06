package com.ax3.fishao.view.dialogs.trade.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewTradeSide extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _labelName:TextField;
      
      private var _viewTradeStatus:ViewTradeStatus;
      
      private var _viewContainerItems:ViewContainerItems;
      
      private var _items:Array;
      
      private var _viewContentBackground:DisplayObject;
      
      public function ViewTradeSide(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         if(param1 == this._items)
         {
            return;
         }
         this._items = param1;
         this._viewContainerItems.items = this._items;
         this.placeViews(false);
      }
      
      public function get viewTradeStatus() : ViewTradeStatus
      {
         return this._viewTradeStatus;
      }
      
      public function set name(param1:String) : void
      {
         this._labelName.text = param1;
      }
      
      public function get viewContainerItems() : ViewContainerItems
      {
         return this._viewContainerItems;
      }
      
      private function init() : void
      {
         this._labelName = Debug.assertProperty(this._source,"labelName");
         this._viewTradeStatus = new ViewTradeStatus(controller,Debug.assertProperty(this._source,"viewTradeStatus"));
         this._viewContentBackground = Debug.assertProperty(this._source,"viewContentBackground");
         this._viewContainerItems = new ViewContainerItems(controller);
         this._viewContainerItems.size = new Point(3,2);
         this._viewContainerItems.offset = new Point(8,9);
         this._viewContainerItems.gap = new Point(18,6);
         this._source.addChild(this._viewContainerItems.source);
         this._items = [];
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         super.placeViews(param1);
         this._viewContainerItems.source.x = this._viewContentBackground.x;
         this._viewContainerItems.source.y = this._viewContentBackground.y;
         this._viewContainerItems.placeViews(param1);
      }
   }
}


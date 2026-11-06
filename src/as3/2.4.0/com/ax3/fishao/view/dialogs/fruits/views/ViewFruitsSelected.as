package com.ax3.fishao.view.dialogs.fruits.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewContainerItems;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class ViewFruitsSelected extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewContainerItems:ViewContainerItems;
      
      private var _labelItemsSelected:TextField;
      
      public function ViewFruitsSelected(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,param2);
         this.init();
      }
      
      public function set items(param1:Array) : void
      {
         this._viewContainerItems.items = param1;
      }
      
      public function get itemsOnPage() : int
      {
         return this._viewContainerItems.itemsOnPage;
      }
      
      private function init() : void
      {
         this._labelItemsSelected = Debug.assertProperty(this._source,"labelItemsSelected",TextField);
         this._labelItemsSelected.text = I18n.get(EStringType.EST_DIALOG_FRUITS_CRUSH_LABEL_ITEMS_SELECTED);
         this._viewContainerItems = new ViewContainerItems(controller);
         this._viewContainerItems.size = new Point(3,1);
         this._viewContainerItems.offset = new Point(0,0);
         this._viewContainerItems.gap = new Point(3,15);
         this._viewContainerItems.source.x = 5;
         this._viewContainerItems.source.y = 34;
         this._source.addChild(this._viewContainerItems.source);
      }
   }
}


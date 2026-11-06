package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.events.DialogEvents;
   import com.ax3.fishao.view.dialogs.events.views.ViewDialogEventsUpcoming;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.events.data.EventInfo;
   
   public class ControllerDialogEventsUpcoming extends Controller
   {
      
      private var _view:ViewDialogEventsUpcoming;
      
      private var _items:Array;
      
      private var _pageCurrent:int;
      
      private var _pages:int;
      
      public function ControllerDialogEventsUpcoming(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogEventsUpcoming(this,param1);
         super(this._view);
         this.init();
      }
      
      private function get сurrentPageItems() : Array
      {
         var _loc1_:int = (this._pageCurrent - 1) * this._view.itemsOnPage;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_;
         while(_loc3_ < this._items.length && _loc3_ < _loc1_ + this._view.itemsOnPage)
         {
            _loc2_.push(this._items[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogEvents = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         switch(param1)
         {
            case this._view.buttonPrev:
               --this._pageCurrent;
               this.updatePage();
               break;
            case this._view.buttonNext:
               ++this._pageCurrent;
               this.updatePage();
               break;
            case this._view.buttonBack:
               PopupManager.getInstance().currentDialog().close();
               _loc3_ = app.dialogFactory.getEventsDialog();
               _loc3_.show();
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         var _loc1_:EventInfo = null;
         var _loc2_:ControllerEventUpcoming = null;
         this._items = [];
         var _loc3_:Array = GameSwf.instance.managerEvents.events;
         for each(_loc1_ in _loc3_)
         {
            if(_loc1_.timeLeft > 0)
            {
               _loc2_ = new ControllerEventUpcoming(_loc1_);
               this._items.push(_loc2_);
            }
         }
         this._pageCurrent = 1;
         this._pages = Math.floor(this._items.length / this._view.itemsOnPage) + 1;
         this.updatePage();
      }
      
      private function updatePage() : void
      {
         this.updateItems();
         this.updatePageLabel();
         this.updateButtons();
      }
      
      private function updateItems() : void
      {
         var _loc1_:ControllerEventUpcoming = null;
         var _loc2_:Array = this.сurrentPageItems;
         var _loc3_:Array = [];
         for each(_loc1_ in _loc2_)
         {
            _loc3_.push(_loc1_.view.source);
         }
         this._view.items = _loc3_;
      }
      
      private function updatePageLabel() : void
      {
         var _loc1_:IController = null;
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc1_ = this._items[_loc3_];
            _loc2_ = Math.ceil((_loc3_ + 1) / this._view.itemsOnPage);
            if(_loc2_ == this._pageCurrent)
            {
               _loc1_.view.show();
            }
            else
            {
               _loc1_.view.hide();
            }
            _loc3_++;
         }
         var _loc4_:String = I18n.get(EStringType.EST_DIALOG_EVENTS_PAGE);
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_VALUE,this._pageCurrent);
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_VALUE,this._pages);
         this._view.labelPage.text = _loc4_;
      }
      
      private function updateButtons() : void
      {
         this._view.buttonNext.enabled = this._pageCurrent < this._pages;
         this._view.buttonPrev.enabled = this._pageCurrent > 1;
      }
   }
}


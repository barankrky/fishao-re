package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.events.views.ViewMembers;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.events.data.EventMemberInfo;
   
   public class ControllerMembers extends Controller
   {
      
      private var _view:ViewMembers;
      
      private var _items:Array;
      
      private var _pageCurrent:uint;
      
      private var _pageTotals:uint;
      
      public function ControllerMembers(param1:DisplayObjectContainer)
      {
         this._view = new ViewMembers(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         switch(param1)
         {
            case this._view.buttonPrev:
               --this._pageCurrent;
               this.updatePage();
               this.updateButtons();
               break;
            case this._view.buttonNext:
               ++this._pageCurrent;
               this.updatePage();
               this.updateButtons();
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._items = [];
         this._pageCurrent = 1;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:EventMemberInfo = null;
         var _loc6_:ControllerMemberItem = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_EVENTS_EVENT_START:
               this._view.eventType = GameSwf.instance.managerEvents.eventCurrent.type;
               this._pageCurrent = 1;
               this._pageTotals = 1;
               this.updatePage();
               this.updateButtons();
               break;
            case EControllerUpdate.ECU_EVENTS_EVENT_MEMBERS:
               this.cleanupItems();
               _loc2_ = [];
               _loc3_ = GameSwf.instance.managerEvents.members;
               this._pageCurrent = 1;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = _loc3_[_loc4_];
                  _loc6_ = new ControllerMemberItem(_loc5_);
                  this._items.push(_loc6_);
                  _loc2_.push(_loc6_.view);
                  if(_loc6_.isCurrent)
                  {
                     this._pageCurrent = Math.ceil((_loc4_ + 1) / this._view.itemsOnPage);
                  }
                  _loc4_++;
               }
               this._view.items = _loc2_;
               this._pageTotals = Math.max(Math.ceil(this._items.length / this._view.itemsOnPage),1);
               this.updatePage();
               this.updateButtons();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function cleanupItems() : void
      {
         var _loc1_:IController = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.view.source.parent.removeChild(_loc1_.view.source);
            _loc1_.cleanup();
         }
         this._items.length = 0;
      }
      
      private function updatePage() : void
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
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_VALUE,this._pageTotals);
         this._view.labelPage.text = _loc4_;
      }
      
      private function updateButtons() : void
      {
         this._view.buttonNext.enabled = this._pageCurrent < this._pageTotals;
         this._view.buttonPrev.enabled = this._pageCurrent > 1;
      }
      
      override public function cleanup() : void
      {
         this.cleanupItems();
         super.cleanup();
      }
   }
}


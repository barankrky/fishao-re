package com.ax3.fishao.view.dialogs.collections.controllers
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.core.IDisposable;
   import com.ax3.fishao.requirements.RequirementBase;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerWithItems;
   import com.ax3.fishao.view.dialogs.collections.model.CollectionBase;
   import com.ax3.fishao.view.dialogs.collections.views.ViewCollection;
   import flash.events.Event;
   
   public class ControllerCollection extends ControllerWithItems
   {
      
      private var _view:ViewCollection = new ViewCollection(this);
      
      private var _items:Array;
      
      private var _entity:CollectionBase;
      
      private var _pageCurrent:int;
      
      private var _pagesTotal:int;
      
      public function ControllerCollection(param1:CollectionBase)
      {
         super(this._view);
         this._entity = param1;
         this.init();
      }
      
      public function get entity() : CollectionBase
      {
         return this._entity;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonNext:
                  ++this._pageCurrent;
                  this.updateButtons();
                  this.updatePageInternal();
                  break;
               case this._view.buttonPrev:
                  --this._pageCurrent;
                  this.updateButtons();
                  this.updatePageInternal();
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:ControllerCollectionItem = null;
         this._items = [];
         this._view.collectionId = this._entity.id;
         this._view.reward = this._entity.reward;
         this._view.isLocked = this._entity.isLocked;
         this._view.isComplete = this._entity.isComplete;
         this._view.setProgress(this._entity.collectedItemsIDs.length,this._entity.itemsIDs.length);
         if(this._entity.isLocked)
         {
            this._view.lockMessage = (this._entity.requirements[0] as RequirementBase).description;
         }
         var _loc4_:Array = [];
         for each(_loc1_ in this._entity.itemsIDs)
         {
            _loc2_ = this._entity.collectedItemsIDs.indexOf(_loc1_) != ConstantsBase.INDEX_NONE;
            _loc3_ = new ControllerCollectionItem(this._entity.type,_loc1_,_loc2_);
            this._items.push(_loc3_);
            _loc4_.push(_loc3_.view);
         }
         this._view.items = _loc4_;
         this._pageCurrent = 1;
         this._pagesTotal = Math.max(Math.ceil(this._items.length / this._view.itemsOnPage),1);
         this.updateButtons();
         this.updatePageInternal();
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._pageCurrent - 1,this._view.itemsOnPage);
      }
      
      private function updateButtons() : void
      {
         this._view.buttonNext.enabled = this._pageCurrent < this._pagesTotal;
         this._view.buttonPrev.enabled = this._pageCurrent > 1;
      }
      
      override public function cleanup() : void
      {
         var _loc1_:IDisposable = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.cleanup();
         }
         super.cleanup();
      }
      
      public function toString() : String
      {
         var _loc1_:String = "";
         if(this._entity != null)
         {
            _loc1_ += "id:" + this._entity.id;
         }
         return _loc1_;
      }
   }
}


package com.ax3.fishao.view.dialogs.collections
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerScrollContainer;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewScrollContainer;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.EScrollDirectionType;
   import com.ax3.fishao.view.dialogs.collections.controllers.ControllerCollection;
   import com.ax3.fishao.view.dialogs.collections.model.CollectionBase;
   import com.ax3.fishao.view.dialogs.collections.model.ECollectionType;
   import com.ax3.fishao.view.dialogs.collections.model.ManagerCollections;
   import com.ax3.fishao.view.dialogs.collections.tabs.ViewTabs;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class DialogCollections extends DialogCollectionsAsset
   {
      
      private var _managerCollections:ManagerCollections;
      
      private var _itemsCompleted:Array;
      
      private var _itemsNotCompleted:Array;
      
      private var _controllerItemsCompleted:ControllerScrollContainer;
      
      private var _controllerItemsNotCompleted:ControllerScrollContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _viewTabs:ViewTabs;
      
      public function DialogCollections()
      {
         super();
         this.init();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_COLLECTIONS;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._controllerItemsCompleted = new ControllerScrollContainer(Debug.assertProperty(_asset,"viewScrollCompleted"),EScrollDirectionType.ESDT_VERTICAL);
         (this._controllerItemsCompleted.view as ViewScrollContainer).viewContainerItems.offset = new Point(0,0);
         (this._controllerItemsCompleted.view as ViewScrollContainer).viewContainerItems.gap = new Point(0,7);
         (this._controllerItemsCompleted.view as ViewScrollContainer).viewContainerItems.additionalSize = new Point(0,4);
         this._controllerItemsNotCompleted = new ControllerScrollContainer(Debug.assertProperty(_asset,"viewScrollNotCompleted"),EScrollDirectionType.ESDT_VERTICAL);
         (this._controllerItemsNotCompleted.view as ViewScrollContainer).viewContainerItems.offset = new Point(0,0);
         (this._controllerItemsNotCompleted.view as ViewScrollContainer).viewContainerItems.gap = new Point(0,7);
         (this._controllerItemsNotCompleted.view as ViewScrollContainer).viewContainerItems.additionalSize = new Point(0,4);
         this._viewTitle = new ViewTitleAutosized(this,Debug.assertProperty(_asset,"viewTitle"));
         this._viewTitle.text = I18n.getUpper(EStringType.EST_DIALOG_COLLECTIONS_TITLE);
         this._viewTabs = new ViewTabs(this);
         _asset.addChild(this._viewTabs.source);
         this._viewTabs.addTab(I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_ACTIVE));
         this._viewTabs.addTab(I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_COMPLETED));
         this._viewTabs.source.x = 73;
         this._viewTabs.source.y = 49;
         this.initItems();
         this.onTabChanged();
         super.onAssetCreationComplete();
      }
      
      private function onFishDataUpdated(param1:ServerResp) : void
      {
         _loadingIndicator.stop();
         super.show();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            _loc3_ = this._viewTabs.items.indexOf(param1);
            if(_loc3_ != ConstantsBase.INDEX_NONE)
            {
               if(this._viewTabs.tabActiveIndex != _loc3_)
               {
                  this._viewTabs.tabActiveIndex = _loc3_;
                  this.onTabChanged();
               }
            }
         }
         return _loc4_;
      }
      
      private function onTabChanged() : void
      {
         this._controllerItemsNotCompleted.view.source.visible = this._viewTabs.tabActiveIndex == 0;
         this._controllerItemsCompleted.view.source.visible = this._viewTabs.tabActiveIndex == 1;
      }
      
      private function init() : void
      {
         this._managerCollections = GameSwf.instance.managerCollections;
         this._itemsCompleted = [];
         this._itemsNotCompleted = [];
      }
      
      private function initItems() : void
      {
         var _loc1_:ControllerCollection = null;
         var _loc2_:CollectionBase = null;
         var _loc3_:Array = null;
         this._managerCollections.sortItems();
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         for each(_loc2_ in this._managerCollections.collectionsCompleted)
         {
            if(_loc2_.type != ECollectionType.ECT_FURNITURE_FACTORY)
            {
               _loc1_ = new ControllerCollection(_loc2_);
               this._itemsCompleted.push(_loc1_);
               _loc4_.push(_loc1_.view.source);
            }
         }
         this._controllerItemsCompleted.items = _loc4_;
         if(_loc4_.length == 0)
         {
            this._viewTabs.removeTab(1);
         }
         var _loc6_:Array = [];
         var _loc7_:Array = [];
         var _loc8_:Array = this._managerCollections.collectionsNotCompleted;
         for each(_loc2_ in _loc8_)
         {
            if(_loc2_.type != ECollectionType.ECT_FURNITURE_FACTORY)
            {
               if(_loc2_.isCanCollectOnCurrentLocation && !_loc2_.isLocked)
               {
                  _loc6_.push(_loc2_);
               }
               else
               {
                  _loc7_.push(_loc2_);
               }
            }
         }
         _loc6_.sort(CollectionBase.sortByType);
         _loc3_ = UtilsArray.mergeArrays(_loc6_,_loc7_);
         for each(_loc2_ in _loc3_)
         {
            _loc1_ = new ControllerCollection(_loc2_);
            this._itemsNotCompleted.push(_loc1_);
            _loc5_.push(_loc1_.view.source);
         }
         this._controllerItemsNotCompleted.items = _loc5_;
      }
      
      override public function show() : void
      {
         _loadingIndicator.start();
         GameSwf.instance.managerFishes.getFishdexData(this.onFishDataUpdated);
      }
      
      override public function close() : void
      {
         var _loc1_:IController = null;
         for each(_loc1_ in this._itemsCompleted)
         {
            _loc1_.cleanup();
         }
         for each(_loc1_ in this._itemsNotCompleted)
         {
            _loc1_.cleanup();
         }
         this._viewTitle.cleanup();
         this._viewTitle = null;
         this._viewTabs.cleanup();
         this._viewTabs = null;
         super.close();
      }
   }
}


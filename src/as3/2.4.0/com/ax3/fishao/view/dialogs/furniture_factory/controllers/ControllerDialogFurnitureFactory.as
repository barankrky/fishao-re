package com.ax3.fishao.view.dialogs.furniture_factory.controllers
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerScrollContainer;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewScrollContainer;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.EScrollDirectionType;
   import com.ax3.fishao.view.dialogs.collections.controllers.ControllerCollection;
   import com.ax3.fishao.view.dialogs.collections.model.CollectionBase;
   import com.ax3.fishao.view.dialogs.collections.model.ECollectionType;
   import com.ax3.fishao.view.dialogs.collections.model.ManagerCollections;
   import com.ax3.fishao.view.dialogs.furniture_factory.ManagerFurnitureFactory;
   import com.ax3.fishao.view.dialogs.furniture_factory.views.ViewDialogFurnitureFactory;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class ControllerDialogFurnitureFactory extends Controller
   {
      
      private var _view:ViewDialogFurnitureFactory;
      
      private var _controllerFurnitureFactoryReward:ControllerFurnitureFactoryReward;
      
      private var _managerFurnitureFactory:ManagerFurnitureFactory;
      
      private var _managerCollections:ManagerCollections;
      
      private var _controllerItemsCompleted:ControllerScrollContainer;
      
      private var _controllerItemsNotCompleted:ControllerScrollContainer;
      
      private var _itemsCompleted:Array;
      
      private var _itemsNotCompleted:Array;
      
      public function ControllerDialogFurnitureFactory(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogFurnitureFactory(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.buttonOpen:
                  this._managerFurnitureFactory.getReward();
                  this._view.buttonOpen.disable();
                  break;
               case this._view.buttonSkipTime:
                  if(app.user.fishcoins >= this._managerFurnitureFactory.skipTimePriceFishcoins)
                  {
                     this._managerFurnitureFactory.skipTime();
                     this._view.buttonSkipTime.disable();
                  }
                  else
                  {
                     GameSwf.instance.showBuyFishcoinsDialog();
                  }
                  break;
               default:
                  _loc3_ = this._view.viewTabs.items.indexOf(param1);
                  if(_loc3_ != ConstantsBase.INDEX_NONE)
                  {
                     if(this._view.viewTabs.tabActiveIndex != _loc3_)
                     {
                        this._view.viewTabs.tabActiveIndex = _loc3_;
                        this.onTabChanged();
                     }
                  }
                  else
                  {
                     Debug.assert(false);
                  }
            }
         }
         return _loc4_;
      }
      
      private function onTabChanged() : void
      {
         this._controllerItemsNotCompleted.view.source.visible = this._view.viewTabs.tabActiveLabel == I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_ACTIVE);
         this._controllerItemsCompleted.view.source.visible = this._view.viewTabs.tabActiveLabel == I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_COMPLETED);
      }
      
      private function init() : void
      {
         this._managerFurnitureFactory = GameSwf.instance.managerFurnitureFactory;
         this._managerCollections = GameSwf.instance.managerCollections;
         this._controllerFurnitureFactoryReward = new ControllerFurnitureFactoryReward(Debug.assertProperty(this._view.source,"viewReward"));
         this._controllerItemsCompleted = new ControllerScrollContainer(Debug.assertProperty(this._view.source,"viewScrollCompleted"),EScrollDirectionType.ESDT_VERTICAL);
         (this._controllerItemsCompleted.view as ViewScrollContainer).viewContainerItems.offset = new Point(0,0);
         (this._controllerItemsCompleted.view as ViewScrollContainer).viewContainerItems.gap = new Point(0,5);
         (this._controllerItemsCompleted.view as ViewScrollContainer).viewContainerItems.additionalSize = new Point(0,4);
         this._controllerItemsNotCompleted = new ControllerScrollContainer(Debug.assertProperty(this._view.source,"viewScrollNotCompleted"),EScrollDirectionType.ESDT_VERTICAL);
         (this._controllerItemsNotCompleted.view as ViewScrollContainer).viewContainerItems.offset = new Point(0,0);
         (this._controllerItemsNotCompleted.view as ViewScrollContainer).viewContainerItems.gap = new Point(0,5);
         (this._controllerItemsNotCompleted.view as ViewScrollContainer).viewContainerItems.additionalSize = new Point(0,4);
         this.updateButtons();
         this.updateLabels();
         this.initItems();
         this.onTabChanged();
      }
      
      private function initItems() : void
      {
         var _loc1_:ControllerCollection = null;
         var _loc2_:CollectionBase = null;
         this.tryCleanupCollections();
         this._itemsCompleted = [];
         this._itemsNotCompleted = [];
         this._managerCollections.sortItems();
         var _loc3_:Array = [];
         var _loc4_:Array = [];
         for each(_loc2_ in this._managerCollections.collectionsCompleted)
         {
            if(_loc2_.type == ECollectionType.ECT_FURNITURE_FACTORY)
            {
               _loc1_ = new ControllerCollection(_loc2_);
               this._itemsCompleted.push(_loc1_);
               _loc3_.push(_loc1_.view.source);
            }
         }
         this._controllerItemsCompleted.items = _loc3_;
         if(_loc3_.length == 0)
         {
            this._view.viewTabs.removeTab(1);
         }
         var _loc5_:Array = this._managerCollections.collectionsNotCompleted;
         for each(_loc2_ in _loc5_)
         {
            if(_loc2_.type == ECollectionType.ECT_FURNITURE_FACTORY)
            {
               _loc1_ = new ControllerCollection(_loc2_);
               this._itemsNotCompleted.push(_loc1_);
               _loc4_.push(_loc1_.view.source);
            }
         }
         this._controllerItemsNotCompleted.items = _loc4_;
         if(_loc4_.length == 0)
         {
            this._view.viewTabs.removeTab(0);
         }
      }
      
      private function updateButtons() : void
      {
         this._view.buttonOpen.visible = this._managerFurnitureFactory.rewardTimeLeft == 0;
         this._view.buttonSkipTime.visible = this._managerFurnitureFactory.rewardTimeLeft > 0;
         this._view.buttonSkipTime.coins = this._managerFurnitureFactory.skipTimePriceFishcoins;
         if(this._view.buttonOpen.visible)
         {
            this._view.buttonOpen.enable();
         }
         else
         {
            this._view.buttonOpen.disable();
         }
         if(this._view.buttonSkipTime.visible)
         {
            this._view.buttonSkipTime.enable();
         }
         else
         {
            this._view.buttonSkipTime.disable();
         }
      }
      
      private function updateLabels() : void
      {
         var _loc1_:String = null;
         var _loc2_:Boolean = this._managerFurnitureFactory.rewardTimeLeft == 0;
         if(_loc2_)
         {
            _loc1_ = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_NPC_MESSAGE_OPEN);
         }
         else
         {
            _loc1_ = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_NPC_MESSAGE_SKIP_TIME);
            _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_PRICE,this._managerFurnitureFactory.skipTimePriceFishcoins);
         }
         this._view.npcMessage = _loc1_;
      }
      
      private function moveToItemCollection() : void
      {
         var _loc1_:ControllerCollection = null;
         var _loc2_:int = 0;
         var _loc3_:int = this._managerFurnitureFactory.reward.item.resourceId;
         var _loc4_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < this._itemsNotCompleted.length)
         {
            _loc1_ = this._itemsNotCompleted[_loc2_];
            if(_loc1_.entity.itemsIDs.indexOf(_loc3_) != ConstantsBase.INDEX_NONE)
            {
               this._controllerItemsNotCompleted.scrollToItemIndex(_loc2_);
               _loc4_ = true;
               this._view.viewTabs.tabActiveLabel = I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_ACTIVE);
               this.onTabChanged();
               break;
            }
            _loc2_++;
         }
         if(_loc4_)
         {
            return;
         }
         _loc2_ = 0;
         while(_loc2_ < this._itemsCompleted.length)
         {
            _loc1_ = this._itemsCompleted[_loc2_];
            if(_loc1_.entity.itemsIDs.indexOf(_loc3_) != ConstantsBase.INDEX_NONE)
            {
               this._controllerItemsCompleted.scrollToItemIndex(_loc2_);
               this._view.viewTabs.tabActiveLabel = I18n.get(EStringType.EST_DIALOG_COLLECTIONS_TAB_COMPLETED);
               this.onTabChanged();
               break;
            }
            _loc2_++;
         }
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE:
               this.updateLabels();
               this.updateButtons();
               this._controllerFurnitureFactoryReward.update(param1);
               break;
            case EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_GOT:
               this._view.recreateTabs();
               this.initItems();
               this.onTabChanged();
               this.updateButtons();
               _loc2_ = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_NPC_MESSAGE_REWARD);
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_RESOURCE,this._managerFurnitureFactory.reward.translationItem);
               this._view.npcMessage = _loc2_;
               this.moveToItemCollection();
               this._controllerFurnitureFactoryReward.update(param1);
               break;
            case EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE:
               this.updateLabels();
               this.updateButtons();
               this._controllerFurnitureFactoryReward.update(param1);
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerDialogFurnitureFactory: " + param1);
         }
      }
      
      private function tryCleanupCollections() : void
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
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupCollections();
         this._managerFurnitureFactory = null;
         super.cleanup();
      }
   }
}


package com.ax3.fishao.tutorial.views.dialogs.inventory
{
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.model.info.InventoryItem;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import com.ax3.fishao.view.dialogs.inventory.InventoryTabInfo;
   import com.ax3.fishao.view.wrappers.impl.InventoryItemWrapper;
   import com.ax3.fishao.view.wrappers.impl.InventoryTabWrapper;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class DialogInventoryTutorial extends InventorySwfDialog
   {
      
      private var _isItemFocused:Boolean;
      
      private var _focusedItemType:ResourceType;
      
      private var _focusedItemID:int;
      
      private var _isButtonSelectFocused:Boolean;
      
      private var _isTabFocused:Boolean;
      
      private var _isButtonCloseFocused:Boolean;
      
      private var _focusedTabType:String;
      
      private var _tutorialHelpers:TutorialHelpers;
      
      public function DialogInventoryTutorial()
      {
         super();
         this._tutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         _canClosedByEsc = false;
      }
      
      override protected function onItemClick(param1:MouseEvent) : void
      {
         if(this._isButtonSelectFocused || this._isTabFocused || this._isButtonCloseFocused)
         {
            return;
         }
         super.onItemClick(param1);
         if(this._isItemFocused)
         {
            this._isItemFocused = false;
            this.tryIncrementTutorialStep();
         }
      }
      
      override protected function onSelectClick(param1:MouseEvent) : void
      {
         if(this._isItemFocused || this._isTabFocused || this._isButtonCloseFocused)
         {
            return;
         }
         super.onSelectClick(param1);
         if(this._isButtonSelectFocused)
         {
            this._isButtonSelectFocused = false;
            this.tryIncrementTutorialStep();
         }
      }
      
      override protected function onUseDecorationItem(param1:* = null) : void
      {
         var _loc2_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         if(_loc2_ == null || this._isItemFocused || this._isTabFocused || this._isButtonCloseFocused)
         {
            return;
         }
         super.onUseDecorationItem(param1);
         if(this._isButtonSelectFocused)
         {
            this._isButtonSelectFocused = false;
            this.tryIncrementTutorialStep();
         }
      }
      
      override protected function onTabClick(param1:MouseEvent) : void
      {
         if(this._isItemFocused || this._isButtonSelectFocused || this._isButtonCloseFocused)
         {
            return;
         }
         var _loc2_:InventoryTabWrapper = param1.currentTarget as InventoryTabWrapper;
         var _loc3_:InventoryTabWrapper = _tabMap[this._focusedTabType];
         if(this._isTabFocused)
         {
            if(_loc3_ == _loc2_)
            {
               super.onTabClick(param1);
               this._isTabFocused = false;
               this.tryIncrementTutorialStep();
            }
         }
         else
         {
            super.onTabClick(param1);
         }
      }
      
      override protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         if(this._isItemFocused || this._isButtonSelectFocused || this._isTabFocused)
         {
            return;
         }
         if(this._isButtonCloseFocused)
         {
            super.onButtonCloseClicked(param1);
            this._isButtonCloseFocused = false;
            this.tryIncrementTutorialStep();
         }
         else
         {
            super.onButtonCloseClicked(param1);
         }
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this.tryIncrementTutorialStep();
      }
      
      override protected function getInventoryTabInfo() : InventoryTabInfo
      {
         var _loc1_:InventoryTabInfo = super.getInventoryTabInfo();
         if(_loc1_.kind == ResourceType.BAIT.name)
         {
            _loc1_.selectedItemId = EResourceID.ER_BAIT_EMPTY;
         }
         else if(_loc1_.kind == ResourceType.ROD.name)
         {
            _loc1_.selectedItemId = EResourceID.ER_ROD_EMPTY;
         }
         return _loc1_;
      }
      
      public function setFocusForItem(param1:ResourceType, param2:int) : void
      {
         this._focusedItemType = param1;
         this._focusedItemID = param2;
         this._isItemFocused = true;
         this.trySetFocusOnItem();
      }
      
      private function trySetFocusOnItem() : void
      {
         var _loc1_:InventoryItemWrapper = null;
         var _loc2_:InventoryItemWrapper = null;
         var _loc3_:InventoryItem = null;
         var _loc4_:Point = null;
         if(!this._isItemFocused)
         {
            return;
         }
         for each(_loc2_ in _itemsViews)
         {
            _loc3_ = _loc2_.itemData;
            if(_loc3_.resourceType == this._focusedItemType)
            {
               if(this._focusedItemType == ResourceType.DECORATION && _loc3_.infoId == this._focusedItemID)
               {
                  _loc1_ = _loc2_;
                  break;
               }
               if(this._focusedItemType != ResourceType.DECORATION && _loc3_.id == this._focusedItemID)
               {
                  _loc1_ = _loc2_;
                  break;
               }
            }
         }
         if(_loc1_ != null)
         {
            this._tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc1_),60);
            _loc4_ = new Point(_loc1_.width / 2,-_loc1_.height / 2);
            this._tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc1_,_loc4_),0);
         }
      }
      
      public function setFocusOnButtonSelect() : void
      {
         this._tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(this.select),70);
         var _loc1_:Point = new Point(this.select.width / 2,-50);
         this._tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(this.select,_loc1_),0);
         this._isButtonSelectFocused = true;
      }
      
      public function setFocusOnTab(param1:String) : void
      {
         var _loc2_:InventoryTabWrapper = _tabMap[param1];
         if(_loc2_ == null)
         {
            return;
         }
         this._focusedTabType = param1;
         this._isTabFocused = true;
         this._tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_),70);
         var _loc3_:Point = new Point(_loc2_.width / 2,-50);
         this._tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc2_,_loc3_),0);
      }
      
      public function setFocusOnButtonClose() : void
      {
         if(closeBtn == null)
         {
            return;
         }
         this._isButtonCloseFocused = true;
         var _loc1_:Point = new Point(-this.width / 2,-this.height / 2);
         this._tutorialHelpers.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(this,_loc1_),TutorialHelperMask.getSizeForView(this));
         var _loc2_:Point = new Point(-40,80);
         this._tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(closeBtn,_loc2_),225);
      }
      
      private function tryIncrementTutorialStep() : void
      {
         var _loc1_:TutorialInfo = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc1_ != null)
         {
            _loc1_.onStepComplete();
         }
      }
   }
}


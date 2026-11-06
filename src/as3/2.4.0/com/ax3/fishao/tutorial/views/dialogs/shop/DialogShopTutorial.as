package com.ax3.fishao.tutorial.views.dialogs.shop
{
   import com.ax3.display.wrappers.impl.ShopListItemWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.dialogs.ShopSwfDialog;
   import com.ax3.fishao.model.vo.ShopItemVO;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class DialogShopTutorial extends ShopSwfDialog
   {
      
      private var _isTabFocused:Boolean;
      
      private var _focusedTabID:int;
      
      private var _isItemFocused:Boolean;
      
      private var _focusedItem:ShopItemVO;
      
      private var _tutorialHelpers:TutorialHelpers;
      
      public function DialogShopTutorial()
      {
         super();
         this._tutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         _canClosedByEsc = false;
      }
      
      override protected function onTabChanged(param1:Event) : void
      {
         if(this._isTabFocused)
         {
            if(tabs.currentTab == this._focusedTabID)
            {
               super.onTabChanged(param1);
               this._isTabFocused = false;
               this._focusedTabID = -1;
               GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
            }
         }
         else
         {
            super.onTabChanged(param1);
         }
      }
      
      override protected function buyHandler(param1:ShopItemVO, param2:int) : void
      {
         if(this._isItemFocused)
         {
            if(this._focusedItem == param1)
            {
               super.buyHandler(param1,param2);
               this._isItemFocused = false;
               this._focusedItem = null;
               close();
               GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
            }
         }
         else
         {
            super.buyHandler(param1,param2);
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
      
      public function setFocusOnTab(param1:int) : void
      {
         this._isTabFocused = true;
         this._focusedTabID = param1;
         var _loc2_:DisplayObject = tabs.getTabByIndex(param1);
         this._tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc2_,new Point(30,100)),180);
         this._tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_,new Point(-10,0)),50);
      }
      
      public function setFocusOnItem(param1:ResourceType, param2:int) : void
      {
         var _loc3_:ShopListItemWrapper = null;
         var _loc4_:ShopItemVO = null;
         var _loc5_:DisplayObject = null;
         this._isItemFocused = true;
         var _loc6_:Vector.<ShopItemVO> = _itemsByTabIndex[tabs.currentTab];
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_.length)
         {
            _loc4_ = _loc6_[_loc7_];
            if(_loc4_.type == param1 && _loc4_.id == param2)
            {
               this._focusedItem = _loc4_;
               _loc3_ = list.itemsViews[_loc7_] as ShopListItemWrapper;
               list.scrollToItemIndex(_loc7_);
               break;
            }
            _loc7_++;
         }
         if(_loc3_ != null)
         {
            _loc5_ = null;
            if(_loc3_.buyByFishcoinsButtonBig.enabled)
            {
               _loc5_ = _loc3_.buyByFishcoinsButtonBig;
            }
            else if(_loc3_.buyByFishcoinsButtonMedium.enabled)
            {
               _loc5_ = _loc3_.buyByFishcoinsButtonMedium;
            }
            if(_loc5_ != null)
            {
               this._tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc5_,new Point(_loc5_.width / 2,100)),180);
            }
            this._tutorialHelpers.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(_loc3_,new Point(-_loc3_.width / 2,-_loc3_.height / 2)),TutorialHelperMask.getSizeForView(_loc3_));
         }
      }
      
      public function buyResource(param1:int, param2:ResourceType, param3:int) : void
      {
         var _loc4_:ShopItemVO = null;
         addRods();
         addBaits();
         addExtra();
         var _loc5_:Vector.<ShopItemVO> = _itemsByTabIndex[param1];
         if(_loc5_ == null)
         {
            return;
         }
         for each(_loc4_ in _loc5_)
         {
            if(_loc4_.type == param2 && _loc4_.id == param3)
            {
               this.buyHandler(_loc4_,ResourceType.FISHCOINS.id);
               break;
            }
         }
      }
   }
}


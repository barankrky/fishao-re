package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.FishbucksIndicatorWrapper;
   import com.ax3.display.wrappers.impl.FishcoinsIndicatorWrapper;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.display.wrappers.impl.ShopListItemWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.model.vo.ShopItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.TabsWrapper;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class ShopSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public static const TAB_ID_RODS:int = 0;
      
      public static const TAB_ID_BAIT:int = 1;
      
      public static const TAB_ID_EXTRA:int = 2;
      
      public var title:DialogTitleWrapper;
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var fishcoinsIndicator:FishcoinsIndicatorWrapper;
      
      public var fishbucksIndicator:FishbucksIndicatorWrapper;
      
      public var tabs:TabsWrapper;
      
      public var list:ScrollListWrapper;
      
      private var _selectTabIdOnLoad:int = -1;
      
      private var _defaultTabIdOnLoad:int = 0;
      
      private var _selectItemIdOnLoad:int = -1;
      
      protected var _itemsByTabIndex:Dictionary = new Dictionary();
      
      public function ShopSwfDialogAsset()
      {
         this._itemsByTabIndex[TAB_ID_RODS] = new Vector.<ShopItemVO>();
         this._itemsByTabIndex[TAB_ID_BAIT] = new Vector.<ShopItemVO>();
         this._itemsByTabIndex[TAB_ID_EXTRA] = new Vector.<ShopItemVO>();
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "shopDialog.swf";
         super(_loc1_);
      }
      
      protected function onTabChanged(param1:Event) : void
      {
         this.showTab(this.tabs.currentTab);
      }
      
      public function setRodItems(param1:Vector.<ShopItemVO>) : void
      {
         this._itemsByTabIndex[TAB_ID_RODS] = param1;
         if(this.tabs != null && this.tabs.currentTab == TAB_ID_RODS)
         {
            this.showTab(TAB_ID_RODS);
         }
      }
      
      public function getAllRodItems() : Vector.<ShopItemVO>
      {
         return this._itemsByTabIndex[TAB_ID_RODS];
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var _loc1_:int = 0;
         this.closeButton.handler = this.onCloseClick;
         this.title.text = I18n.get("shopDialog_title");
         var _loc2_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,ShopListItemWrapper);
         _loc2_.process(this.list.itemTemplate);
         this.list.gap = 5;
         this.list.itemFactory = _loc2_;
         this.tabs.addTab(I18n.get("shopDialog_tab_rods"));
         this.tabs.addTab(I18n.get("shopDialog_tab_bait"));
         this.tabs.addTab(I18n.get("shopDialog_tab_extra"));
         this.tabs.addEventListener(TabsWrapper.TAB_CHANGED,this.onTabChanged);
         if(this._selectTabIdOnLoad == ConstantsBase.INDEX_NONE)
         {
            this.showTab(this._defaultTabIdOnLoad);
         }
         else
         {
            this.tabs.activateTab(this._selectTabIdOnLoad,false);
            this._selectTabIdOnLoad = ConstantsBase.INDEX_NONE;
            if(this._selectItemIdOnLoad != ConstantsBase.INDEX_NONE)
            {
               _loc1_ = this.findItemIdIndex(this._selectItemIdOnLoad);
               if(_loc1_ != ConstantsBase.INDEX_NONE)
               {
                  this.list.scrollToItemIndex(_loc1_);
                  this._selectItemIdOnLoad = ConstantsBase.INDEX_NONE;
               }
            }
         }
         super.onAssetCreationComplete();
      }
      
      private function findItemIdIndex(param1:int) : int
      {
         var _loc2_:Vector.<ShopItemVO> = this._itemsByTabIndex[this.tabs.currentTab];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(_loc2_[_loc3_].id == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return undefined;
      }
      
      public function selectTabIdOnLoad(param1:int) : void
      {
         this._selectTabIdOnLoad = param1;
      }
      
      public function selectItemIdOnLoad(param1:int) : void
      {
         this._selectItemIdOnLoad = param1;
      }
      
      public function showTab(param1:int) : void
      {
         var _loc2_:ShopItemVO = null;
         var _loc3_:ShopListItemWrapper = null;
         var _loc4_:Vector.<ShopItemVO> = this._itemsByTabIndex[param1];
         this.list.removeAll();
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = ShopListItemWrapper(this.list.add(_loc2_));
            _loc3_.buyHandler = this.buyHandler;
         }
      }
      
      protected function buyHandler(param1:ShopItemVO, param2:int) : void
      {
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         close();
      }
      
      public function setBaitItems(param1:Vector.<ShopItemVO>) : void
      {
         this._itemsByTabIndex[TAB_ID_BAIT] = param1;
      }
      
      public function setExtraItems(param1:Vector.<ShopItemVO>) : void
      {
         this._itemsByTabIndex[TAB_ID_EXTRA] = param1;
      }
   }
}


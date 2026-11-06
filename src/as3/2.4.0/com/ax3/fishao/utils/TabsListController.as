package com.ax3.fishao.utils
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.wrappers.ITabButtonWrapper;
   import com.ax3.fishao.view.wrappers.ITabPanelWrapper;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.InventoryTabWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel.ProfileUserInfoWrapper;
   import flash.events.Event;
   
   public class TabsListController
   {
      
      private var _tabButtonsList:Vector.<ITabButtonWrapper>;
      
      private var _tabPanelsList:Vector.<ITabPanelWrapper>;
      
      private var _tabsObject:Object;
      
      private var _deltaY:Number;
      
      private var _hidedButtons:Array = [];
      
      private var _currentTab:TabController;
      
      private var _selectedTab:TabController;
      
      public function TabsListController(param1:Vector.<ITabButtonWrapper>, param2:Vector.<ITabPanelWrapper>)
      {
         super();
         this._tabButtonsList = param1;
         this._tabPanelsList = param2;
         this.init();
      }
      
      public function get selectedTab() : TabController
      {
         return this._selectedTab;
      }
      
      public function set currentTab(param1:TabController) : void
      {
         if(this._currentTab == param1)
         {
            return;
         }
         this._currentTab = param1;
      }
      
      private function init() : void
      {
         var _loc1_:TabController = null;
         this._tabsObject = {};
         var _loc2_:Number = 0;
         while(_loc2_ < this._tabButtonsList.length)
         {
            _loc1_ = new TabController(this._tabButtonsList[_loc2_],this._tabPanelsList[_loc2_],this);
            this._tabsObject[this._tabButtonsList[_loc2_].name] = _loc1_;
            _loc2_++;
         }
         this._deltaY = InventoryTabWrapper(this._tabButtonsList[1]).y - InventoryTabWrapper(this._tabButtonsList[0]).y;
         var _loc3_:ProfileUserInfoWrapper = ProfileUserInfoWrapper(TabController(this._tabsObject[ProfileSwfDialog.USER_INFO_NAME]).tabPanel);
         Listeners.addEventListener(this,_loc3_,ProfileUserInfoWrapper.TABS_LIST_UPDATE,this.onTabsListUpdate);
      }
      
      private function onTabsListUpdate(param1:Event) : void
      {
         this.updateTabList();
      }
      
      public function showTab(param1:String, param2:String, param3:DialogTitleWrapper) : void
      {
         var _loc4_:String = null;
         var _loc5_:TabController = null;
         var _loc6_:Vector.<TabController> = new Vector.<TabController>();
         for(_loc4_ in this._tabsObject)
         {
            _loc5_ = TabController(this._tabsObject[_loc4_]);
            if(_loc4_ == param1)
            {
               this._selectedTab = _loc5_;
            }
            else
            {
               _loc6_.push(_loc5_);
            }
         }
         this._selectedTab.active(true,_loc6_,param2,param3);
         this.updateTabList();
      }
      
      private function updateTabList() : void
      {
         var _loc1_:Boolean = ProfileUserInfoWrapper(TabController(this._tabsObject[ProfileSwfDialog.USER_INFO_NAME]).tabPanel).showInventory;
         if(_loc1_)
         {
            this.setVisibleButton(ProfileSwfDialog.INVENTORY_NAME,true);
         }
         else
         {
            this.setVisibleButton(ProfileSwfDialog.INVENTORY_NAME,false);
         }
      }
      
      private function setVisibleButton(param1:String, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = this._hidedButtons.indexOf(param1) >= 0;
         var _loc5_:InventoryTabWrapper = InventoryTabWrapper(TabController(this._tabsObject[param1]).tabButton);
         if(param2 && _loc4_)
         {
            _loc5_.show();
            _loc3_ = this._deltaY;
            this._hidedButtons.splice(this._hidedButtons.indexOf(param1),1);
         }
         else
         {
            if(!(!param2 && !_loc4_))
            {
               return;
            }
            _loc5_.hide();
            _loc3_ = -this._deltaY;
            this._hidedButtons.push(param1);
         }
         var _loc6_:int = this._tabButtonsList.indexOf(_loc5_);
         var _loc7_:int = 0;
         while(_loc7_ < this._tabButtonsList.length)
         {
            if(_loc7_ > _loc6_)
            {
               if(InventoryTabWrapper(this._tabButtonsList[_loc7_]) != InventoryTabWrapper(TabController(this._tabsObject[ProfileSwfDialog.REPORT_NAME]).tabButton))
               {
                  InventoryTabWrapper(this._tabButtonsList[_loc7_]).y = InventoryTabWrapper(this._tabButtonsList[_loc7_]).y + _loc3_;
               }
            }
            _loc7_++;
         }
      }
   }
}


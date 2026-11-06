package com.ax3.fishao.utils
{
   import com.ax3.fishao.view.wrappers.ITabButtonWrapper;
   import com.ax3.fishao.view.wrappers.ITabPanelWrapper;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   
   public class TabController
   {
      
      private var _tabButton:ITabButtonWrapper;
      
      private var _tabPanel:ITabPanelWrapper;
      
      private var _tabsToDeactivate:Vector.<TabController>;
      
      private var _title:String;
      
      private var _titleField:DialogTitleWrapper;
      
      private var _parentController:TabsListController;
      
      public function TabController(param1:ITabButtonWrapper, param2:ITabPanelWrapper, param3:TabsListController)
      {
         super();
         this._tabButton = param1;
         this._tabPanel = param2;
         this._parentController = param3;
      }
      
      public function active(param1:Boolean, param2:Vector.<TabController>, param3:String, param4:DialogTitleWrapper) : void
      {
         if(param1)
         {
            this._tabsToDeactivate = param2;
            this._title = param3;
            this._titleField = param4;
            if(this._tabPanel.needUpdate)
            {
               this._tabPanel.update(this.showOnUpdate);
            }
            else
            {
               this.showOnUpdate(this._tabPanel);
            }
         }
         else
         {
            this._tabsToDeactivate = null;
            this._tabButton.active = false;
            this._tabPanel.visible = false;
         }
      }
      
      private function showOnUpdate(param1:ITabPanelWrapper) : void
      {
         var _loc2_:TabController = null;
         if(this._parentController.selectedTab != this)
         {
            return;
         }
         if(this._tabsToDeactivate != null)
         {
            for each(_loc2_ in this._tabsToDeactivate)
            {
               _loc2_.active(false,null,null,null);
            }
         }
         if(this._titleField != null && this._title != null)
         {
            this._titleField.text = this._title;
         }
         this._tabButton.active = true;
         this._tabPanel.visible = true;
         this._parentController.currentTab = this;
      }
      
      public function get tabPanel() : ITabPanelWrapper
      {
         return this._tabPanel;
      }
      
      public function get tabButton() : ITabButtonWrapper
      {
         return this._tabButton;
      }
   }
}


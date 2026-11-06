package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.DialogState;
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.ActiveReportsTabWrapper;
   import com.ax3.display.wrappers.HistoryReportsTabWrapper;
   import com.ax3.display.wrappers.UsersTabWrapper;
   import com.ax3.fishao.model.vo.ModeratorUserItemVO;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.DialogTitleWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownWithImage;
   import com.ax3.fishao.view.wrappers.impl.LanguageDropdownMediator;
   import com.ax3.fishao.view.wrappers.impl.TabsWrapper;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ModeratorSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var title:DialogTitleWrapper;
      
      public var closeButton:FishaoButtonWrapper;
      
      public var tabs:TabsWrapper;
      
      public var activeReportsTab:ActiveReportsTabWrapper;
      
      public var historyReportsTab:HistoryReportsTabWrapper;
      
      public var usersTab:UsersTabWrapper;
      
      public var settingsLanguageDropdown:FishaoDropdownWithImage;
      
      protected var _languageDropdownMediator:LanguageDropdownMediator;
      
      protected var _activeReportsTabIndex:int = -1;
      
      protected var _historyReportsTabIndex:int = -1;
      
      protected var _usersTabIndex:int = -1;
      
      private var _activeReports:Vector.<ReportItemVO>;
      
      private var _historyReports:Vector.<ReportItemVO>;
      
      private var _users:Vector.<ModeratorUserItemVO>;
      
      private var _historyPageIndex:int;
      
      private var _historyTotalPages:int;
      
      private var _usersPageIndex:int;
      
      private var _usersTotalPages:int;
      
      public function ModeratorSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "moderator_dialog.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.closeButton.handler = this.onCloseButtonClick;
         this._activeReportsTabIndex = this.tabs.addTab(I18n.get("activeReportsTab"));
         this._historyReportsTabIndex = this.tabs.addTab(I18n.get("historyReportsTab"));
         this._usersTabIndex = this.tabs.addTab(I18n.get("usersTab"));
         this._languageDropdownMediator = new LanguageDropdownMediator(GameSwf.instance.gameSettings["gameLanguage"]);
         this._languageDropdownMediator.config(this.settingsLanguageDropdown);
         this.tabs.addEventListener(TabsWrapper.TAB_CHANGED,this.onTabChange,false,0,true);
         this.title.text = I18n.getUpper("moderator_panel_title");
         super.onAssetCreationComplete();
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
      }
      
      private function onTabChange(param1:Event) : void
      {
         this.switchTab(this.tabs.currentTab);
      }
      
      protected function switchTab(param1:int, param2:Boolean = false) : void
      {
         this.activeReportsTab.visible = false;
         this.historyReportsTab.visible = false;
         this.usersTab.visible = false;
         switch(param1)
         {
            case this._activeReportsTabIndex:
               this.settingsLanguageDropdown.visible = true;
               this.activeReportsTab.visible = true;
               this.activeReportsTab.showActiveReports(this._activeReports);
               break;
            case this._historyReportsTabIndex:
               this.settingsLanguageDropdown.visible = false;
               this.historyReportsTab.visible = true;
               this.historyReportsTab.showReports(this._historyReports,this._historyPageIndex,this._historyTotalPages);
               break;
            case this._usersTabIndex:
               this.settingsLanguageDropdown.visible = false;
               this.usersTab.visible = true;
               this.usersTab.showReports(this._users,this._usersPageIndex,this._usersTotalPages);
         }
      }
      
      public function setActiveReports(param1:Vector.<ReportItemVO>) : void
      {
         this._activeReports = param1;
         if(_state == DialogState.READY)
         {
            if(this.tabs.currentTab == this._activeReportsTabIndex)
            {
               this.activeReportsTab.showActiveReports(this._activeReports);
            }
         }
      }
      
      public function setHistoryReports(param1:Vector.<ReportItemVO>, param2:int, param3:int) : void
      {
         this._historyReports = param1;
         this._historyPageIndex = param2;
         this._historyTotalPages = param3;
         if(_state == DialogState.READY)
         {
            if(this.tabs.currentTab == this._historyReportsTabIndex)
            {
               this.historyReportsTab.showReports(this._historyReports,this._historyPageIndex,this._historyTotalPages);
            }
         }
      }
      
      public function setUsers(param1:Vector.<ModeratorUserItemVO>, param2:int, param3:int) : void
      {
         this._users = param1;
         this._usersPageIndex = param2;
         this._usersTotalPages = param3;
         if(_state == DialogState.READY)
         {
            if(this.tabs.currentTab == this._usersTabIndex)
            {
               this.usersTab.showReports(this._users,this._usersPageIndex,this._usersTotalPages);
            }
         }
      }
   }
}


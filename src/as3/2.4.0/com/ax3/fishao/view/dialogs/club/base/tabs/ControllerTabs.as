package com.ax3.fishao.view.dialogs.club.base.tabs
{
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.Dictionary;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.get_tabs_data.ResponseClubsGetTabsData;
   import protocol.api.clubs.page.EClubPageType;
   
   public class ControllerTabs extends Controller
   {
      
      private var _view:ViewTabs;
      
      private var _tabsTypes:Array;
      
      private var _tabsMap:Dictionary;
      
      private var _pagesMap:Dictionary;
      
      private var _entity:ClubInfo;
      
      private var _currentPageType:String;
      
      private var _managerClubs:ManagerClubs;
      
      public function ControllerTabs(param1:Array, param2:DisplayObjectContainer, param3:ClubInfo)
      {
         this._tabsTypes = param1;
         this._entity = param3;
         this._view = new ViewTabs(this,param2);
         super(this._view);
         this.init();
      }
      
      public function set pagesMap(param1:Dictionary) : void
      {
         this._pagesMap = param1;
      }
      
      public function onTabClicked(param1:String) : void
      {
         var _loc6_:ControllerClubPage = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:ControllerClubPage = null;
         var _loc5_:ControllerTab = null;
         _loc6_ = null;
         var _loc7_:DisplayObject = null;
         if(this._currentPageType != null)
         {
            _loc4_ = this._pagesMap[this._currentPageType];
            _loc4_.onPageClosed();
         }
         for(_loc2_ in this._tabsMap)
         {
            _loc5_ = this._tabsMap[_loc2_];
            _loc5_.isActive = _loc5_.type == param1;
         }
         for(_loc3_ in this._pagesMap)
         {
            _loc6_ = this._pagesMap[_loc3_];
            _loc7_ = _loc6_.view.source;
            if(param1 == _loc3_)
            {
               _loc7_.visible = true;
               _loc6_.loadData();
            }
            else
            {
               _loc7_.visible = false;
            }
         }
         if(param1 == EClubPageType.ECPT_INFO)
         {
            this._view.title = this._entity.name;
         }
         else
         {
            this._view.pageType = param1;
         }
         var _loc8_:Boolean = this._entity != null && this._managerClubs.isUserInClubWithID(this._entity.ID);
         if(_loc8_)
         {
            this._managerClubs.loadDataForTabsPages(this._entity.ID,Preloader.waitForResponse(this.onTabsDataReceived));
         }
         else
         {
            this.updateTabsNotifications({});
         }
         this._currentPageType = param1;
         this.tryUpdatePageInfo();
      }
      
      private function onTabsDataReceived(param1:ServerResp) : void
      {
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetTabsData = param1 as ResponseClubsGetTabsData;
         this.updateTabsNotifications(_loc2_.tabsData);
      }
      
      private function init() : void
      {
         var _loc1_:String = null;
         var _loc2_:ControllerTab = null;
         this._managerClubs = GameSwf.instance.managerClubs;
         this._tabsMap = new Dictionary(true);
         var _loc3_:Array = [];
         for each(_loc1_ in this._tabsTypes)
         {
            _loc2_ = new ControllerTab(this,_loc1_);
            _loc2_.isEnabled = true;
            this._tabsMap[_loc1_] = _loc2_;
            _loc3_.push(_loc2_.view);
         }
         this._view.tabsViews = _loc3_;
         this.tryUpdatePageInfo();
      }
      
      private function updateTabsNotifications(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:ControllerTab = null;
         for(_loc2_ in this._tabsMap)
         {
            _loc3_ = int(int(param1[_loc2_]) || 0);
            _loc4_ = this._tabsMap[_loc2_];
            _loc4_.notifications = _loc3_;
         }
      }
      
      private function tryUpdatePageInfo() : void
      {
         if(this._entity == null)
         {
            return;
         }
         var _loc1_:ControllerTab = this._tabsMap[EClubPageType.ECPT_INFO];
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.showEmblem(this._entity.emblemID);
      }
      
      public function selectTab(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = this._tabsTypes[0];
         }
         this.onTabClicked(param1);
      }
   }
}


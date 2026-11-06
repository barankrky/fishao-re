package com.ax3.fishao.view.dialogs
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.display.dialogs.ModeratorActionSwfDialog;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.TabsListController;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.ITabButtonWrapper;
   import com.ax3.fishao.view.wrappers.ITabPanelWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ProfileSwfDialog extends ProfileSwfDialogAsset
   {
      
      private static const DIALOG_HEIGHT:Number = 570;
      
      private static const DIALOG_WIDTH:Number = 790;
      
      public static const USER_INFO_NAME:String = "userInfoTab";
      
      public static const FISHES_NAME:String = "fishesTab";
      
      public static const PRIZES_NAME:String = "prizesTab";
      
      public static const INVENTORY_NAME:String = "inventoryTab";
      
      public static const REPORT_NAME:String = "reportTab";
      
      public static const USER_INFO_CAPTION:String = "userInfoLabel";
      
      public static const FISHES_CAPTION:String = "fishesLabel";
      
      public static const PRIZES_CAPTION:String = "prizesLabel";
      
      public static const INVENTORY_CAPTION:String = "inventoryLabel";
      
      public static const REPORT_CAPTION:String = "reportsLabel";
      
      private static const TABS_NAMES_LIST:Vector.<String> = new <String>[USER_INFO_NAME,FISHES_NAME,PRIZES_NAME,INVENTORY_NAME,REPORT_NAME];
      
      private static const TABS_CAPTIONS_LIST:Vector.<String> = new <String>[USER_INFO_CAPTION,FISHES_CAPTION,PRIZES_CAPTION,INVENTORY_CAPTION,REPORT_CAPTION];
      
      public static var USER_INFO_DATA_LOADED_COMPLETE:String = "userInfoDataLoadedComplete";
      
      private var _tabsController:TabsListController;
      
      private var _login:String;
      
      private var _isNeedToShow:Boolean = false;
      
      private var _tabToOpen:String;
      
      public function ProfileSwfDialog()
      {
         super();
         this._login = "";
      }
      
      protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onAssetLoadingComplete(param1:DisplayObjectContainer) : void
      {
         super.onAssetLoadingComplete(param1);
         _isLoaded = true;
         _asset.visible = this._isNeedToShow;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         closeBtn.handler = this.onButtonCloseClicked;
         referralsTab.parent.removeChild(referralsTab);
         referralsPanel.parent.removeChild(referralsPanel);
         var _loc1_:Vector.<ITabButtonWrapper> = new <ITabButtonWrapper>[userInfoTab,fishesTab,prizesTab,inventoryTab,reportTab];
         var _loc2_:Vector.<ITabPanelWrapper> = new <ITabPanelWrapper>[userInfoPanel,fishesPanel,prizesPanel,inventoryPanel,reportPanel];
         var _loc3_:Number = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc1_[_loc3_].init(I18n.get(TABS_CAPTIONS_LIST[_loc3_]),tabUpLayer,tabDownLayer,TABS_NAMES_LIST[_loc3_]);
            _loc1_[_loc3_].addEventListener(MouseEvent.CLICK,this.onTabClick);
            _loc3_++;
         }
         this._tabsController = new TabsListController(_loc1_,_loc2_);
         if(this._login != "")
         {
            this.initData(this._login,this._tabToOpen);
         }
         reportPanel.banButton.handler = this.onBanButtonClick;
         Listeners.addEventListener(this,userInfoPanel,USER_INFO_DATA_LOADED_COMPLETE,this.onUserInfoDataLoadedComplete);
      }
      
      private function onUserInfoDataLoadedComplete(param1:Event) : void
      {
         if(_isLoaded)
         {
            _asset.visible = true;
         }
         else
         {
            this._isNeedToShow = true;
         }
      }
      
      private function onBanButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:ModeratorActionSwfDialog = app.dialogFactory.getModeratorActionSwfDialog();
         var _loc3_:ReportItemVO = new ReportItemVO();
         _loc3_.abuserUsername = this._login;
         _loc2_.showReport(_loc3_);
      }
      
      public function initData(param1:String, param2:String = "userInfoTab") : void
      {
         this._login = param1;
         this._tabToOpen = param2;
         if(isCreated())
         {
            userInfoPanel.login = param1;
            fishesPanel.login = param1;
            prizesPanel.login = param1;
            inventoryPanel.login = param1;
            reportPanel.login = param1;
            this.showTab(ProfileSwfDialog.USER_INFO_NAME);
            this.showTab(this._tabToOpen);
         }
      }
      
      private function onTabClick(param1:MouseEvent) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_049_UI_Switch_tab);
         this.showTab(param1.currentTarget.name);
      }
      
      private function showTab(param1:String) : void
      {
         this._tabsController.showTab(param1,I18n.getUpper(TABS_CAPTIONS_LIST[TABS_NAMES_LIST.indexOf(param1)]),title);
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override public function get height() : Number
      {
         return DIALOG_HEIGHT;
      }
      
      override public function get width() : Number
      {
         return DIALOG_WIDTH;
      }
      
      override public function activate() : void
      {
         super.activate();
         reportPanel.banButton.visible = app.user.isModerator;
         reportTab.visible = app.user.username != this._login;
      }
   }
}


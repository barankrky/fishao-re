package com.ax3.fishao.display
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.states.GuiState;
   import com.ax3.fishao.view.wrappers.impl.ChatButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.ChatPanelWrapper;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   
   public class MainMenuWrapper implements IAssetWrapper
   {
      
      private static var globalInstanceId:int = 0;
      
      public var mapIcon:MainMenuIconWrapper;
      
      public var shopIcon:MainMenuIconWrapper;
      
      public var inventoryIcon:MainMenuIconWrapper;
      
      public var fishdexIcon:MainMenuIconWrapper;
      
      public var tournamentIcon:MainMenuIconWrapper;
      
      public var communicationIcon:CommunicationIconWrapper;
      
      public var rankingsIcon:MainMenuIconWrapper;
      
      public var exitIcon:MainMenuIconWrapper;
      
      public var chatButton:ChatButtonWrapper;
      
      public var chatPanel:ChatPanelWrapper;
      
      private var _asset:DisplayObjectContainer;
      
      public var isTournament:Boolean = false;
      
      private var instanceId:int;
      
      public function MainMenuWrapper()
      {
         super();
         this.instanceId = globalInstanceId++;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this.mapIcon = new MainMenuIconWrapper();
         this.mapIcon.tooltipConfig = {"text":I18n.get("main_menu_mapIcon")};
         this.shopIcon = new MainMenuIconWrapper();
         this.shopIcon.tooltipConfig = {"text":I18n.get("main_menu_shopIcon")};
         this.inventoryIcon = new MainMenuIconWrapper();
         this.inventoryIcon.tooltipConfig = {"text":I18n.get("main_menu_inventoryIcon")};
         this.fishdexIcon = new MainMenuIconWrapper();
         this.fishdexIcon.tooltipConfig = {"text":I18n.get("main_menu_fishdexIcon")};
         this.tournamentIcon = new MainMenuIconWrapper();
         this.tournamentIcon.tooltipConfig = {"text":I18n.get("main_menu_tournamentIcon")};
         this.rankingsIcon = new MainMenuIconWrapper();
         this.rankingsIcon.tooltipConfig = {"text":I18n.get("main_menu_rankingsIcon")};
         this.communicationIcon = new CommunicationIconWrapper();
         this.communicationIcon.tooltipConfig = {"text":I18n.get("main_menu_communicationIcon")};
         this.exitIcon = new MainMenuIconWrapper();
         this.exitIcon.tooltipConfig = {"text":I18n.get("main_menu_exitIcon")};
         this.chatPanel = new ChatPanelWrapper();
         this.chatPanel.addEventListener(FocusEvent.FOCUS_OUT,this.onChatFocusOut);
         this.chatButton = new ChatButtonWrapper(MovieClip(this._asset.getChildByName("chatButton")),this.showChat);
         this.chatPanel.process(this._asset.getChildByName("chatPanel"));
         this.mapIcon.process(this._asset.getChildByName("mapIcon"));
         this.shopIcon.process(this._asset.getChildByName("shopIcon"));
         this.inventoryIcon.process(this._asset.getChildByName("inventoryIcon"));
         this.fishdexIcon.process(this._asset.getChildByName("fishdexIcon"));
         this.tournamentIcon.process(this._asset.getChildByName("tournamentIcon"));
         this.communicationIcon.process(this._asset.getChildByName("communicationIcon"));
         this.rankingsIcon.process(this._asset.getChildByName("rankingsIcon"));
         this.exitIcon.process(this._asset.getChildByName("exitIcon"));
         this._asset.getChildByName("inviteIcon").visible = false;
         this.exitIcon.visible = true;
         this._asset.getChildByName("menuBackground").addEventListener(MouseEvent.CLICK,this.onMouseClick);
         this.chatButton.show();
      }
      
      private function onMouseClick(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function onChatFocusOut(param1:FocusEvent) : void
      {
         setTimeout(this.hideChatManual,200);
      }
      
      public function get width() : Number
      {
         return this._asset.width;
      }
      
      public function get height() : Number
      {
         return 96;
      }
      
      public function set x(param1:int) : void
      {
         this._asset.x = param1;
      }
      
      public function set y(param1:int) : void
      {
         this._asset.y = param1;
      }
      
      public function get x() : int
      {
         return this._asset.x;
      }
      
      public function get y() : int
      {
         return this._asset.y;
      }
      
      public function isShowedChat() : Boolean
      {
         return this.chatPanel.isShowed();
      }
      
      public function showChat(param1:MouseEvent = null) : void
      {
         var _loc2_:TutorialInfo = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc2_ != null)
         {
            if(!_loc2_.canChatWithPlayers)
            {
               return;
            }
            _loc2_.onChatShown();
         }
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         this.displayChat();
      }
      
      private function displayChat() : void
      {
         if(this.chatButton.enabled)
         {
            this.chatButton.hide();
            this.chatPanel.show();
         }
      }
      
      public function hideChatAuto() : String
      {
         if(this.chatPanel.closeAllowed || this.chatPanel.textField.text.length == 0 && app.user.inFishingProcess.value != true)
         {
            this.chatButton.show();
            this.chatPanel.hide(this.chatButton.enabled && this.chatButton.isShowed() == false);
         }
         return this.flushMessage();
      }
      
      public function hideChatManual() : String
      {
         if(this.chatPanel.closeAllowed)
         {
            this.chatButton.show();
            this.chatPanel.hide(this.chatButton.enabled && this.chatButton.isShowed() == false);
         }
         return this.flushMessage();
      }
      
      public function flushMessage() : String
      {
         return this.chatPanel.chatBlocked ? "" : this.chatPanel.flushMessage();
      }
      
      public function lock() : void
      {
         Cc.log(this + ".lock()");
         this.mapIcon.disable();
         this.inventoryIcon.disable();
         this.fishdexIcon.disable();
         if(app.user.inTalkWithNPC.value != true && app.user.inFishingProcess.value != true)
         {
            this.chatButton.disable();
         }
         this.shopIcon.disable();
         this.tournamentIcon.disable();
         this.communicationIcon.disable();
         this.rankingsIcon.disable();
         this.exitIcon.disable();
         if(this.chatPanel.closeAllowed)
         {
            this.hideChatAuto();
         }
      }
      
      public function unlock() : void
      {
         Cc.log(this.toString() + ".unlock()");
         this.mapIcon.enable();
         this.inventoryIcon.enable();
         this.fishdexIcon.enable();
         this.chatButton.enable();
         this.shopIcon.enable();
         if(this.isTournament == false && GameSwf.currentLocationDialog.locationModel.id != LocationConfig.PRIVATE_HOUSE.id && GameSwf.currentLocationDialog.locationModel.id != LocationConfig.FRIENDS_PRIVATE_HOUSE.id && GameSwf.currentLocationDialog.locationModel.id != LocationConfig.CLUB_AREA.id)
         {
            this.tournamentIcon.enable();
         }
         this.communicationIcon.enable();
         this.rankingsIcon.enable();
         this.exitIcon.enable();
      }
      
      public function isLocked() : Boolean
      {
         return !this.mapIcon.enabled;
      }
      
      public function toString() : String
      {
         return "MainMenuWrapper(instanceId=" + this.instanceId + ")";
      }
      
      public function restoreFromState(param1:GuiState) : void
      {
         this.chatPanel.restoreFromState(param1);
         if(param1.chatPanelShown)
         {
            this.chatButton.hide();
         }
         else
         {
            this.chatButton.show();
         }
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
   }
}


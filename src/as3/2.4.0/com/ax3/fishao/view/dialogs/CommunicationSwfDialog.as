package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.DialogState;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.FontManager;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.model.types.PrivateMessageType;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.wrappers.ChatLogBlockWrapper;
   import com.ax3.fishao.view.wrappers.FishcoinsLogBlockWrapper;
   import com.ax3.fishao.view.wrappers.ILogsBlockWrapper;
   import com.ax3.fishao.view.wrappers.ModLogBlockWrapper;
   import com.ax3.fishao.view.wrappers.TradeLogBlockWrapper;
   import com.ax3.fishao.view.wrappers.communication.CommunicateBlockWrapper;
   import com.ax3.fishao.view.wrappers.impl.CheckBoxState;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownListBaseItem;
   import com.ax3.fishao.view.wrappers.impl.TabsWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.Font;
   import flash.utils.getQualifiedClassName;
   import flash.utils.setTimeout;
   import protocol.sr.GetDataResp;
   import protocol.sr.PmHistoryResp;
   
   public class CommunicationSwfDialog extends CommunicationSwfDialogAsset
   {
      
      private const ITEMS_PER_PAGE:int = 10;
      
      private var _messagesTabId:int = -1;
      
      private var _logTabId:int = -1;
      
      private var _modLogTabId:int = -1;
      
      private var _currentPage:Object = {};
      
      private var _currentTabName:String = "message";
      
      private var _opponentUsername:String = "";
      
      private var _viewMessage:CommunicateBlockWrapper;
      
      private var _messageLineClass:Class;
      
      private var _maxPages:int = 0;
      
      private var _isInbox:Boolean = true;
      
      private var _currentLogHolder:MovieClip;
      
      private var _logsData:Array;
      
      private var _closeMenuAfterSend:Boolean = false;
      
      private var _targetUsername:String;
      
      private var _viewedByModerator:Boolean = false;
      
      private var _msgToOpenId:int;
      
      public function CommunicationSwfDialog()
      {
         super();
      }
      
      private function onClickCheckboxSelectAll(param1:MouseEvent) : void
      {
         var _loc2_:CommunicateBlockWrapper = null;
         var _loc3_:int = 0;
         while(_loc3_ < messagesContent.numChildren)
         {
            _loc2_ = messagesContent.getChildAt(_loc3_) as CommunicateBlockWrapper;
            if(_loc2_)
            {
               _loc2_.checkbox.state = checkboxSelectAll.isSelected ? CheckBoxState.SELECTED : CheckBoxState.UNSELECTED;
            }
            _loc3_++;
         }
         if(checkboxSelectAll.isSelected)
         {
            deleteButton.enable();
         }
         else
         {
            deleteButton.disable();
         }
      }
      
      private function onLogTypeChanged(param1:Event) : void
      {
         this._currentPage["logs"] = 1;
         this.redrawContent();
      }
      
      private function onMailboxChanged(param1:Event) : void
      {
         this._isInbox = listBoxes.displayValue == I18n.get("Inbox");
         senderHeader.text = this._isInbox ? I18n.get("Sender") : I18n.get("To");
         this._currentPage["message"] = 1;
         this.checkPaggingButtons();
         this.loadData();
      }
      
      public function closeMessage() : void
      {
         subjectField.text = "";
         messageField.text = "";
         this._opponentUsername = "";
         this._viewMessage = null;
         this.redrawContent();
      }
      
      private function onAcceptAsFriendButtonClick(param1:MouseEvent) : void
      {
         FishaoFscModelManager.pmFscExtension.deleteMessages([this._viewMessage.id],this._viewMessage.isInbox);
         FishaoFscModelManager.profileExtension.sendAcceptAsFriend(this._viewMessage.sender);
         this.closeMessage();
      }
      
      private function onDenyAsFriendButtonClick(param1:MouseEvent) : void
      {
         FishaoFscModelManager.pmFscExtension.deleteMessages([this._viewMessage.id],this._viewMessage.isInbox);
         FishaoFscModelManager.profileExtension.sendDenyAsFriend(this._viewMessage.sender);
         this.closeMessage();
      }
      
      private function onDenyAndBlockButtonClick(param1:MouseEvent) : void
      {
         FishaoFscModelManager.pmFscExtension.deleteMessages([this._viewMessage.id],this._viewMessage.isInbox);
         FishaoFscModelManager.profileExtension.sendDenyAndBlockAsFriend(this._viewMessage.sender);
         this.closeMessage();
      }
      
      private function onReplyButtonClick(param1:MouseEvent) : void
      {
         if(this._viewMessage != null)
         {
            this._opponentUsername = this._viewMessage.sender;
            this.redrawContent();
         }
      }
      
      private function onDeleteButtonClick(param1:MouseEvent) : void
      {
         FishaoFscModelManager.pmFscExtension.deleteMessages([this._viewMessage.id],this._viewMessage.isInbox);
         this._viewMessage = null;
         this.redrawContent();
      }
      
      private function onDeleteSelectedClick(param1:MouseEvent) : void
      {
         var _loc2_:CommunicateBlockWrapper = null;
         var _loc3_:Boolean = false;
         var _loc4_:Array = [];
         var _loc5_:int = 0;
         while(_loc5_ < messagesContent.numChildren)
         {
            _loc2_ = messagesContent.getChildAt(_loc5_) as CommunicateBlockWrapper;
            if(Boolean(_loc2_) && _loc2_.isSelected)
            {
               _loc4_.push(_loc2_.id);
               if(_loc2_.isNew)
               {
                  --app.user.unreadPMNumber;
               }
               _loc3_ = _loc2_.isInbox;
            }
            _loc5_++;
         }
         if(this._currentPage[this._currentTabName] > 0 && messagesContent.numChildren <= _loc4_.length)
         {
            this._currentPage[this._currentTabName] = Number(this._currentPage[this._currentTabName]) - 1;
         }
         FishaoFscModelManager.pmFscExtension.deleteMessages(_loc4_,_loc3_);
         this.redrawContent();
         deleteButton.disable();
      }
      
      private function onSendButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:MessageDialog = null;
         if(subjectField.text == "")
         {
            _loc2_ = new MessageDialog();
            _loc2_.closeOnOk = true;
            _loc2_.messageField.text = I18n.get("New_message_warning_fill_subject");
            _loc2_.show();
         }
         else if(messageField.text == "")
         {
            _loc2_ = new MessageDialog();
            _loc2_.closeOnOk = true;
            _loc2_.messageField.text = I18n.get("New_message_warning_fill_message");
            _loc2_.show();
         }
         else
         {
            FishaoFscModelManager.pmFscExtension.sendPrivateMessage(this._opponentUsername,subjectField.text,messageField.text);
            subjectField.text = "";
            messageField.text = "";
            this._opponentUsername = "";
            this.redrawContent();
            if(this._closeMenuAfterSend)
            {
               close();
            }
         }
      }
      
      private function onBackButtonClick(param1:MouseEvent) : void
      {
         this._opponentUsername = "";
         this._viewMessage = null;
         this.redrawContent();
      }
      
      private function onLeftPageClick(param1:MouseEvent) : void
      {
         this._currentPage[this._currentTabName] = Number(this._currentPage[this._currentTabName]) - 1;
         this.checkPaggingButtons();
         this.loadData();
         pagesTextField.text = this._currentPage[this._currentTabName] + " " + I18n.get("of") + " " + this._maxPages;
      }
      
      private function onLogsLeftPageClick(param1:MouseEvent) : void
      {
         this._currentPage[this._currentTabName] = Number(this._currentPage[this._currentTabName]) - 1;
         this.redrawContent();
      }
      
      private function onRightPageClick(param1:MouseEvent) : void
      {
         this._currentPage[this._currentTabName] = Number(this._currentPage[this._currentTabName]) + 1;
         this.checkPaggingButtons();
         this.loadData();
         pagesTextField.text = this._currentPage[this._currentTabName] + " " + I18n.get("of") + " " + this._maxPages;
      }
      
      private function onLogsRightPageClick(param1:MouseEvent) : void
      {
         this._currentPage[this._currentTabName] = Number(this._currentPage[this._currentTabName]) + 1;
         this.redrawContent();
      }
      
      private function onDataReceive(param1:PmHistoryResp) : void
      {
         var _loc2_:CommunicateBlockWrapper = null;
         var _loc3_:int = 0;
         if(messagesContent == null)
         {
            setTimeout(this.onDataReceive,100,param1);
            return;
         }
         if(!param1.data.hasOwnProperty("msgHistory"))
         {
            return;
         }
         var _loc4_:Array = JSON.parse(param1.data.msgHistory) as Array;
         var _loc5_:int = int(param1.data.msgHistoryTotal);
         var _loc6_:int = int(app.user.unreadPMNumber);
         if(_loc6_ > 0)
         {
            tabs.setTabTitle(this._messagesTabId,I18n.get("Messages_tab_title").replace(EStringTypeStubs.ESTS_COUNT,_loc6_));
         }
         else
         {
            tabs.setTabTitle(this._messagesTabId,I18n.get("Messages_tab_title").replace(/\(#COUNT#\)/,""));
         }
         this.maxPages = Math.ceil(_loc5_ / this.ITEMS_PER_PAGE);
         _loc4_.sortOn("secondsAgo",Array.NUMERIC);
         var _loc7_:int = int(_loc4_.length);
         while(messagesContent.numChildren > _loc7_)
         {
            _loc2_ = messagesContent.removeChildAt(messagesContent.numChildren - 1) as CommunicateBlockWrapper;
            if(_loc2_)
            {
               _loc2_.handler = null;
            }
         }
         _loc3_ = 0;
         while(_loc3_ < messagesContent.numChildren)
         {
            _loc2_ = messagesContent.getChildAt(_loc3_) as CommunicateBlockWrapper;
            if(_loc2_)
            {
               _loc2_.update(_loc4_[_loc3_].id,_loc4_[_loc3_].subject,this._isInbox ? _loc4_[_loc3_].from : _loc4_[_loc3_].to,_loc4_[_loc3_].body,_loc4_[_loc3_].secondsAgo,_loc4_[_loc3_],this._isInbox);
            }
            _loc3_++;
         }
         while(_loc3_ < _loc7_)
         {
            _loc2_ = new CommunicateBlockWrapper(this._messageLineClass);
            _loc2_.update(_loc4_[_loc3_].id,_loc4_[_loc3_].subject,this._isInbox ? _loc4_[_loc3_].from : _loc4_[_loc3_].to,_loc4_[_loc3_].body,_loc4_[_loc3_].secondsAgo,_loc4_[_loc3_],this._isInbox);
            _loc2_.y = (_loc2_.height + 3) * _loc3_;
            _loc2_.handler = this.onLineClick;
            _loc2_.checkbox.changeHandler = this.onMessageSelected;
            messagesContent.addChild(_loc2_);
            _loc3_++;
         }
         checkboxSelectAll.visible = _loc7_ != 0;
         checkboxSelectAll.state = CheckBoxState.UNSELECTED;
      }
      
      private function onLineClick(param1:MouseEvent) : void
      {
         this.fillViewMessage(DisplayObject(param1.target).parent.parent as CommunicateBlockWrapper);
         this.redrawContent();
      }
      
      private function onMessageSelected(param1:MouseEvent) : void
      {
         var _loc2_:int = messagesContent.numChildren;
         var _loc3_:int = this.getSelectedMessagesCount();
         if(_loc3_ > 0)
         {
            deleteButton.enable();
         }
         else
         {
            deleteButton.disable();
         }
         checkboxSelectAll.state = _loc3_ == _loc2_ ? CheckBoxState.SELECTED : CheckBoxState.UNSELECTED;
      }
      
      public function init(param1:String) : void
      {
         if(param1 != null)
         {
            this._targetUsername = param1;
         }
         else
         {
            this._targetUsername = app.user.username;
         }
         this._currentTabName = this._viewedByModerator ? "modLogs" : this._currentTabName;
         if(_state == DialogState.READY)
         {
            if(!this._viewedByModerator)
            {
               this.loadData();
            }
            else
            {
               this.redrawContent();
            }
         }
      }
      
      override protected function onAssetCreationComplete() : void
      {
         var fontClass:Class = null;
         var font:Font = null;
         var doingTypeFactory:SwfFactoryWrapper = null;
         super.onAssetCreationComplete();
         fontClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.font.newMsg");
         font = new fontClass();
         FontManager.IS_NEW_MESSAGE_FONT = font.fontName;
         fontClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.font.readedMsg");
         font = new fontClass();
         FontManager.IS_READED_MESSAGE_FONT = font.fontName;
         this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.ListLine");
         doingTypeFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,FishaoDropdownListBaseItem);
         doingTypeFactory.process(listBoxes.itemTemplate);
         listBoxes.setItemFactory(doingTypeFactory);
         listBoxes.create(new <String>[I18n.get("Inbox"),I18n.get("Outbox")]);
         listBoxes.text = I18n.get("Inbox");
         listBoxes.addEventListener(Event.CHANGE,this.onMailboxChanged);
         subjectHeader.text = I18n.get("Subject");
         senderHeader.text = this._isInbox ? I18n.get("Sender") : I18n.get("To");
         subjectField.maxChars = 120;
         dateHeader.text = I18n.get("Date");
         newMessageHeader.text = I18n.get("New_message_header");
         newMessageSubject.text = I18n.get("Subject") + ":";
         newMessageMessage.text = I18n.get("Message") + ":";
         checkboxSelectAll.changeHandler = this.onClickCheckboxSelectAll;
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         leftPageButton.handler = this.onLeftPageClick;
         rightPageButton.handler = this.onRightPageClick;
         logsLeftPageButton.handler = this.onLogsLeftPageClick;
         logsRightPageButton.handler = this.onLogsRightPageClick;
         modLogsLeftPageButton.handler = this.onLogsLeftPageClick;
         modLogsRightPageButton.handler = this.onLogsRightPageClick;
         deleteButton.label = I18n.getUpper("Delete_selected");
         backButton.label = I18n.getUpper("Back");
         sendButton.label = I18n.getUpper("Send");
         backButton.handler = this.onBackButtonClick;
         sendButton.handler = this.onSendButtonClick;
         deleteButton.handler = this.onDeleteSelectedClick;
         deleteButton.disable();
         viewBackButton.label = I18n.getUpper("Back");
         viewDeleteButton.label = I18n.getUpper("Delete_message");
         viewReplyButton.label = I18n.getUpper("Reply");
         viewBackButton.handler = this.onBackButtonClick;
         viewDeleteButton.handler = this.onDeleteButtonClick;
         viewReplyButton.handler = this.onReplyButtonClick;
         acceptAsFriendButton.handler = this.onAcceptAsFriendButtonClick;
         denyAsFriendButton.handler = this.onDenyAsFriendButtonClick;
         denyAndBlockButton.handler = this.onDenyAndBlockButtonClick;
         acceptAsFriendButton.label = I18n.get("acceptAsFriendButton");
         denyAsFriendButton.label = I18n.get("denyAsFriendButton");
         denyAndBlockButton.label = I18n.get("denyAndBlockButton");
         doingTypeFactory = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,FishaoDropdownListBaseItem);
         doingTypeFactory.process(logDropdown.itemTemplate);
         logDropdown.setItemFactory(doingTypeFactory);
         logDropdown.create(new <String>[I18n.get("dropdown_trade_logs"),I18n.get("dropdown_chat_logs"),I18n.get("dropdown_fishcoins_logs"),I18n.get("dropdown_fishbucks_logs")]);
         logDropdown.text = I18n.get("dropdown_trade_logs");
         logDropdown.addEventListener(Event.CHANGE,this.onLogTypeChanged);
         tradeLogDateHeader.text = I18n.get("tradeLogDateHeader");
         tradeLogWithHeader.text = I18n.get("tradeLogWithHeader");
         tradeLogItemTradedHeader.text = I18n.get("tradeLogItemTradedHeader");
         tradeLogItemReceivedHeader.text = I18n.get("tradeLogItemReceivedHeader");
         modLogDateHeader.text = I18n.get("modLogDateHeader");
         modLogModeratorHeader.text = I18n.get("modLogModeratorHeader");
         modLogTypeHeader.text = I18n.get("modLogTypeHeader");
         modLogReasonHeader.text = I18n.get("modLogReasonHeader");
         fishcoinsLogDateHeader.text = I18n.get("fishcoinsLogDateHeader");
         fishcoinsLogActionHeader.text = I18n.get("fishcoinsLogActionHeader");
         fishcoinsLogAmountHeader.text = I18n.get("fishcoinsLogAmountHeader");
         chatLogDateHeader.text = I18n.get("chatLogDateHeader");
         chatLogChatHeader.text = I18n.get("chatLogChatHeader");
         if(!this._viewedByModerator)
         {
            this._messagesTabId = tabs.addTab(I18n.get("Messages_tab_title").replace("#COUNT#",0));
         }
         else
         {
            this._modLogTabId = tabs.addTab(I18n.get("Mod_log_tab_title"));
         }
         this._logTabId = tabs.addTab(I18n.get("Log_tab_title"));
         this._currentPage["message"] = 1;
         this._currentPage["logs"] = 1;
         this._currentPage["modLogs"] = 1;
         this._currentTabName = this._viewedByModerator ? "modLogs" : "message";
         tabChildren = false;
         tabs.addEventListener(TabsWrapper.TAB_CHANGED,this.onTabChanged);
         this.redrawContent();
      }
      
      private function loadData() : void
      {
         var _loc1_:String = this._targetUsername;
         if(_loc1_ == null)
         {
            _loc1_ = app.user.username;
         }
         if(this._isInbox)
         {
            FishaoFscModelManager.pmFscExtension.getInboxMessages(this._currentPage[this._currentTabName],Preloader.waitForResponse(this.onDataReceive),_loc1_);
         }
         else
         {
            FishaoFscModelManager.pmFscExtension.getOutboxMessages(this._currentPage[this._currentTabName],Preloader.waitForResponse(this.onDataReceive),_loc1_);
         }
         this.redrawButtons();
      }
      
      private function redrawButtons() : void
      {
         deleteButton.visible = this.isMyMessages();
         sendButton.visible = this.isMyMessages();
      }
      
      private function isMyMessages() : Boolean
      {
         return this._targetUsername == app.user.username || this._targetUsername == null;
      }
      
      private function redrawContent(param1:Boolean = true) : void
      {
         messagesList.visible = false;
         newMessage.visible = false;
         messageView.visible = false;
         modLogs.visible = false;
         logs.visible = false;
         switch(this._currentTabName)
         {
            case "modLogs":
               if(tabs.currentTab != this._modLogTabId)
               {
                  tabs.activateTab(this._modLogTabId);
               }
               modLogs.visible = true;
               logs.visible = false;
               chatLogs.visible = false;
               tradeLogs.visible = false;
               fishcoinsLogs.visible = false;
               this._currentLogHolder = modLogHolder;
               this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.ModLine");
               FishaoFscModelManager.logsFscExtension.getUserModLogs(this._currentPage[this._currentTabName],Preloader.waitForResponse(this.onModLogsReceived),this._targetUsername);
               break;
            case "logs":
               if(tabs.currentTab != this._logTabId)
               {
                  tabs.activateTab(this._logTabId);
               }
               logs.visible = true;
               modLogs.visible = false;
               chatLogs.visible = false;
               tradeLogs.visible = false;
               fishcoinsLogs.visible = false;
               switch(logDropdown.displayValue)
               {
                  case I18n.get("dropdown_trade_logs"):
                     this._currentLogHolder = tradeHolder;
                     this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.TradeLine");
                     tradeLogs.visible = true;
                     FishaoFscModelManager.logsFscExtension.getTradeLogs(this._currentPage[this._currentTabName],this.onLogsReceived,this._targetUsername);
                     break;
                  case I18n.get("dropdown_chat_logs"):
                     this._currentLogHolder = chatHolder;
                     this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.ChatLine");
                     chatLogs.visible = true;
                     FishaoFscModelManager.logsFscExtension.getChatLogs(this._currentPage[this._currentTabName],this.onLogsReceived,this._targetUsername);
                     break;
                  case I18n.get("dropdown_fishcoins_logs"):
                     this._currentLogHolder = fishcoinsHolder;
                     this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.FishcoinsLine");
                     fishcoinsLogs.visible = true;
                     FishaoFscModelManager.logsFscExtension.getFishcoinsLogs(this._currentPage[this._currentTabName],this.onLogsReceived,this._targetUsername);
                     break;
                  case I18n.get("dropdown_fishbucks_logs"):
                     this._currentLogHolder = fishcoinsHolder;
                     this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.FishcoinsLine");
                     fishcoinsLogs.visible = true;
                     FishaoFscModelManager.logsFscExtension.getFishbuckLogs(this._currentPage[this._currentTabName],this.onLogsReceived,this._targetUsername);
               }
               break;
            case "message":
               if(tabs.currentTab != this._messagesTabId)
               {
                  tabs.activateTab(this._messagesTabId,param1);
               }
               this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.ListLine");
               if(this._opponentUsername != "")
               {
                  messageField.text = "";
                  if(this._viewMessage != null)
                  {
                     subjectField.text = "RE: " + this._viewMessage.subject.replace(/^RE:[ ]*/,"");
                     newMessageHeader.text = I18n.get("Reply_message_header").replace("#USERNAME#",this._opponentUsername);
                  }
                  else
                  {
                     subjectField.text = "";
                     newMessageHeader.text = I18n.get("New_message_header").replace("#USERNAME#",this._opponentUsername);
                  }
                  newMessage.visible = true;
               }
               else if(this._viewMessage != null)
               {
                  messageView.visible = true;
                  if(this._viewMessage.isNew)
                  {
                     this._viewMessage.isNew = false;
                     FishaoFscModelManager.pmFscExtension.setAsReadMessage(this._viewMessage.id);
                     --app.user.unreadPMNumber;
                  }
               }
               else
               {
                  messagesList.visible = true;
                  this.loadData();
               }
         }
      }
      
      private function onModLogsReceived(param1:GetDataResp) : void
      {
         this._logsData = [];
         if(param1.data.hasOwnProperty("logsMod"))
         {
            this._logsData = JSON.parse(param1.data.logsMod) as Array;
         }
         this.maxPages = parseInt(param1.data.maxPageId) + 1;
         this._currentPage[this._currentTabName] = 1 + int(param1.data.pageId);
         this.redrawLogs();
      }
      
      private function onLogsReceived(param1:GetDataResp) : void
      {
         this._logsData = [];
         if(param1.data.hasOwnProperty("logsChat"))
         {
            this._logsData = JSON.parse(param1.data.logsChat) as Array;
         }
         else if(param1.data.hasOwnProperty("logsTrade"))
         {
            this._logsData = JSON.parse(param1.data.logsTrade) as Array;
         }
         else if(param1.data.hasOwnProperty("logsFishcoins"))
         {
            this._logsData = JSON.parse(param1.data.logsFishcoins) as Array;
         }
         else if(param1.data.hasOwnProperty("logsFishbuck"))
         {
            this._logsData = JSON.parse(param1.data.logsFishbuck) as Array;
         }
         this.maxPages = parseInt(param1.data.maxPageId) + 1;
         this._currentPage[this._currentTabName] = 1 + int(param1.data.pageId);
         this.redrawLogs();
      }
      
      private function redrawLogs() : void
      {
         var _loc1_:ILogsBlockWrapper = null;
         if(this._currentLogHolder == null)
         {
            setTimeout(this.redrawLogs,100);
            return;
         }
         this.checkPaggingButtons();
         while(this._currentLogHolder.numChildren > 0)
         {
            this._currentLogHolder.removeChildAt(0);
         }
         var _loc2_:int = 0;
         for(; _loc2_ < this._logsData.length; _loc2_++)
         {
            switch(getQualifiedClassName(this._messageLineClass))
            {
               case "assets.common.communication::TradeLine":
                  _loc1_ = new TradeLogBlockWrapper(this._messageLineClass);
                  break;
               case "assets.common.communication::ChatLine":
                  _loc1_ = new ChatLogBlockWrapper(this._messageLineClass);
                  break;
               case "assets.common.communication::FishcoinsLine":
                  _loc1_ = new FishcoinsLogBlockWrapper(this._messageLineClass);
                  break;
               case "assets.common.communication::ModLine":
                  _loc1_ = new ModLogBlockWrapper(this._messageLineClass);
                  break;
               default:
                  continue;
            }
            _loc1_.update(this._logsData[_loc2_]);
            DisplayObject(_loc1_).y = _loc2_ * 50;
            this._currentLogHolder.addChild(DisplayObject(_loc1_));
         }
      }
      
      private function set maxPages(param1:int) : void
      {
         this._maxPages = param1;
         if(this._maxPages <= 0)
         {
            this._maxPages = 1;
         }
         if(this._currentPage[this._currentTabName] > this._maxPages)
         {
            this._currentPage[this._currentTabName] = this._maxPages;
         }
         this.checkPaggingButtons();
      }
      
      private function checkPaggingButtons() : void
      {
         pagesTextField.text = this._currentPage[this._currentTabName] + " " + I18n.get("of") + " " + this._maxPages;
         logsPagesTextField.text = this._currentPage[this._currentTabName] + " " + I18n.get("of") + " " + this._maxPages;
         modLogsPagesTextField.text = this._currentPage[this._currentTabName] + " " + I18n.get("of") + " " + this._maxPages;
         if(this._currentPage[this._currentTabName] <= 0)
         {
            this._currentPage[this._currentTabName] = 1;
         }
         if(this._currentPage[this._currentTabName] == 1)
         {
            leftPageButton.disable();
            logsLeftPageButton.disable();
            modLogsLeftPageButton.disable();
         }
         else
         {
            leftPageButton.enable();
            logsLeftPageButton.enable();
            modLogsLeftPageButton.enable();
         }
         if(this._currentPage[this._currentTabName] > this._maxPages)
         {
            this._currentPage[this._currentTabName] = this._maxPages;
         }
         if(this._currentPage[this._currentTabName] == this._maxPages)
         {
            rightPageButton.disable();
            logsRightPageButton.disable();
            modLogsRightPageButton.disable();
         }
         else
         {
            rightPageButton.enable();
            logsRightPageButton.enable();
            modLogsRightPageButton.enable();
         }
      }
      
      private function fillViewMessage(param1:CommunicateBlockWrapper) : void
      {
         this._viewMessage = param1;
         if(this._viewMessage)
         {
            viewMessageSubject.text = this._viewMessage.subject;
            viewMessageMessage.htmlText = this._viewMessage.body;
            viewMessageDate.text = I18n.formatFullTimestamp(this._viewMessage.timeAgoSec,true);
            if(this._viewMessage.type == PrivateMessageType.FRIENDSHIP && this._viewMessage.originalSubject == "invite")
            {
               acceptAsFriendButton.visible = this.isMyMessages();
               denyAsFriendButton.visible = this.isMyMessages();
               denyAndBlockButton.visible = this.isMyMessages();
               acceptAsFriendButton.enabled = !this._viewMessage.isDeleted;
               denyAsFriendButton.enabled = !this._viewMessage.isDeleted;
               denyAndBlockButton.enabled = !this._viewMessage.isDeleted;
               viewDeleteButton.visible = false;
               viewReplyButton.visible = false;
            }
            else
            {
               acceptAsFriendButton.visible = false;
               denyAsFriendButton.visible = false;
               denyAndBlockButton.visible = false;
               viewDeleteButton.visible = this.isMyMessages();
               viewReplyButton.visible = this._isInbox && this._viewMessage.sender != "" && PrivateMessageType.FISHCOINS != this._viewMessage.type && PrivateMessageType.ADMIN_MSG != this._viewMessage.type && this.isMyMessages();
               viewDeleteButton.enabled = !this._viewMessage.isDeleted;
               viewReplyButton.enabled = !this._viewMessage.isDeleted;
            }
         }
         else
         {
            viewMessageSubject.text = I18n.get("empty_private_message_subject");
            viewMessageMessage.text = I18n.get("empty_private_message_body");
            viewMessageDate.text = "";
            acceptAsFriendButton.visible = false;
            denyAsFriendButton.visible = false;
            denyAndBlockButton.visible = false;
            viewDeleteButton.visible = false;
            viewReplyButton.visible = false;
         }
      }
      
      private function onTabChanged(param1:Event) : void
      {
         this.showTab(tabs.currentTab);
      }
      
      private function showTab(param1:int, param2:Boolean = true) : void
      {
         switch(param1)
         {
            case this._messagesTabId:
               this._currentTabName = "message";
               break;
            case this._logTabId:
               this._currentTabName = "logs";
               break;
            case this._modLogTabId:
               this._currentTabName = "modLogs";
         }
         this.redrawContent(param2);
      }
      
      public function newMessageFor(param1:String, param2:Boolean = false) : void
      {
         this._opponentUsername = param1;
         this._closeMenuAfterSend = param2;
         this._currentTabName = "message";
         this._viewMessage = null;
         this.show();
         if(messagesContent != null)
         {
            this.redrawContent();
         }
      }
      
      public function showMessage(param1:int) : void
      {
         this.show();
         if(this._messageLineClass == null)
         {
            setTimeout(this.showMessage,200,param1);
         }
         else
         {
            this._msgToOpenId = param1;
            FishaoFscModelManager.pmFscExtension.getMessage(param1,this.onMessageDataReceive);
         }
      }
      
      private function onMessageDataReceive(param1:GetDataResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1.data.hasOwnProperty("newMsgArr"))
         {
            _loc2_ = JSON.parse(param1.data.newMsgArr) as Array;
            this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.ListLine");
            this._viewMessage = new CommunicateBlockWrapper(this._messageLineClass);
            if(_loc2_ != null && _loc2_.length > 0)
            {
               for each(_loc3_ in _loc2_)
               {
                  if(_loc3_.id == this._msgToOpenId)
                  {
                     this._viewMessage.update(_loc3_.id,_loc3_.subject,_loc3_.from,_loc3_.body,_loc3_.secondsAgo,_loc3_,this._isInbox);
                     break;
                  }
               }
            }
            else
            {
               this._viewMessage = null;
            }
            this.fillViewMessage(this._viewMessage);
            this._currentTabName = "message";
            this.redrawContent();
         }
      }
      
      private function getSelectedMessagesCount() : int
      {
         var _loc1_:CommunicateBlockWrapper = null;
         var _loc2_:int = 0;
         var _loc3_:int = messagesContent.numChildren;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc1_ = messagesContent.getChildAt(_loc4_) as CommunicateBlockWrapper;
            if(_loc1_ != null && _loc1_.isSelected)
            {
               _loc2_++;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      override public function show() : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            GameSwf.sendReportToServer("guestOpenCommunDlg");
            return;
         }
         this.onShow();
      }
      
      private function onShow() : void
      {
         super.show();
         if(messagesList != null)
         {
            this.redrawContent();
         }
         else
         {
            setTimeout(this.show,300);
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this._targetUsername = null;
         this._messageLineClass = _app.resourceManager.getDefinitionFromLibraryByName(dialogAssetURL,"assets.common.communication.ListLine");
         if(!this._viewedByModerator)
         {
            this.showTab(this._messagesTabId,false);
         }
      }
      
      public function set viewedByModerator(param1:Boolean) : void
      {
         this._viewedByModerator = param1;
      }
   }
}


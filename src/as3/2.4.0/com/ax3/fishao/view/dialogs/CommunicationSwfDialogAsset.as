package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.ScrollTextWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoCheckboxWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownBaseWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.TabsWrapper;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class CommunicationSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var tabs:TabsWrapper;
      
      public var messagesList:MovieClip;
      
      public var newMessage:MovieClip;
      
      public var messageView:MovieClip;
      
      public var listBoxes:FishaoDropdownBaseWrapper;
      
      public var subjectHeader:TextField;
      
      public var senderHeader:TextField;
      
      public var dateHeader:TextField;
      
      public var checkboxSelectAll:FishaoCheckboxWrapper;
      
      public var messagesContent:MovieClip;
      
      public var subjectField:TextField;
      
      public var messageField:TextField;
      
      public var pagesTextField:TextField;
      
      public var deleteButton:FrameButtonWrapper;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var newMessageHeader:TextField;
      
      public var newMessageSubject:TextField;
      
      public var newMessageMessage:TextField;
      
      public var backButton:FrameButtonWrapper;
      
      public var sendButton:FrameButtonWrapper;
      
      public var viewBackButton:FrameButtonWrapper;
      
      public var viewDeleteButton:FrameButtonWrapper;
      
      public var viewReplyButton:FrameButtonWrapper;
      
      public var viewMessageSubject:TextField;
      
      public var viewMessageDate:TextField;
      
      public var viewMessageMessage:ScrollTextWrapper;
      
      public var acceptAsFriendButton:FrameButtonWrapper;
      
      public var denyAsFriendButton:FrameButtonWrapper;
      
      public var denyAndBlockButton:FrameButtonWrapper;
      
      public var logs:MovieClip;
      
      public var logDropdown:FishaoDropdownBaseWrapper;
      
      public var tradeLogs:MovieClip;
      
      public var chatLogs:MovieClip;
      
      public var modLogs:MovieClip;
      
      public var fishcoinsLogs:MovieClip;
      
      public var logsPagesTextField:TextField;
      
      public var logsLeftPageButton:FrameButtonWrapper;
      
      public var logsRightPageButton:FrameButtonWrapper;
      
      public var tradeLogDateHeader:TextField;
      
      public var tradeLogWithHeader:TextField;
      
      public var tradeLogItemTradedHeader:TextField;
      
      public var tradeLogItemReceivedHeader:TextField;
      
      public var tradeHolder:MovieClip;
      
      public var modLogDateHeader:TextField;
      
      public var modLogModeratorHeader:TextField;
      
      public var modLogTypeHeader:TextField;
      
      public var modLogReasonHeader:TextField;
      
      public var modLogHolder:MovieClip;
      
      public var modLogsPagesTextField:TextField;
      
      public var modLogsLeftPageButton:FrameButtonWrapper;
      
      public var modLogsRightPageButton:FrameButtonWrapper;
      
      public var fishcoinsLogDateHeader:TextField;
      
      public var fishcoinsLogActionHeader:TextField;
      
      public var fishcoinsLogAmountHeader:TextField;
      
      public var fishcoinsHolder:MovieClip;
      
      public var chatLogDateHeader:TextField;
      
      public var chatLogChatHeader:TextField;
      
      public var chatHolder:MovieClip;
      
      public function CommunicationSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "Communication.swf";
         super(_loc1_);
      }
   }
}


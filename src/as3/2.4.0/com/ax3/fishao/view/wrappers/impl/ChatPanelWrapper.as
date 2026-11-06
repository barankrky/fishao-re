package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.states.GuiState;
   import com.ax3.utils.Input;
   import com.inkora.easing.Elastic;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.utils.setTimeout;
   
   public class ChatPanelWrapper extends EventDispatcher implements IAssetWrapper
   {
      
      private var _child:MovieClip;
      
      private var _textField:TextField;
      
      private var _stage:Stage;
      
      private var _chatHistoryPanel:ChatHistoryPanelWrapper;
      
      private var _greyCover:MovieClip;
      
      private var tweenActive:Boolean = false;
      
      public function ChatPanelWrapper()
      {
         super();
      }
      
      public function get child() : MovieClip
      {
         return this._child;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1 as MovieClip;
         this._textField = TextField(DisplayObjectContainer(this._child).getChildByName("txt"));
         this._textField.maxChars = 160;
         this._textField.text = "";
         this._textField.addEventListener(FocusEvent.FOCUS_OUT,this.focusOut);
         this._greyCover = this._child.getChildByName("greyCover") as MovieClip;
         this._greyCover.alpha = 0.65;
         this._greyCover.visible = false;
         this._chatHistoryPanel = new ChatHistoryPanelWrapper((param1 as MovieClip).getChildByName("historyPanel") as MovieClip);
         this._chatHistoryPanel.visible = false;
      }
      
      public function removeListeners() : void
      {
         if(this._textField.hasEventListener(FocusEvent.FOCUS_OUT))
         {
            this._textField.removeEventListener(FocusEvent.FOCUS_OUT,this.focusOut);
         }
      }
      
      public function addListeners() : void
      {
         if(!this._textField.hasEventListener(FocusEvent.FOCUS_OUT) && this.isShowed())
         {
            this._textField.addEventListener(FocusEvent.FOCUS_OUT,this.focusOut);
         }
      }
      
      public function restoreFromState(param1:GuiState) : void
      {
         this._chatHistoryPanel.restoreFromState(param1);
         if(param1.chatPanelShown)
         {
            this.show(false);
         }
         else
         {
            this.hide(false);
         }
      }
      
      private function focusOut(param1:FocusEvent) : void
      {
         if(this._child.visible && this.isShowed())
         {
            this._stage.focus = this._textField;
         }
      }
      
      private function setTweenActiveToFalse(param1:* = null) : void
      {
         this.tweenActive = false;
      }
      
      public function show(param1:Boolean = true) : void
      {
         this.tweenActive = true;
         if(param1)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
         }
         this.stage.focus = this._textField;
         TweenCube.destroyTweensOf(this._child,false);
         TweenCube.to(this._child,0.5,{"y":-57},{
            "ease":Elastic.easeOut,
            "onComplete":this.setTweenActiveToFalse
         });
         Input.clear();
         this._chatHistoryPanel.visible = true;
         this._chatHistoryPanel.checkWidthLimits();
         GameSwf.guiState.chatPanelShown = true;
         if(!this._textField.hasEventListener(FocusEvent.FOCUS_OUT))
         {
            this._textField.addEventListener(FocusEvent.FOCUS_OUT,this.focusOut);
         }
      }
      
      private function onFocusLoss(param1:FocusEvent) : void
      {
         if(this._child.visible)
         {
            this._stage.focus = this._textField;
         }
      }
      
      public function hide(param1:Boolean) : void
      {
         if(this._textField.hasEventListener(FocusEvent.FOCUS_OUT))
         {
            this._textField.removeEventListener(FocusEvent.FOCUS_OUT,this.onFocusLoss);
         }
         if(param1)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_052_UI_Close_menu);
         }
         TweenCube.destroyTweensOf(this._child,false);
         TweenCube.to(this._child,0.5,{"y":1},{
            "onComplete":this.onHide,
            "ease":Elastic.easeOut
         });
         this._chatHistoryPanel.visible = false;
         GameSwf.guiState.chatPanelShown = false;
      }
      
      public function flushMessage() : String
      {
         var _loc1_:String = this._textField.text;
         this._textField.text = "";
         return _loc1_;
      }
      
      private function onHide() : void
      {
         this.stage.focus = null;
         this.setTweenActiveToFalse();
      }
      
      public function isShowed() : Boolean
      {
         return this._child.y != 1 || this.tweenActive;
      }
      
      public function get stage() : Stage
      {
         return this._stage;
      }
      
      public function set stage(param1:Stage) : void
      {
         this._stage = param1;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._child.visible = param1;
      }
      
      public function get textField() : TextField
      {
         return this._textField;
      }
      
      public function processChatMessage(param1:String, param2:String) : void
      {
         if(param2 == null || param2.length == 0)
         {
            return;
         }
         this._chatHistoryPanel.addMessage(param1,param2);
         if(this.chatBlocked)
         {
            if(this._chatHistoryPanel.canSendChatMessage)
            {
               this.unblockChat();
            }
         }
         else if(param1 == app.user.username)
         {
            if(!this._chatHistoryPanel.canSendChatMessage)
            {
               this.blockChat();
            }
         }
      }
      
      public function get draggingNow() : Boolean
      {
         return this._chatHistoryPanel.draggingNow;
      }
      
      public function get historyPanelCapacity() : int
      {
         return this._chatHistoryPanel.capacity;
      }
      
      public function get closeAllowed() : Boolean
      {
         return !(this.draggingNow || this.historyPanelCapacity > 0) || this.chatBlocked;
      }
      
      public function blockChat() : void
      {
         this._greyCover.visible = true;
         this._textField.selectable = false;
         this._textField.type = TextFieldType.DYNAMIC;
         this._textField.text = I18n.get("chat_panel_blocked_text");
         setTimeout(this.unblockChat,30000);
      }
      
      public function unblockChat() : void
      {
         if(!this.chatBlocked)
         {
            return;
         }
         if(!this.canSendChatMessage)
         {
            setTimeout(this.unblockChat,30000);
            return;
         }
         this._greyCover.visible = false;
         this._textField.selectable = true;
         this._textField.type = TextFieldType.INPUT;
         this._textField.text = "";
      }
      
      public function get chatBlocked() : Boolean
      {
         return this._greyCover.visible;
      }
      
      public function get canSendChatMessage() : Boolean
      {
         return this._chatHistoryPanel.canSendChatMessage;
      }
      
      public function get x() : Number
      {
         return this._child.x;
      }
      
      public function get y() : Number
      {
         return this._child.y;
      }
      
      public function get width() : Number
      {
         return this._child.width;
      }
      
      public function get height() : Number
      {
         return this._child.width;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._child.parent;
      }
   }
}


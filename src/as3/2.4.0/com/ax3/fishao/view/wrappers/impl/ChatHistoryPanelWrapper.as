package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.events.GameResizeEvent;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.model.ChatHistoryEntry;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.states.GuiState;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.NetStatusEvent;
   import flash.net.SharedObject;
   import flash.net.SharedObjectFlushStatus;
   
   public class ChatHistoryPanelWrapper
   {
      
      private const MAX_MESSAGE_CAPACITY:int = 50;
      
      private var mc:MovieClip;
      
      private var bg:MovieClip;
      
      private var button:MovieClip;
      
      private var _dragMode:Boolean = false;
      
      private var _dragMouseDelta:Number = 0;
      
      private var _dragged:Boolean = false;
      
      private var _pervMouseY:Number;
      
      private var _gui:Gui;
      
      private var sampleLine:ChatHistoryLineWrapper = new ChatHistoryLineWrapper();
      
      private var messages:Vector.<ChatHistoryEntry>;
      
      private var lines:Vector.<ChatHistoryLineWrapper>;
      
      private var BOTTOM_Y:Number;
      
      private var cookie:SharedObject;
      
      public function ChatHistoryPanelWrapper(param1:MovieClip)
      {
         super();
         this.mc = param1;
         this.bg = param1.getChildByName("bg") as MovieClip;
         this.button = param1.getChildByName("button") as MovieClip;
         this.button.buttonMode = true;
         this.button.addEventListener(MouseEvent.MOUSE_DOWN,this.onButtonMouseDown);
         this.lines = new Vector.<ChatHistoryLineWrapper>();
         this.messages = new Vector.<ChatHistoryEntry>();
         this.BOTTOM_Y = param1.y + param1.height;
         Listeners.addEventListener(this,GameSwf.globalDispatcher,GameResizeEvent.RESIZE,this.onGameResize);
         this.initCookie();
         param1.alpha = 0.78;
         this.checkWidthLimits();
      }
      
      private function initCookie() : void
      {
         this.cookie = SharedObject.getLocal("chat_panel_capacity_" + app.user.username);
         if(this.cookie.data.lines == undefined)
         {
            this.cookie.data.lines = 3;
            this.flushCookie();
         }
      }
      
      private function flushCookie() : void
      {
         var _loc1_:String = null;
         try
         {
            _loc1_ = this.cookie.flush();
         }
         catch(error:Error)
         {
         }
         if(_loc1_ != null)
         {
            switch(_loc1_)
            {
               case SharedObjectFlushStatus.PENDING:
                  this.cookie.addEventListener(NetStatusEvent.NET_STATUS,this.onFlushStatus);
                  break;
               case SharedObjectFlushStatus.FLUSHED:
            }
         }
      }
      
      private function onFlushStatus(param1:NetStatusEvent) : void
      {
         switch(param1.info.code)
         {
            case "SharedObject.Flush.Success":
            case "SharedObject.Flush.Failed":
         }
         this.cookie.removeEventListener(NetStatusEvent.NET_STATUS,this.onFlushStatus);
      }
      
      public function get visible() : Boolean
      {
         return this.mc.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.mc.visible = param1;
      }
      
      public function set x(param1:Number) : void
      {
         this.mc.x = param1;
      }
      
      public function get x() : Number
      {
         return this.mc.x;
      }
      
      public function set y(param1:Number) : void
      {
         this.mc.y = param1;
      }
      
      public function get y() : Number
      {
         return this.mc.y;
      }
      
      public function addMessage(param1:String, param2:String) : void
      {
         var _loc3_:ChatHistoryEntry = new ChatHistoryEntry(param1,param2);
         this.messages.push(_loc3_);
         if(this.messages.length > this.MAX_MESSAGE_CAPACITY)
         {
            this.messages.shift();
         }
         if(this.lines.length < this.messages.length && this.lines.length < this.capacity)
         {
            this.addMessageOnPanel(param1,param2);
         }
         this.refreshDisplayedMessages();
      }
      
      private function addMessageOnPanel(param1:String, param2:String) : void
      {
         var _loc3_:ChatHistoryLineWrapper = null;
         _loc3_ = new ChatHistoryLineWrapper();
         _loc3_.sender = param1;
         _loc3_.message = param2;
         _loc3_.x = 11;
         _loc3_.y = this.lines.length * _loc3_.height + 27;
         this.mc.addChild(_loc3_);
         this.lines.push(_loc3_);
      }
      
      public function get capacity() : int
      {
         return Math.round((this.bg.height - 63 - 17) / this.sampleLine.height);
      }
      
      public function set capacity(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.locationLayersBase != null && GameSwf.currentLocationDialog.locationLayersBase.scrollRect != null)
         {
            if((GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height - 200) / this.sampleLine.height < param1)
            {
               param1 = (GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height - 200) / this.sampleLine.height;
            }
         }
         this.bg.height = param1 * this.sampleLine.height + 63 + 17;
         this.mc.y = Math.round(this.BOTTOM_Y - this.mc.height);
         this.bg.y = 14;
         this.button.y = 0;
         if(param1 == 0)
         {
            this.mc.y = -12;
            GameSwf.guiState.chatPanelFolded = true;
         }
         else if(param1 > 0)
         {
            this.cookie.data.lines = param1;
            this.flushCookie();
            GameSwf.guiState.chatPanelFolded = false;
         }
         this.updateLines();
      }
      
      private function updateLines() : void
      {
         var _loc1_:int = 0;
         var _loc2_:ChatHistoryLineWrapper = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this.lines.length > this.capacity)
         {
            _loc1_ = this.lines.length - this.capacity;
            _loc3_ = 0;
            while(_loc3_ < _loc1_)
            {
               _loc2_ = this.lines.pop();
               if(_loc2_ != null)
               {
                  this.mc.removeChild(_loc2_);
               }
               _loc3_++;
            }
         }
         else if(this.lines.length < this.capacity && this.lines.length < this.messages.length && this.capacity > 0)
         {
            _loc4_ = Math.min(this.capacity,this.messages.length) - this.lines.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               this.addMessageOnPanel("John","Doe");
               _loc5_++;
            }
         }
         this.refreshDisplayedMessages();
      }
      
      private function onButtonMouseDown(param1:MouseEvent) : void
      {
         this._dragMouseDelta = param1.stageY - this.mc.y;
         this._dragMode = true;
         this._pervMouseY = param1.stageY;
         GameSwf.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onButtonMouseMove);
         GameSwf.stage.addEventListener(MouseEvent.MOUSE_UP,this.onButtonMouseUp);
      }
      
      private function onButtonMouseUp(param1:MouseEvent) : void
      {
         GameSwf.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onButtonMouseUp);
         GameSwf.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onButtonMouseMove);
         this._dragMode = false;
         if(!this._dragged)
         {
            this.onButtonMouseClick(param1);
            this.fixLineY();
            return;
         }
         this._dragged = false;
         this.capacity = this.capacity;
         this.fixLineY();
      }
      
      private function fixLineY() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.lines.length)
         {
            this.lines[_loc1_].y = _loc1_ * this.sampleLine.height + 27;
            _loc1_++;
         }
      }
      
      private function onButtonMouseMove(param1:MouseEvent) : void
      {
         if(this._gui == null)
         {
            this._gui = GameSwf.currentLocationDialog.gui;
         }
         if(this._dragMode)
         {
            this._dragged = true;
            if(param1.stageY - (this._gui.energyIndicator.y + this._gui.energyIndicator.height) < 50 && this._pervMouseY > param1.stageY)
            {
               this.onButtonMouseUp(param1);
               return;
            }
            if(this.mc.y > -32 && this._pervMouseY < param1.stageY)
            {
               this.onButtonMouseUp(param1);
               return;
            }
            this._pervMouseY = param1.stageY;
            this.resizePanel(param1.stageY);
         }
      }
      
      private function onButtonMouseClick(param1:*) : void
      {
         this.capacity = this.capacity > 0 ? 0 : int(this.cookie.data.lines);
         this.checkWidthLimits();
      }
      
      private function resizePanel(param1:Number) : void
      {
         var _loc2_:Number = 14 - this._dragMouseDelta;
         var _loc3_:Number = param1 + _loc2_;
         this.bg.height = this.BOTTOM_Y - _loc3_;
         this.mc.y = this.BOTTOM_Y - this.mc.height;
         this.bg.y = 14;
         this.button.y = 0;
         this.updateLines();
      }
      
      private function refreshDisplayedMessages() : void
      {
         var _loc1_:ChatHistoryLineWrapper = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.lines.length)
         {
            _loc1_ = this.lines[_loc3_];
            _loc2_ = _loc3_ + (this.capacity < this.messages.length ? this.messages.length - this.capacity : 0);
            if(_loc2_ < this.messages.length)
            {
               _loc1_.sender = this.messages[_loc2_].sender;
               _loc1_.message = this.messages[_loc2_].message;
            }
            else
            {
               _loc1_ = this.lines.pop();
               this.mc.removeChild(_loc1_);
            }
            _loc3_++;
         }
         this.fixLineY();
      }
      
      private function onGameResize(param1:* = null) : void
      {
         if(this._gui == null && GameSwf.currentLocationDialog != null)
         {
            this._gui = GameSwf.currentLocationDialog.gui;
         }
         this.checkWidthLimits();
      }
      
      public function checkWidthLimits() : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.gui != null && GameSwf.currentLocationDialog.locationLayersBase != null && GameSwf.currentLocationDialog.locationLayersBase.scrollRect != null && this.mc != null)
         {
            if(this.mc.height > GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height - 100)
            {
               this.resizePanel(GameSwf.currentLocationDialog.locationLayersBase.scrollRect.height + 100);
               this.capacity = this.capacity;
            }
         }
      }
      
      public function get draggingNow() : Boolean
      {
         return this._dragMode;
      }
      
      public function restoreFromState(param1:GuiState) : void
      {
         this.cookie = param1.chatPanelCookie;
         this.messages = param1.chatPanelMessages;
         this.capacity = 0;
         this.checkWidthLimits();
         this.updateLines();
      }
      
      public function get canSendChatMessage() : Boolean
      {
         var _loc1_:Date = null;
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:ChatHistoryEntry = null;
         var _loc5_:int = int(this.messages.length);
         if(_loc5_ > 2)
         {
            if(this.messages[_loc5_ - 1].sentByMe && this.messages[_loc5_ - 2].sentByMe && this.messages[_loc5_ - 3].sentByMe)
            {
               return false;
            }
         }
         if(_loc5_ > 9)
         {
            _loc1_ = new Date();
            _loc2_ = _loc1_.getTime() - 30000;
            _loc3_ = 0;
            for each(_loc4_ in this.messages)
            {
               if(_loc4_.sender == app.user.username && _loc4_.notOlderThan(_loc2_))
               {
                  _loc3_++;
               }
            }
            if(_loc3_ > 9)
            {
               return false;
            }
         }
         return true;
      }
   }
}


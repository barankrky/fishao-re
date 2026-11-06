package com.ax3.fishao.view.states
{
   import com.ax3.fishao.model.ChatHistoryEntry;
   import com.ax3.fishao.vars.app;
   import flash.net.SharedObject;
   
   public class GuiState
   {
      
      public var chatPanelShown:Boolean;
      
      public var chatPanelCookie:SharedObject;
      
      public var chatPanelMessages:Vector.<ChatHistoryEntry>;
      
      public var chatPanelFolded:Boolean;
      
      public function GuiState()
      {
         super();
         this.chatPanelShown = false;
         this.chatPanelFolded = false;
         this.chatPanelCookie = SharedObject.getLocal("chat_panel_capacity_" + app.user.username);
         if(this.chatPanelCookie.data.lines == undefined)
         {
            this.chatPanelCookie.data.lines = 3;
            this.chatPanelCookie.flush();
         }
         this.chatPanelMessages = new Vector.<ChatHistoryEntry>();
      }
   }
}


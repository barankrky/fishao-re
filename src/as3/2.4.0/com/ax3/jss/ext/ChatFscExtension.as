package com.ax3.jss.ext
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.chat.ChatMessageType;
   import com.ax3.jss.ext.events.ChatFscExtensionEvent;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   import protocol.cr.chat.ChatReq;
   import protocol.sr.chat.ChatResp;
   
   public class ChatFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function ChatFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
         param3.addRequestHandler(ChatResp,this.onChatSRequest);
      }
      
      private function onChatSRequest(param1:ChatResp) : void
      {
         _dispatcher.dispatchEvent(new ChatFscExtensionEvent(ChatFscExtensionEvent.PUBLIC_MESSAGE,{
            "msg":param1.msg,
            "senderLogin":param1.senderLogin
         }));
      }
      
      public function sendPublicMessage(param1:String, param2:Function = null) : void
      {
         var _loc3_:ChatReq = null;
         if(param1 != null && param1.length > 0)
         {
            _loc3_ = new ChatReq(ChatMessageType.SEND_TO_ALL_IN_ROOM,param1);
            _connection.send(_loc3_,param2);
         }
      }
      
      public function sendPrivateMessage(param1:String, param2:String, param3:Function = null) : void
      {
         var _loc4_:ChatReq = null;
         if(param1 != null && param2.length > 0 && param2 != null && param2.length > 0)
         {
            _loc4_ = new ChatReq(ChatMessageType.SEND_TO_USER,param2,param1);
            _connection.send(_loc4_,param3);
         }
      }
   }
}


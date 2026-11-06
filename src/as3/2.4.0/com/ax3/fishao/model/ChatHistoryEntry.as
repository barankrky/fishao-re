package com.ax3.fishao.model
{
   import com.ax3.fishao.vars.app;
   
   public class ChatHistoryEntry
   {
      
      public var sender:String;
      
      public var message:String;
      
      public var date:Date;
      
      public function ChatHistoryEntry(param1:String, param2:String)
      {
         super();
         this.sender = param1;
         this.message = param2;
         this.date = new Date();
      }
      
      public function get sentByMe() : Boolean
      {
         return this.sender == app.user.username;
      }
      
      public function notOlderThan(param1:Number) : Boolean
      {
         return this.date.getTime() > param1;
      }
   }
}


package com.ax3.jss.ext.events
{
   import com.ax3.jss.events.FscEvent;
   
   public class ChatFscExtensionEvent extends FscEvent
   {
      
      public static const PUBLIC_MESSAGE:String = "publicMessage";
      
      public function ChatFscExtensionEvent(param1:String, param2:Object = null)
      {
         super(param1,param2);
      }
   }
}


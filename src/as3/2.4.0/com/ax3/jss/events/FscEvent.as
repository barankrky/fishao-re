package com.ax3.jss.events
{
   import flash.events.Event;
   
   public class FscEvent extends Event
   {
      
      public static const CONNECT_TO_SERVER_SOCKET:String = "connection";
      
      public static const CONNECTION_LOST:String = "connectionLost";
      
      public static const SOCKET_ERROR:String = "socketError";
      
      public static const SECURITY_ERROR:String = "securityError";
      
      public static const UNHANDLED_SERVER_REQUEST:String = "serverRequest";
      
      public static const LOGIN_SUCCESS:String = "loginSuccess";
      
      public static const LOGIN_ERROR:String = "loginError";
      
      public static const UPDATE_USER_INFO_ERROR:String = "updateUserInfoError";
      
      public static const UPDATE_USER_INFO_SUCCESS:String = "updateUserInfoSuccess";
      
      public static const PUBLIC_MESSAGE:String = "publicMessage";
      
      public static const RECEIVE_DATA:String = "receiveData";
      
      public static const PING_SUCCESS:String = "pingSuccess";
      
      public static const ALERT_OF_DISCONNECTION:String = "disconnect";
      
      private var _data:Object;
      
      public function FscEvent(param1:String, param2:Object = null)
      {
         super(param1,false,false);
         this._data = param2;
      }
      
      override public function clone() : Event
      {
         return new FscEvent(type,this._data);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
   }
}


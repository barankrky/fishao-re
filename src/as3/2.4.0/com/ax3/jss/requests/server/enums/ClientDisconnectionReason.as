package com.ax3.jss.requests.server.enums
{
   public class ClientDisconnectionReason
   {
      
      public static const MANUAL_DISCONNECT:String = "manualDisconnect";
      
      public static const DECODE_ERROR:String = "dataDecodeError";
      
      public static const SOCKET_CLOSE:String = "socketClose";
      
      public static const SOCKED_CONNECTED_FAIL:String = "sockedConnectedFail";
      
      public static const SOCKET_ERROR:String = "socketError";
      
      public static const SECURITY_ERROR:String = "securityError";
      
      public static const CONNECT_TIMEOUT:String = "connectTimeout";
      
      public static const SERVER_CHANGE:String = "serverChange";
      
      public static const BAN:String = "ban";
      
      public function ClientDisconnectionReason()
      {
         super();
      }
   }
}


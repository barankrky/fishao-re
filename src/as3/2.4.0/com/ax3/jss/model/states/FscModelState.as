package com.ax3.jss.model.states
{
   public class FscModelState implements IState
   {
      
      public static const INIT:FscModelState = new FscModelState("init");
      
      public static const DISCONNECTING:FscModelState = new FscModelState("disconnecting");
      
      public static const ERROR:FscModelState = new FscModelState("error");
      
      public static const DISCONNECTED:FscModelState = new FscModelState("disconnected");
      
      public static const RECONNECTING:FscModelState = new FscModelState("reconnecting");
      
      public static const CONNECTING:FscModelState = new FscModelState("connecting");
      
      public static const SOCKET_CONNECTED:FscModelState = new FscModelState("socketConnected");
      
      public static const LOGIN_CHECKING:FscModelState = new FscModelState("loginChecking");
      
      public static const REGISTRATION_CHECKING:FscModelState = new FscModelState("registrationChecking");
      
      public static const REGISTRATION_ERROR:FscModelState = new FscModelState("registrationError");
      
      public static const LOGIN_ERROR:FscModelState = new FscModelState("loginError");
      
      public static const LOGIN_SUCCESS:FscModelState = new FscModelState("loginSuccess");
      
      public static const CONNECTED:FscModelState = new FscModelState("connected");
      
      public var name:String;
      
      public function FscModelState(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public function toString() : String
      {
         return "FscModelState(" + this.name + ")";
      }
   }
}


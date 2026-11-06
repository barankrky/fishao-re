package com.ax3.fishao.model.profile
{
   public class ProfilePanelData
   {
      
      protected var _login:String;
      
      protected var _callback:Function;
      
      public function ProfilePanelData()
      {
         super();
      }
      
      public function load(param1:String, param2:Function) : void
      {
         this._login = param1;
         this._callback = param2;
      }
   }
}


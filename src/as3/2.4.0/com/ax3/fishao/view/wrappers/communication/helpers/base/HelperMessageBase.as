package com.ax3.fishao.view.wrappers.communication.helpers.base
{
   import com.ax3.fishao.utils.I18n;
   
   public class HelperMessageBase
   {
      
      protected var _subject:String;
      
      protected var _body:String;
      
      public function HelperMessageBase()
      {
         super();
         this._subject = "";
         this._body = "";
      }
      
      public function get subject() : String
      {
         return this._subject;
      }
      
      public function get body() : String
      {
         return this._body;
      }
      
      public function handleMessage(param1:String, param2:String) : void
      {
         this._subject = I18n.get(param1);
      }
   }
}


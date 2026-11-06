package com.ax3.fishao.view.wrappers.communication.helpers.base
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _a7dc8a3213f2486db7d1e5d8
   {
      
      protected var _subject:String;
      
      protected var _body:String;
      
      public function _a7dc8a3213f2486db7d1e5d8()
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
      
      public function _a041ffa049d7e26753d6bdbc(param1:String, param2:String) : void
      {
         this._subject = _c2ad9d37d7be0097d6d2e977.get(param1);
      }
   }
}


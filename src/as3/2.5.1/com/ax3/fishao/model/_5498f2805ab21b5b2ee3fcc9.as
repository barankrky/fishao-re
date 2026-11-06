package com.ax3.fishao.model
{
   import com.ax3.fishao.vars.app;
   
   public class _5498f2805ab21b5b2ee3fcc9
   {
      
      public var sender:String;
      
      public var message:String;
      
      public var date:Date;
      
      public function _5498f2805ab21b5b2ee3fcc9(param1:String, param2:String)
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
      
      public function _3590359b68f1ef42c56a52e7(param1:Number) : Boolean
      {
         return this.date.getTime() > param1;
      }
   }
}


package com.ax3.utils
{
   public class _bebc31ae11b6ac3cc8ae6184
   {
      
      private var active:Boolean = false;
      
      private var _12b4168c6b96b715fea5b26b:Boolean = false;
      
      public function _bebc31ae11b6ac3cc8ae6184()
      {
         super();
      }
      
      public function activate() : void
      {
         this.active = true;
      }
      
      public function isActive() : Boolean
      {
         return this.active && !this._12b4168c6b96b715fea5b26b;
      }
      
      public function _85ad564edc2ee16f745d9dfa() : void
      {
         this._12b4168c6b96b715fea5b26b = true;
      }
   }
}


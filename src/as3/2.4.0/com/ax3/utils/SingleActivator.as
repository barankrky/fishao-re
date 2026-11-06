package com.ax3.utils
{
   public class SingleActivator
   {
      
      private var active:Boolean = false;
      
      private var used:Boolean = false;
      
      public function SingleActivator()
      {
         super();
      }
      
      public function activate() : void
      {
         this.active = true;
      }
      
      public function isActive() : Boolean
      {
         return this.active && !this.used;
      }
      
      public function markAsUsed() : void
      {
         this.used = true;
      }
   }
}


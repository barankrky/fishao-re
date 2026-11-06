package com.ax3.errors
{
   public class InitError extends Error
   {
      
      public function InitError()
      {
         super("Class must be initialized (use init()) before usage");
      }
   }
}


package com.ax3.fishao.control.managers
{
   public class GlobalSoundHandlers
   {
      
      public static var globalSelectItemCallback:Function = emptyFunction;
      
      public static var globalSwitchTabCallback:Function = emptyFunction;
      
      public static var globalConfirmClickCallback:Function = emptyFunction;
      
      public static var globalUICloseMenuCallback:Function = emptyFunction;
      
      public function GlobalSoundHandlers()
      {
         super();
      }
      
      private static function emptyFunction() : void
      {
      }
   }
}


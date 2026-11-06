package com.ax3.fishao.utils
{
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.net.LoadingIndicator;
   
   public class Preloader
   {
      
      public function Preloader()
      {
         super();
      }
      
      public static function waitForResponse(param1:Function = null) : Function
      {
         return PopupManager.LOADING_SCREEN.addRequest(param1);
      }
      
      public static function addIndicator(param1:LoadingIndicator) : void
      {
         PopupManager.LOADING_SCREEN.addIndicator(param1);
      }
      
      public static function removeIndicator(param1:LoadingIndicator) : void
      {
         PopupManager.LOADING_SCREEN.removeIndicator(param1);
      }
   }
}


package com.ax3.fishao.mediators
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class FishboxLevelUpMediator extends EventDispatcher
   {
      
      public static const FISHBOX_DIALOG_CLOSED:String = "fishbox_dialog_closed";
      
      private var _fishboxPrizeDialogShown:Boolean = false;
      
      public function FishboxLevelUpMediator()
      {
         super();
      }
      
      public function get fishboxPrizeDialogShown() : Boolean
      {
         return this._fishboxPrizeDialogShown;
      }
      
      public function set fishboxPrizeDialogShown(param1:Boolean) : void
      {
         this._fishboxPrizeDialogShown = param1;
         if(param1 == false)
         {
            dispatchEvent(new Event(FISHBOX_DIALOG_CLOSED));
         }
      }
   }
}


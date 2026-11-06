package com.ax3.fishao.view.dialogs.events
{
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.events.controllers.ControllerDialogEventsUpcoming;
   
   public class DialogEventsUpcoming extends DialogEventsUpcomingAsset
   {
      
      private var _controllerDialogEventsUpcoming:ControllerDialogEventsUpcoming;
      
      public function DialogEventsUpcoming()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_EVENTS_UPCOMING;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._controllerDialogEventsUpcoming = new ControllerDialogEventsUpcoming(_asset);
         super.onAssetCreationComplete();
      }
   }
}


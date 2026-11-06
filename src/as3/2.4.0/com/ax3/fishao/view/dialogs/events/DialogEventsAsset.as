package com.ax3.fishao.view.dialogs.events
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import flash.display.DisplayObject;
   
   public class DialogEventsAsset extends DialogBase
   {
      
      protected var _viewLogo:DisplayObject;
      
      public function DialogEventsAsset()
      {
         super("dialogEvents.swf");
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._viewLogo = Debug.assertProperty(_asset,"viewLogo");
         super.onAssetCreationComplete();
      }
   }
}


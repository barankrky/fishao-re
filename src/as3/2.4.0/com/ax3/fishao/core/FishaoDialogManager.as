package com.ax3.fishao.core
{
   import com.ax3.core.App;
   import com.ax3.core.SwfDialogManager;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.FishaoLocalPreloader;
   import com.ax3.fishao.view.dialogs.IPopupGroup;
   import com.ax3.fishao.view.dialogs.PopupManager;
   
   public class FishaoDialogManager extends SwfDialogManager
   {
      
      public function FishaoDialogManager(param1:App)
      {
         super(param1);
         _applicationModel.dispatcher.dialogManager.dialogAssetCreatingStart.add(onDialogCreatingStart);
         _applicationModel.dispatcher.dialogManager.dialogAssetCreatingComplete.add(onDialogCreatingComplete);
      }
      
      private static function onDialogCreatingStart() : void
      {
         if(!FishaoLocalPreloader.isActive())
         {
            FishaoLocalPreloader.createPreloader(I18n.get("localPreloaderLoadingLabel"),"dialogCreating");
         }
      }
      
      private static function onDialogCreatingComplete() : void
      {
         if(FishaoLocalPreloader.isActive())
         {
            FishaoLocalPreloader.destroyPreloader("dialogCreating");
         }
      }
      
      override public function showDialog(param1:IBaseDialog) : void
      {
         PopupManager.getInstance().showDialog(IBaseDialog(param1));
      }
      
      override public function showDialogWithOverlay(param1:IBaseDialog) : void
      {
         PopupManager.getInstance().showDialogWithOverlay(IBaseDialog(param1));
      }
      
      override public function closeDialog(param1:IBaseDialog) : void
      {
         PopupManager.getInstance().close(IBaseDialog(param1));
      }
      
      override public function showPopup(param1:IBaseDialog) : void
      {
         PopupManager.getInstance().showDialogWithOverlay(IBaseDialog(param1));
      }
      
      override public function showAt(param1:IPopupGroup, param2:IBaseDialog) : void
      {
         PopupManager.getInstance().showAt(param1,param2);
      }
   }
}


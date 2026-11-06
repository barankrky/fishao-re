package com.ax3.display.dialog
{
   import com.ax3.core.App;
   import com.ax3.fishao.view.dialogs.IPopupGroup;
   
   public class DialogManager
   {
      
      protected var _applicationModel:App;
      
      public function DialogManager(param1:App)
      {
         super();
         this._applicationModel = param1;
      }
      
      public function showDialog(param1:IBaseDialog) : void
      {
      }
      
      public function showDialogWithOverlay(param1:IBaseDialog) : void
      {
      }
      
      public function closeDialog(param1:IBaseDialog) : void
      {
      }
      
      public function showPopup(param1:IBaseDialog) : void
      {
      }
      
      public function showAt(param1:IPopupGroup, param2:IBaseDialog) : void
      {
      }
   }
}


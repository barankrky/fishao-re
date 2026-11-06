package com.ax3.core
{
   import com.ax3.display.dialog.DialogManager;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.display.dialog.IDialogWithPreloader;
   import com.ax3.display.dialog.ISwfDialog;
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.utils.ObjectCounter;
   import flash.utils.Dictionary;
   
   public class SwfDialogManager extends DialogManager
   {
      
      private var _dialogCounter:ObjectCounter = new ObjectCounter();
      
      private var _dialogByClass:Dictionary = new Dictionary();
      
      public var assetWrappersProcessor:IAssetWrappersProcessor;
      
      public function SwfDialogManager(param1:App)
      {
         super(param1);
      }
      
      public function getSwfDialogByClass(param1:Class) : ISwfDialog
      {
         var dialogClass:Class = param1;
         var dialog:ISwfDialog = null;
         try
         {
            dialog = new dialogClass();
         }
         catch(e:Error)
         {
            if(e.message != "Singleton")
            {
               throw e;
            }
            dialog = (dialogClass as Object).getInstance();
         }
         dialog.initialize(_applicationModel);
         return dialog;
      }
      
      public function onDialogAssetCreating(param1:Object) : void
      {
         if(param1 is IDialogWithPreloader)
         {
            this._dialogCounter.add(param1);
         }
         this.inspectActiveCreating();
      }
      
      private function inspectActiveCreating() : void
      {
         if(this._dialogCounter.count == 0)
         {
            _applicationModel.dispatcher.dialogManager.dialogAssetCreatingComplete.dispatch();
         }
         else if(this._dialogCounter.count == 1)
         {
            _applicationModel.dispatcher.dialogManager.dialogAssetCreatingStart.dispatch();
         }
      }
      
      public function onCreatingDialogComplete(param1:Object) : void
      {
         if(param1 is IDialogWithPreloader)
         {
            this._dialogCounter.remove(param1);
         }
         this.inspectActiveCreating();
      }
      
      public function getSingleSwfDialogByClass(param1:Class) : ISwfDialog
      {
         if(this._dialogByClass[param1] == null)
         {
            this._dialogByClass[param1] = this.getSwfDialogByClass(param1);
         }
         return this._dialogByClass[param1];
      }
      
      public function getSingleDialogByClass(param1:Class) : IBaseDialog
      {
         if(this._dialogByClass[param1] == null)
         {
            this._dialogByClass[param1] = new param1();
         }
         IBaseDialog(this._dialogByClass[param1]).reset();
         return this._dialogByClass[param1];
      }
      
      public function getDialogByClass(param1:Class) : IBaseDialog
      {
         var _loc2_:IBaseDialog = new param1();
         IBaseDialog(_loc2_).reset();
         return _loc2_;
      }
   }
}


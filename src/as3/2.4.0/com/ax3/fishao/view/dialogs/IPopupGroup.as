package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.IBaseDialog;
   
   public interface IPopupGroup
   {
      
      function show(param1:IBaseDialog) : void;
      
      function layerIndex() : int;
   }
}


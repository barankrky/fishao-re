package com.ax3.display.dialog
{
   import com.ax3.core.App;
   import com.ax3.fishao.view.dialogs.IScreenCenter;
   
   public interface IBaseDialog extends IScreenCenter
   {
      
      function initialize(param1:App) : void;
      
      function set visible(param1:Boolean) : void;
      
      function set y(param1:Number) : void;
      
      function get y() : Number;
      
      function get canClosedByEsc() : Boolean;
      
      function onShowStart() : void;
      
      function onShowComplete() : void;
      
      function onCloseStart() : void;
      
      function onCloseComplete() : void;
      
      function set x(param1:Number) : void;
      
      function get width() : Number;
      
      function get height() : Number;
      
      function get isClosing() : Boolean;
      
      function activate() : void;
      
      function deactivate() : void;
      
      function destroy() : void;
      
      function show() : void;
      
      function reset() : void;
      
      function onLostFrontPosition() : void;
      
      function onSetFrontPosition() : void;
      
      function isReady() : Boolean;
      
      function close() : void;
   }
}


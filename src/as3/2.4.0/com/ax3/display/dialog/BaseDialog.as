package com.ax3.display.dialog
{
   import com.ax3.core.App;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class BaseDialog extends Sprite implements IBaseDialog
   {
      
      protected var _app:App;
      
      public var bg:DisplayObject;
      
      protected var _isShowed:Boolean = false;
      
      private var _isClosing:Boolean;
      
      protected var _canClosedByEsc:Boolean;
      
      public function BaseDialog()
      {
         super();
         this._canClosedByEsc = true;
      }
      
      public function get isClosing() : Boolean
      {
         return this._isClosing;
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
      
      public function get isShowed() : Boolean
      {
         return this._isShowed;
      }
      
      public function get canClosedByEsc() : Boolean
      {
         return this._canClosedByEsc;
      }
      
      public function show() : void
      {
         this.redraw();
         this.showByDialogManager();
         this._isShowed = true;
         this._isClosing = false;
      }
      
      public function redraw() : void
      {
      }
      
      public function showByDialogManager() : void
      {
         this._app.dialogManager.showDialog(this);
      }
      
      public function close() : void
      {
         this._app.dialogManager.closeDialog(this);
         if(stage != null)
         {
            stage.focus = null;
         }
         this._isShowed = false;
      }
      
      public function initialize(param1:App) : void
      {
         this._app = param1;
      }
      
      public function onShowStart() : void
      {
      }
      
      public function onShowComplete() : void
      {
      }
      
      public function onCloseStart() : void
      {
         this._isClosing = true;
      }
      
      public function onCloseComplete() : void
      {
         this._isClosing = false;
      }
      
      public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = int(param3 / 2 - this.width / 2);
         this.y = int(param4 / 2 - this.height / 2);
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function reset() : void
      {
      }
      
      public function onLostFrontPosition() : void
      {
      }
      
      public function onSetFrontPosition() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return true;
      }
   }
}


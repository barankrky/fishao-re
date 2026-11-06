package com.ax3.fishao.view.dialogs
{
   import com.ax3.core.App;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.fishao.model.events.UIEvent;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class FishaoBasePopup extends Sprite implements IBaseDialog
   {
      
      private var _canClosedByEsc:Boolean;
      
      protected var _closeTweenActive:Boolean = false;
      
      public var bg:DisplayObject;
      
      public function FishaoBasePopup()
      {
         super();
         this.reset();
         this._canClosedByEsc = false;
      }
      
      public function get isClosing() : Boolean
      {
         return false;
      }
      
      public function get canClosedByEsc() : Boolean
      {
         return this._canClosedByEsc;
      }
      
      public function reset() : void
      {
      }
      
      public function show() : void
      {
         PopupManager.getInstance().showDialogWithOverlay(this);
      }
      
      public function onShowComplete() : void
      {
         GameSwf.globalDispatcher.dispatchEvent(new UIEvent(UIEvent.SHOW_POPUP,this));
      }
      
      public function close() : void
      {
         PopupManager.getInstance().close(this);
      }
      
      public function onCloseComplete() : void
      {
         GameSwf.globalDispatcher.dispatchEvent(new UIEvent(UIEvent.HIDE_POPUP));
      }
      
      public function set closeTweenActive(param1:Boolean) : void
      {
         this._closeTweenActive = param1;
      }
      
      public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = int(param3 / 2 - this.width / 2);
         this.y = int(param4 / 2 - this.height / 2);
      }
      
      public function onShowStart() : void
      {
      }
      
      public function onCloseStart() : void
      {
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
      }
      
      public function initialize(param1:App) : void
      {
      }
      
      public function destroy() : void
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
      
      override public function get width() : Number
      {
         if(this.bg != null)
         {
            return this.bg.width;
         }
         return super.width;
      }
      
      override public function get height() : Number
      {
         if(this.bg != null)
         {
            return this.bg.height;
         }
         return super.height;
      }
   }
}


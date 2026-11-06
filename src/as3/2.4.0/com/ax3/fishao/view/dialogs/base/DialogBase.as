package com.ax3.fishao.view.dialogs.base
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class DialogBase extends FishaoBaseSwfDialog implements IController
   {
      
      private var _buttonClose:CloseMenuFishaoButtonWrapper;
      
      private var _isButtonCloseAvailable:Boolean;
      
      private var _callbackClose:Function;
      
      public function DialogBase(param1:String, param2:Boolean = true)
      {
         this._isButtonCloseAvailable = param2;
         var _loc3_:SWFDialogConfig = new SWFDialogConfig();
         _loc3_.swfFileName = param1;
         super(_loc3_);
      }
      
      public function get type() : String
      {
         Debug.assert(false,"Please override");
         return null;
      }
      
      public function set callbackClose(param1:Function) : void
      {
         this._callbackClose = param1;
      }
      
      protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         if(this.isClosing)
         {
            return;
         }
         this.close();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         if(this._isButtonCloseAvailable)
         {
            this._buttonClose = new CloseMenuFishaoButtonWrapper();
            this._buttonClose.process(Debug.assertProperty(_asset,"buttonClose"));
            this._buttonClose.handler = this.onButtonCloseClicked;
         }
      }
      
      public function update(param1:String) : void
      {
         Debug.assert(false,"Please override");
      }
      
      public function get view() : IView
      {
         return null;
      }
      
      public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         return false;
      }
      
      public function onViewMouseMove(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseUpOver(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseUpOut(param1:Object, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseOver(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseOut(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseDown(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseUp(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      public function onViewMouseWheel(param1:IView, param2:MouseEvent) : Boolean
      {
         return false;
      }
      
      override public function close() : void
      {
         if(this._buttonClose != null)
         {
            this._buttonClose.handler = null;
         }
         if(this._callbackClose != null)
         {
            this._callbackClose();
            this._callbackClose = null;
         }
         super.close();
      }
      
      public function get isCleanuped() : Boolean
      {
         return false;
      }
      
      public function cleanup() : void
      {
         Debug.assert(false,"Not used yet");
      }
   }
}


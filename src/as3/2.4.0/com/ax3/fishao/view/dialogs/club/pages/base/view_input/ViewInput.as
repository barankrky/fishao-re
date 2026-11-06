package com.ax3.fishao.view.dialogs.club.pages.base.view_input
{
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import flash.display.Sprite;
   import flash.events.FocusEvent;
   import flash.text.TextField;
   
   public class ViewInput extends ViewBase
   {
      
      private var _label:TextField;
      
      private var _callbackOnTextChanged:Function;
      
      private var _inputTextLastValue:String;
      
      public function ViewInput(param1:IController, param2:TextField)
      {
         super(param1,new Sprite());
         this._label = param2;
         this.init();
      }
      
      public function set callbackOnTextChanged(param1:Function) : void
      {
         this._callbackOnTextChanged = param1;
      }
      
      public function get label() : TextField
      {
         return this._label;
      }
      
      private function onFocusIn(param1:FocusEvent) : void
      {
         this._inputTextLastValue = this._label.text;
      }
      
      private function onFocusOut(param1:FocusEvent) : void
      {
         if(this._inputTextLastValue == this._label.text)
         {
            return;
         }
         if(this._callbackOnTextChanged != null)
         {
            this._callbackOnTextChanged();
         }
      }
      
      private function init() : void
      {
         this._label.addEventListener(FocusEvent.FOCUS_OUT,this.onFocusOut);
         this._label.addEventListener(FocusEvent.FOCUS_IN,this.onFocusIn);
      }
      
      override public function cleanup() : void
      {
         this._label.removeEventListener(FocusEvent.FOCUS_OUT,this.onFocusOut);
         this._label.removeEventListener(FocusEvent.FOCUS_IN,this.onFocusIn);
         super.cleanup();
      }
   }
}


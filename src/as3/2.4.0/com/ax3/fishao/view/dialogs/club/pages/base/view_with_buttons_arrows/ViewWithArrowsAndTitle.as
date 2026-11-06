package com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import flash.display.DisplayObjectContainer;
   
   public class ViewWithArrowsAndTitle extends ViewWithButtonsArrows
   {
      
      private var _labelTitle:TextFieldAutofitWrapper;
      
      private var _labelText:TextFieldAutofitWrapper;
      
      public function ViewWithArrowsAndTitle(param1:Controller, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set title(param1:String) : void
      {
         this._labelTitle.text = param1;
      }
      
      public function set text(param1:String) : void
      {
         this._labelText.text = param1;
      }
      
      private function init() : void
      {
         this._labelTitle = new TextFieldAutofitWrapper(Debug.assertProperty(this.source,"labelTitle"));
         this._labelText = new TextFieldAutofitWrapper(Debug.assertProperty(this.source,"labelText"));
      }
   }
}


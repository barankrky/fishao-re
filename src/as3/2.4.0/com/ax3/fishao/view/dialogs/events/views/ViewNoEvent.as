package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewNoEvent extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      public function ViewNoEvent(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:TextFieldAutofitWrapper = new TextFieldAutofitWrapper(Debug.assertProperty(this._source,"label",TextField));
         _loc1_.text = I18n.get(EStringType.EST_DIALOG_EVENTS_NO_EVENTS);
      }
   }
}


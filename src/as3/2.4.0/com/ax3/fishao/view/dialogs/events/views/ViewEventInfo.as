package com.ax3.fishao.view.dialogs.events.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class ViewEventInfo extends ViewEventBase
   {
      
      private var _labelTimeLeft:TextFieldAutofitWrapper;
      
      private var _labelTimeLeftValue:TextField;
      
      private var _labelDescription:TextFieldAutofitWrapper;
      
      public function ViewEventInfo(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function set eventIsStarted(param1:Boolean) : void
      {
         this._labelTimeLeft.text = I18n.get(param1 ? EStringType.EST_DIALOG_EVENTS_TIME_LEFT_TO_END : EStringType.EST_DIALOG_EVENTS_TIME_LEFT_TO_START);
         this._labelTimeLeft.source.y = this._labelTimeLeftValue.y + this._labelTimeLeftValue.textHeight / 2 - this._labelTimeLeft.source.textHeight / 2;
         this._labelTimeLeftValue.x = this._labelTimeLeft.source.x + this._labelTimeLeft.source.textWidth + 10;
      }
      
      public function set description(param1:String) : void
      {
         this._labelDescription.text = param1;
      }
      
      public function set timeLeft(param1:uint) : void
      {
         this._labelTimeLeftValue.text = TimeConverter.getTimeString(param1);
      }
      
      private function init() : void
      {
         this._labelDescription = new TextFieldAutofitWrapper(Debug.assertProperty(_source,"labelDescription"));
         this._labelDescription.needCenteredText = false;
         this._labelTimeLeft = new TextFieldAutofitWrapper(Debug.assertProperty(_source,"labelTimeLeft"));
         this._labelTimeLeft.needCenteredText = false;
         this._labelTimeLeftValue = Debug.assertProperty(_source,"labelTimeLeftValue");
         _fishBitmap.width = 225;
         _fishBitmap.height = 225;
         _fishBitmap.x = 440;
         _fishBitmap.y = -50;
      }
   }
}


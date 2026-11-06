package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import com.ax3.display.wrappers.impl.SignUpButtonWrapper;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ViewDialogWheelOfFortune extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewTitle:ViewTitleAutosized;
      
      private var _labelDescription:TextField;
      
      private var _labelTimeLeft:TextField;
      
      private var _labelPrize:TextField;
      
      private var _buttonSpinFree:FrameButtonWrapper;
      
      private var _buttonSpinPaid:SignUpButtonWrapper;
      
      public function ViewDialogWheelOfFortune(param1:IController, param2:DisplayObjectContainer)
      {
         this._source = param2;
         super(param1,this._source);
         this.init();
      }
      
      public function get buttonSpinFree() : FrameButtonWrapper
      {
         return this._buttonSpinFree;
      }
      
      public function get buttonSpinPaid() : SignUpButtonWrapper
      {
         return this._buttonSpinPaid;
      }
      
      public function get labelDescription() : TextField
      {
         return this._labelDescription;
      }
      
      public function get labelTimeLeft() : TextField
      {
         return this._labelTimeLeft;
      }
      
      private function init() : void
      {
         this._viewTitle = new ViewTitleAutosized(controller,Debug.assertProperty(this._source,"viewTitle"));
         this._viewTitle.text = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_TITLE);
         this._labelPrize = Debug.assertProperty(this._source,"labelPrize",TextField);
         this._labelPrize.text = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_PRIZE);
         this._labelDescription = Debug.assertProperty(this._source,"labelDescription",TextField);
         this._labelDescription.text = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_FREE_SPIN_DESCRIPTION);
         this._labelTimeLeft = Debug.assertProperty(this._source,"labelTimeLeft",TextField);
         this._buttonSpinFree = new FrameButtonWrapper();
         this._buttonSpinFree.process(Debug.assertProperty(this._source,"buttonSpinFree"));
         this._buttonSpinFree.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonSpinFree,param1);
         };
         this._buttonSpinFree.label = I18n.getUpper(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_BUTTON_SPIN_FREE);
         this._buttonSpinPaid = new SignUpButtonWrapper();
         this._buttonSpinPaid.process(Debug.assertProperty(this._source,"buttonSpinPaid"));
         this._buttonSpinPaid.handler = function(param1:MouseEvent):void
         {
            controller.onViewClicked(_buttonSpinPaid,param1);
         };
         this._buttonSpinPaid.label = I18n.getUpper(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_BUTTON_SPIN_PAID);
      }
   }
}


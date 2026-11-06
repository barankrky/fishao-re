package com.ax3.fishao.display.popups
{
   import com.ax3.fishao.model.pling.PlingMessage;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   
   public class PlingPopup extends PlingWindow
   {
      
      public var id:int;
      
      public var close:FishaoButtonWrapper;
      
      public var data:PlingMessage;
      
      private var _fieldWrapper:ScalableCenterTextFieldWrapper;
      
      public function PlingPopup()
      {
         super();
         this.close = new FishaoButtonWrapper();
         this.close.process(closeButton);
         messageField.mouseEnabled = false;
         UtilsTextField.setBoldFont(messageField);
         this._fieldWrapper = new ScalableCenterTextFieldWrapper(messageField);
      }
      
      public function set text(param1:String) : void
      {
         this._fieldWrapper.text = param1;
      }
      
      public function activateButtonMode() : void
      {
         bg.useHandCursor = true;
         bg.buttonMode = true;
      }
   }
}


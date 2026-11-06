package com.ax3.fishao.display.popups
{
   import com.ax3.fishao.model.pling._acdfca446f7bd1a1ed443c02;
   import com.ax3.fishao.utils.UtilsTextField;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   
   public class _e954eed354e62564d4e8cd3c extends PlingWindow
   {
      
      public var id:int;
      
      public var close:FishaoButtonWrapper;
      
      public var data:_acdfca446f7bd1a1ed443c02;
      
      private var _35039aae1d10a69d51cc85b8:_665c68e6c732fb052d549df8;
      
      public function _e954eed354e62564d4e8cd3c()
      {
         super();
         this.close = new FishaoButtonWrapper();
         this.close.process(closeButton);
         messageField.mouseEnabled = false;
         UtilsTextField.setBoldFont(messageField);
         this._35039aae1d10a69d51cc85b8 = new _665c68e6c732fb052d549df8(messageField);
      }
      
      public function set text(param1:String) : void
      {
         this._35039aae1d10a69d51cc85b8.text = param1;
      }
      
      public function _6c9cdc942f359b4cafa13332() : void
      {
         bg.useHandCursor = true;
         bg.buttonMode = true;
      }
   }
}


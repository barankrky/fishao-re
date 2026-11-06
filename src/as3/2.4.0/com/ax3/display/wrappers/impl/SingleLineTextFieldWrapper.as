package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   
   public class SingleLineTextFieldWrapper implements IAssetWrapper
   {
      
      private var _textField:TextField;
      
      public function SingleLineTextFieldWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._textField = TextField(param1);
         this._textField.wordWrap = false;
         switch(this._textField.getTextFormat().align)
         {
            case TextFormatAlign.LEFT:
               this._textField.autoSize = TextFieldAutoSize.LEFT;
               break;
            case TextFormatAlign.RIGHT:
               this._textField.autoSize = TextFieldAutoSize.RIGHT;
               break;
            default:
               this._textField.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      public function set text(param1:String) : void
      {
         this._textField.text = param1;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this._textField;
      }
   }
}


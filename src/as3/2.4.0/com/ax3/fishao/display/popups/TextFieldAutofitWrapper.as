package com.ax3.fishao.display.popups
{
   import flash.text.TextField;
   
   public class TextFieldAutofitWrapper extends ScalableCenterTextFieldWrapper
   {
      
      private var _horizontalTextOffset:int;
      
      private var _verticalTextOffset:int;
      
      private var _needCenteredText:Boolean;
      
      public function TextFieldAutofitWrapper(param1:TextField)
      {
         super(param1);
         this.init();
      }
      
      public function get isTextWider() : Boolean
      {
         return _source.textWidth + this._horizontalTextOffset * 2 > _source.width;
      }
      
      public function get isTextHigher() : Boolean
      {
         return _source.textHeight + this._verticalTextOffset * 2 > _source.height;
      }
      
      override public function set text(param1:String) : void
      {
         _defaultFormat.size = _defaultFontSize;
         _source.defaultTextFormat = _defaultFormat;
         _source.text = param1;
         this.resizeFont();
      }
      
      public function set needCenteredText(param1:Boolean) : void
      {
         if(this._needCenteredText == param1)
         {
            return;
         }
         this._needCenteredText = param1;
         if(this._needCenteredText && this.canCenteredText)
         {
            centerField();
         }
      }
      
      private function get canCenteredText() : Boolean
      {
         return _source.height >= _source.textHeight && _source.width >= _source.textWidth;
      }
      
      private function init() : void
      {
         this._horizontalTextOffset = 2;
         this._verticalTextOffset = 2;
         this._needCenteredText = true;
      }
      
      override protected function resizeFont() : void
      {
         while((this.isTextWider || this.isTextHigher) && _defaultFormat.size > 1)
         {
            _defaultFormat.size = Number(_defaultFormat.size) - 1;
            _source.defaultTextFormat = _defaultFormat;
            _source.setTextFormat(_defaultFormat);
         }
         if(this._needCenteredText)
         {
            centerField();
         }
      }
   }
}


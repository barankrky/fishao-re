package com.ax3.utils.display.textfield
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public function setFontSize(param1:TextField, param2:int) : void
   {
      var _loc3_:TextFormat = param1.defaultTextFormat;
      _loc3_.size = param2;
      param1.setTextFormat(_loc3_);
      param1.defaultTextFormat = _loc3_;
   }
}


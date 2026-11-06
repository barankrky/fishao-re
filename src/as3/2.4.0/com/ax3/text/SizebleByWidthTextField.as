package com.ax3.text
{
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class SizebleByWidthTextField extends TextField
   {
      
      private var _widthNeed:Number = 50;
      
      private var _deffaultSize:uint = 10;
      
      private var _deffTF:TextFormat;
      
      private var _autoWrap:Boolean = true;
      
      public var curFontSize:int;
      
      private var _defaultTextFieldAutoSize:String = "center";
      
      public function SizebleByWidthTextField(param1:Boolean = false, param2:String = "center")
      {
         this._autoWrap = param1;
         this._defaultTextFieldAutoSize = param2;
         super();
      }
      
      override public function set text(param1:String) : void
      {
         super.text = param1;
         var _loc2_:TextFormat = super.defaultTextFormat;
         _loc2_.size = this._deffaultSize;
         this.curFontSize = int(_loc2_.size);
         super.defaultTextFormat = _loc2_;
         super.setTextFormat(defaultTextFormat);
         this.resizeFont();
      }
      
      protected function resizeFont() : void
      {
         var _loc1_:String = null;
         if(textWidth > this._widthNeed)
         {
            if(super.text.indexOf(" ") == -1 || !this._autoWrap)
            {
               this._deffTF = super.defaultTextFormat;
               this._deffTF.size = uint(this._deffTF.size) - 1;
               this.curFontSize = int(this._deffTF.size);
               super.defaultTextFormat = this._deffTF;
               super.setTextFormat(this._deffTF);
               autoSize = TextFieldAutoSize.LEFT;
               this.resizeFont();
            }
            else if(this._autoWrap)
            {
               _loc1_ = super.text.replace(" ","\n");
               super.text = _loc1_;
               this.resizeFont();
            }
         }
         else
         {
            width = this._widthNeed;
            autoSize = this._defaultTextFieldAutoSize;
         }
      }
      
      override public function set defaultTextFormat(param1:TextFormat) : void
      {
         super.defaultTextFormat = param1;
         this._deffaultSize = uint(param1.size);
      }
      
      public function set widthNeed(param1:Number) : void
      {
         this._widthNeed = param1;
      }
      
      override public function setTextFormat(param1:TextFormat, param2:int = -1, param3:int = -1) : void
      {
         super.setTextFormat(param1,param2,param3);
         this._deffaultSize = uint(param1.size);
         this.curFontSize = int(param1.size);
      }
   }
}


package com.ax3.fishao.display.popups
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class ScalableCenterTextFieldWrapper implements IAssetWrapper
   {
      
      protected var _source:TextField;
      
      private var _rect:Rectangle;
      
      protected var _defaultFormat:TextFormat;
      
      protected var _defaultFontSize:Object;
      
      public function ScalableCenterTextFieldWrapper(param1:TextField = null)
      {
         super();
         if(param1 != null)
         {
            this.process(param1);
         }
      }
      
      public function get source() : TextField
      {
         return this._source;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._source = TextField(param1);
         this._defaultFormat = this._source.defaultTextFormat;
         this._defaultFontSize = this._defaultFormat.size;
         this.updateRect();
      }
      
      public function updateRect() : void
      {
         this._rect = new Rectangle(this._source.x,this._source.y,this._source.width,this._source.height);
      }
      
      public function set text(param1:String) : void
      {
         this._defaultFormat.size = this._defaultFontSize;
         this._source.defaultTextFormat = this._defaultFormat;
         this._source.text = param1;
         if(this._source.height >= this._source.textHeight)
         {
            this.centerField();
         }
         else
         {
            this.resizeFont();
         }
      }
      
      protected function centerField() : void
      {
         this._source.y = this._rect.y + int(this._rect.height / 2 - this._source.textHeight / 2 + 0.5);
      }
      
      protected function resizeFont() : void
      {
         while(this._source.textHeight + 5 > this._source.height && this._defaultFormat.size > 1)
         {
            this._defaultFormat.size = Number(this._defaultFormat.size) - 1;
            this._source.defaultTextFormat = this._defaultFormat;
            this._source.setTextFormat(this._defaultFormat);
         }
         this.centerField();
      }
   }
}


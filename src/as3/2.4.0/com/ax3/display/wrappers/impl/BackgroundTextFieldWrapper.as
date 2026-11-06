package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class BackgroundTextFieldWrapper implements IAssetWrapper
   {
      
      private var _bg:DisplayObject;
      
      private var _label:TextField;
      
      private var _bottomPadding:Number;
      
      private const DEFAULT_MAX_HEIGHT:int = 400;
      
      public var maxHeight:int = 400;
      
      protected var _asset:DisplayObjectContainer;
      
      public function BackgroundTextFieldWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = param1 as DisplayObjectContainer;
         this._bg = this._asset.getChildByName("bg");
         this._label = this._asset.getChildByName("label") as TextField;
         this._bottomPadding = this._bg.y + this._bg.height - this._label.y - this._label.height;
      }
      
      public function set text(param1:String) : void
      {
         this._label.text = param1;
         this._label.height = Math.min(this.maxHeight,this._label.textHeight + 5);
         this._bg.height = this._label.y + this._label.textHeight + this._bottomPadding;
      }
      
      public function get y() : Number
      {
         return this._asset.y;
      }
      
      public function get height() : Number
      {
         return this._asset.height;
      }
      
      public function set textAlign(param1:String) : void
      {
         var _loc2_:TextFormat = this._label.defaultTextFormat;
         _loc2_.align = param1;
         this._label.setTextFormat(_loc2_);
         this._label.defaultTextFormat = _loc2_;
      }
      
      public function get defaultTextFormat() : TextFormat
      {
         return this._label.defaultTextFormat;
      }
      
      public function set defaultTextFormat(param1:TextFormat) : void
      {
         this._label.defaultTextFormat = param1;
         this._label.setTextFormat(param1);
      }
      
      public function set selectable(param1:Boolean) : void
      {
         this._label.selectable = param1;
      }
   }
}


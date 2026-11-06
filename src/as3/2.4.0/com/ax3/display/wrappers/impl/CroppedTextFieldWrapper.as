package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   
   public class CroppedTextFieldWrapper implements IAssetWrapper, IAssetWrapperRecursive
   {
      
      private static const CROP_STRING:String = "...";
      
      private var _asset:TextField;
      
      private const PADDING_RIGHT:Number = 5;
      
      private var _originalText:String = "";
      
      public function CroppedTextFieldWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = TextField(param1);
         this._asset.mouseEnabled = false;
         this._asset.mouseWheelEnabled = false;
      }
      
      public function onAssetProcessComplete() : void
      {
      }
      
      public function CroppedTextField() : void
      {
         this.redraw();
      }
      
      public function set text(param1:String) : void
      {
         this._originalText = param1;
         this.redraw();
      }
      
      public function get text() : String
      {
         return this._originalText;
      }
      
      public function set width(param1:Number) : void
      {
         this._asset.width = param1;
         this.redraw();
      }
      
      private function redraw() : void
      {
         this._asset.text = this._originalText;
         if(this._asset.textWidth + this.PADDING_RIGHT > this._asset.width && this._originalText.length > 0)
         {
            this.cropText();
         }
      }
      
      private function cropText() : void
      {
         this._asset.text = CROP_STRING;
         var _loc1_:Number = this._asset.textWidth;
         this._asset.text = this._originalText;
         var _loc2_:int = 0;
         while(this._asset.getCharBoundaries(_loc2_).x + this._asset.getCharBoundaries(_loc2_).width + _loc1_ + this.PADDING_RIGHT < this._asset.width)
         {
            _loc2_++;
         }
         this._asset.text = this._originalText.slice(0,_loc2_) + CROP_STRING;
      }
      
      public function set y(param1:Number) : void
      {
         this._asset.y = param1;
      }
      
      public function get y() : Number
      {
         return this._asset.y;
      }
   }
}


package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.text.SizebleByWidthTextField;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class SizebleByWidthTextFieldWrapper extends SizebleByWidthTextField implements IAssetWrapper
   {
      
      private var _originRect:Rectangle;
      
      public function SizebleByWidthTextFieldWrapper(param1:Boolean = false, param2:String = "center")
      {
         super(param1,param2);
      }
      
      public function process(param1:DisplayObject) : void
      {
         embedFonts = true;
         this.filters = param1.filters;
         name = param1.name + "_wrapper";
         this._originRect = new Rectangle(param1.x,param1.y,param1.width,param1.height);
         widthNeed = this._originRect.width;
         ShiftWrapper.shiftDisplayObject(param1,this);
         var _loc2_:TextField = param1 as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         setTextFormat(_loc3_);
         defaultTextFormat = _loc3_;
         curFontSize = int(_loc3_.size);
         selectable = false;
      }
      
      override public function set text(param1:String) : void
      {
         super.text = param1;
      }
      
      override protected function resizeFont() : void
      {
         super.resizeFont();
         this.x = this._originRect.x + this._originRect.width / 2 - super.width / 2;
         this.y = this._originRect.y + this._originRect.height / 2 - super.height / 2;
      }
      
      public function alignVertical() : void
      {
         this.y = this._originRect.y + this._originRect.height / 2 - super.height / 2;
      }
   }
}


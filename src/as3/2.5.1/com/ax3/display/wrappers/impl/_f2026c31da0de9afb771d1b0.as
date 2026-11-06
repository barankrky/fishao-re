package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormatAlign;
   
   public class _f2026c31da0de9afb771d1b0 implements IAssetWrapper
   {
      
      private var _b6796399204a53bca9c34a27:TextField;
      
      public function _f2026c31da0de9afb771d1b0()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._b6796399204a53bca9c34a27 = TextField(param1);
         this._b6796399204a53bca9c34a27.wordWrap = false;
         switch(this._b6796399204a53bca9c34a27.getTextFormat().align)
         {
            case TextFormatAlign.LEFT:
               §§push(0x4EBBEEB1 ^ 0x53E7A6DC ^ 0x61CFA562 ^ 0x7C93ED0F);
               break;
            case TextFormatAlign.RIGHT:
               §§push(0x1987172B ^ 0x4D519697 ^ 0x65297E18 ^ 0x31FFFFA5);
               break;
            default:
               §§push(0x46F6C1E2 ^ -474954961 ^ 0x6913775F ^ -866814576);
         }
         switch(§§pop())
         {
            case 0:
               this._b6796399204a53bca9c34a27.autoSize = TextFieldAutoSize.LEFT;
               break;
            case 1:
               this._b6796399204a53bca9c34a27.autoSize = TextFieldAutoSize.RIGHT;
               break;
            default:
               this._b6796399204a53bca9c34a27.autoSize = TextFieldAutoSize.CENTER;
         }
      }
      
      public function set text(param1:String) : void
      {
         this._b6796399204a53bca9c34a27.text = param1;
      }
      
      public function get displayObject() : DisplayObject
      {
         return this._b6796399204a53bca9c34a27;
      }
   }
}


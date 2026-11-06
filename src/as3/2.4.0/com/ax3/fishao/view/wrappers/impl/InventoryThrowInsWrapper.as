package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class InventoryThrowInsWrapper extends Sprite implements IAssetWrapper
   {
      
      private const TEXT_FIELD_OFFSET:Number = 7;
      
      private var _textField:TextField;
      
      private var _child:DisplayObject;
      
      private var _label:TextField;
      
      private var _textFieldY:Number;
      
      public function InventoryThrowInsWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
         this._textField = TextField(DisplayObjectContainer(param1).getChildByName("txt"));
         this._textFieldY = this._textField.y;
         this._label = TextField(DisplayObjectContainer(param1).getChildByName("label"));
      }
      
      public function set text(param1:String) : void
      {
         this._textField.text = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         this._child.visible = param1;
      }
      
      override public function get visible() : Boolean
      {
         return this._child.visible;
      }
      
      public function hideLabel() : void
      {
         this._label.visible = false;
         if(this._textField.y == this._textFieldY)
         {
            this._textField.y += this.TEXT_FIELD_OFFSET;
         }
      }
      
      public function showLabel() : void
      {
         this._label.visible = true;
         this._textField.y = this._textFieldY;
      }
      
      public function get text() : String
      {
         return this._textField.text;
      }
      
      public function set label(param1:String) : void
      {
         this._label.text = param1;
      }
   }
}


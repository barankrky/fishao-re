package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class BigTextFieldWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _scroll:ScrollWrapper;
      
      private var _textField:TextField;
      
      private var _dontMoveScroll:Boolean;
      
      private var _lineCount:Number;
      
      public function BigTextFieldWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         addChild(_child);
         this.initScroll();
         this.initContent();
         this.updateScrollSize();
      }
      
      private function initScroll() : void
      {
         this._scroll = new VScrollWrapper();
         this._scroll.process((_child as DisplayObjectContainer).getChildByName("scroll"));
         this._scroll.moveHandler = this.scrollMoveHandler;
      }
      
      public function scrollMoveHandler(param1:Number) : void
      {
         var _loc2_:int = Math.ceil(this.distanceForScrollingInLines * param1);
         this.setTextFieldScrollPosition(_loc2_);
      }
      
      private function onTextFieldScroll(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(!this._dontMoveScroll && this._textField.maxScrollV > 1)
         {
            _loc2_ = (this._textField.scrollV - 1) / (Math.max(this._textField.maxScrollV,this._textField.scrollV) - 1);
            this._scroll.percent = _loc2_;
         }
      }
      
      private function initContent() : void
      {
         this._textField = (_child as DisplayObjectContainer).getChildByName("text") as TextField;
         this._textField.addEventListener(Event.CHANGE,this.onChangeTextField);
         this._textField.addEventListener(Event.SCROLL,this.onTextFieldScroll);
         this._lineCount = this._textField.numLines;
      }
      
      private function onChangeTextField(param1:Event) : void
      {
         if(this._textField.numLines != this._lineCount)
         {
            this.updateScrollSize();
            this._lineCount = this._textField.numLines;
         }
      }
      
      protected function updateScrollSize() : void
      {
         this.onTextFieldScroll(null);
         if(this.distanceForScrollingInLines > 1)
         {
            this._scroll.visible = true;
            this._scroll.setHandlerSize(this.screenSizeInLines / this._textField.bottomScrollV,20);
         }
         else
         {
            this._scroll.visible = false;
         }
      }
      
      private function get distanceForScrollingInLines() : Number
      {
         return this._textField.maxScrollV;
      }
      
      public function get screenSizeInLines() : Number
      {
         return this._textField.bottomScrollV - this._textField.scrollV;
      }
      
      protected function setTextFieldScrollPosition(param1:int) : void
      {
         if(param1 > 0 && param1 <= this._textField.maxScrollV)
         {
            this._dontMoveScroll = true;
            this._textField.scrollV = param1;
            this._dontMoveScroll = false;
         }
      }
      
      public function get text() : String
      {
         return this._textField.text;
      }
      
      public function set text(param1:String) : void
      {
         this._textField.text = param1;
      }
   }
}


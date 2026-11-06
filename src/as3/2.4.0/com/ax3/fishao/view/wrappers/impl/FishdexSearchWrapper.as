package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.utils.I18n;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FishdexSearchWrapper implements IAssetWrapper
   {
      
      private var _text:TextField;
      
      private var _serchCallback:Function;
      
      private var _reset:FishaoButtonWrapper;
      
      public function FishdexSearchWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._text = TextField(DisplayObjectContainer(param1).getChildByName("searchField"));
         this._reset = new FishaoButtonWrapper();
         this._reset.process(DisplayObjectContainer(param1).getChildByName("reset"));
         this._reset.visible = false;
         this._text.text = this.standart;
         this._text.addEventListener(MouseEvent.CLICK,this.focusIn);
         this._reset.addEventListener(MouseEvent.CLICK,this.resetClick);
         this._text.addEventListener(KeyboardEvent.KEY_UP,this.search);
      }
      
      private function get standart() : String
      {
         return I18n.get("FishdexSearch");
      }
      
      private function search(param1:KeyboardEvent) : void
      {
         this._serchCallback(this._text.text);
      }
      
      public function resetClick(param1:MouseEvent = null) : void
      {
         this._text.text = this.standart;
         this._serchCallback("");
         this._text.width = 176;
         this._reset.visible = false;
      }
      
      private function focusIn(param1:MouseEvent) : void
      {
         if(this._text.text == this.standart)
         {
            this._text.text = "";
            this._reset.visible = true;
            this._text.width = 159;
         }
      }
      
      public function set serchCallback(param1:Function) : void
      {
         this._serchCallback = param1;
      }
      
      public function get textField() : TextField
      {
         return this._text;
      }
   }
}


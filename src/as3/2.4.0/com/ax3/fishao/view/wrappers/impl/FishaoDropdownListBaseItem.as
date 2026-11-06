package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FishaoDropdownListBaseItem extends Sprite implements IDropdownListItem, IAssetWrapper
   {
      
      protected var _asset:DisplayObjectContainer;
      
      protected var _label:TextField;
      
      protected var _bg:MovieClip;
      
      private var _clickHandler:Function;
      
      private var _index:int;
      
      public function FishaoDropdownListBaseItem()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         addChild(this._asset);
         this._label = this._asset.getChildByName("label") as TextField;
         buttonMode = true;
         mouseChildren = false;
         this._bg = (this._asset as DisplayObjectContainer).getChildByName("bg") as MovieClip;
         (this._bg as MovieClip).gotoAndStop("normal");
         addEventListener(MouseEvent.ROLL_OVER,this.onRollOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.MOUSE_DOWN,this.onClick);
      }
      
      protected function onRollOver(param1:MouseEvent) : void
      {
         (this._bg as MovieClip).gotoAndStop("over");
      }
      
      protected function onRollOut(param1:MouseEvent) : void
      {
         (this._bg as MovieClip).gotoAndStop("normal");
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         this._clickHandler(param1);
      }
      
      public function set clickHandler(param1:Function) : void
      {
         this._clickHandler = param1;
      }
      
      public function get displayValue() : String
      {
         return this._label.text;
      }
      
      public function set displayValue(param1:String) : void
      {
         this._label.text = param1;
      }
      
      public function set index(param1:int) : void
      {
         this._index = param1;
      }
      
      public function get index() : int
      {
         return this._index;
      }
   }
}


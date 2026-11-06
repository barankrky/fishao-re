package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class TimezoneListItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _itemField:TextField;
      
      public function TimezoneListItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._itemField = this._asset.getChildByName("itemField") as TextField;
         this._itemField.mouseEnabled = false;
         MovieClip(this._asset).buttonMode = true;
         addChild(this._asset);
      }
      
      public function set data(param1:Object) : void
      {
         if(this._itemField != null && param1 is String)
         {
            this._itemField.text = String(param1);
         }
      }
      
      public function get data() : Object
      {
         return this._itemField.text;
      }
      
      public function updateData() : void
      {
      }
      
      public function select() : void
      {
         MovieClip(this._asset).gotoAndStop(2);
      }
      
      public function unselect() : void
      {
         MovieClip(this._asset).gotoAndStop(1);
      }
      
      public function get isSelected() : Boolean
      {
         return MovieClip(this._asset).currentFrame == 2;
      }
   }
}


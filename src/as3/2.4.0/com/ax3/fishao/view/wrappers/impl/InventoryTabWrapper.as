package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.view.wrappers.ITabButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class InventoryTabWrapper extends ShiftWrapper implements IAssetWrapper, ITabButtonWrapper
   {
      
      private var _tabUpLayer:Sprite;
      
      private var _tabDownLayer:Sprite;
      
      protected var _text:TextField;
      
      private var _active:Boolean = false;
      
      public function InventoryTabWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         MovieClip(_child).gotoAndStop(1);
         MovieClip(_child).buttonMode = true;
         this._text = TextField(MovieClip(_child).getChildByName("txt"));
         this._text.mouseEnabled = false;
         addChild(_child);
      }
      
      public function hide() : void
      {
         MovieClip(_child).visible = false;
      }
      
      public function show() : void
      {
         MovieClip(_child).visible = true;
      }
      
      public function init(param1:String, param2:Sprite, param3:Sprite, param4:String) : void
      {
         this.name = param4;
         this._text.text = param1;
         this._tabUpLayer = param2;
         this._tabDownLayer = param3;
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
         if(this._active)
         {
            this._tabUpLayer.addChild(this);
            MovieClip(_child).gotoAndStop(2);
         }
         else
         {
            this._tabDownLayer.addChild(this);
            MovieClip(_child).gotoAndStop(1);
         }
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
   }
}


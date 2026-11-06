package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.core.IMovieListElement;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FishdexBadgeWrapper extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      private var _text:TextField;
      
      private var _center:MovieClip;
      
      private var _right:MovieClip;
      
      public function FishdexBadgeWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         if(param1.parent == null)
         {
            addChild(param1);
         }
         this._text = TextField(DisplayObjectContainer(param1).getChildByName("txt"));
         this._center = MovieClip(DisplayObjectContainer(param1).getChildByName("center"));
         this._right = MovieClip(DisplayObjectContainer(param1).getChildByName("right"));
         this.text = "";
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1;
      }
      
      public function set text(param1:String) : void
      {
         this._text.text = param1;
         this._center.width = int(this._text.textWidth) + 8 > 50 ? int(this._text.textWidth) + 8 : 50;
         this._text.width = this._center.width;
         this._text.x = this._center.x;
         this._right.x = int(this._center.x + this._center.width) - 1;
      }
      
      public function get text() : String
      {
         return this._text.text;
      }
   }
}


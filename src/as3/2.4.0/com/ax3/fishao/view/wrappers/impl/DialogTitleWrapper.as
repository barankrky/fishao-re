package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class DialogTitleWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _dialogName:TextField;
      
      private var _left:MovieClip;
      
      private var _bg:MovieClip;
      
      private var _right:MovieClip;
      
      private var _initCenter:int;
      
      public function DialogTitleWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._initCenter = x + param1.width / 2;
         this._dialogName = TextField(MovieClip(_child).getChildByName("dialogName"));
         this._bg = MovieClip(MovieClip(_child).getChildByName("bg"));
         this._right = MovieClip(MovieClip(_child).getChildByName("right"));
         this._left = MovieClip(MovieClip(_child).getChildByName("left"));
         addChild(param1);
      }
      
      public function set text(param1:String) : void
      {
         this._dialogName.text = param1.toUpperCase();
         this._dialogName.width = this._dialogName.textWidth + 5;
         this._bg.width = int(this._dialogName.width + 0.5);
         this._bg.x = int(this._left.width);
         this._right.x = int(this._bg.width + this._left.width);
         x = int(this._initCenter - width / 2);
      }
   }
}


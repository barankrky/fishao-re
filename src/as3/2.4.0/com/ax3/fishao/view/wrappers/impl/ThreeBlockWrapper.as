package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class ThreeBlockWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      private var _text:TextField;
      
      private var _left:MovieClip;
      
      private var _bg:MovieClip;
      
      private var _right:MovieClip;
      
      private var _initCenter:int;
      
      private var _labelBg:MovieClip;
      
      public function ThreeBlockWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._initCenter = x + param1.width / 2;
         this._text = TextField(MovieClip(_child).getChildByName("label"));
         this._bg = MovieClip(MovieClip(_child).getChildByName("bg"));
         this._right = MovieClip(MovieClip(_child).getChildByName("right"));
         this._left = MovieClip(MovieClip(_child).getChildByName("left"));
         this._labelBg = MovieClip(MovieClip(_child).getChildByName("labelBg"));
         addChild(param1);
      }
      
      override public function set width(param1:Number) : void
      {
         this._bg.width = param1 - this._left.width - this._right.width;
         this._bg.x = int(this._left.width);
         if(this._labelBg != null)
         {
            this._labelBg.width = this._left.width + this._bg.width + this._right.width - 20;
         }
         this._text.x = int((this._left.width + this._bg.width + this._right.width - this._text.width) / 2 - 3);
         this._right.x = int(this._bg.x + this._bg.width);
         x = int(this._initCenter - width / 2);
      }
      
      public function set text(param1:String) : void
      {
         this._text.text = param1;
         if(this._text.width < this._text.textWidth + 5)
         {
            this._text.width = this._text.textWidth + 5;
            if(this._bg.width < this._text.width)
            {
               this._bg.width = this._text.width - this._left.width;
               this._bg.x = int(this._left.width);
               if(this._labelBg != null && this._labelBg.width < this._text.width)
               {
                  this._labelBg.width = this._left.width + this._bg.width + this._right.width - 20;
                  this._labelBg.x = int((this._left.width + this._bg.width + this._right.width - this._text.width) / 2 - 3);
               }
               this._right.x = int(this._bg.width + this._left.width);
               x = int(this._initCenter - width / 2);
            }
         }
      }
   }
}


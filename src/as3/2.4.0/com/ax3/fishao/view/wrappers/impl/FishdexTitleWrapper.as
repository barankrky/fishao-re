package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.utils.I18n;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class FishdexTitleWrapper implements IAssetWrapper
   {
      
      private var _title:TextField;
      
      private var _left:MovieClip;
      
      private var _center_left:MovieClip;
      
      private var _center:MovieClip;
      
      private var _center_right:MovieClip;
      
      private var _right:MovieClip;
      
      private const BASE_WIDTH:int = 514;
      
      private const LEFT_PADDING:int = 249;
      
      private var _child:DisplayObject;
      
      public function FishdexTitleWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
         this._title = TextField(DisplayObjectContainer(param1).getChildByName("titleText"));
         this._title.text = I18n.getUpper("fishdexTitle");
         this._left = MovieClip(DisplayObjectContainer(param1).getChildByName("left"));
         this._center_left = MovieClip(DisplayObjectContainer(param1).getChildByName("centr_left"));
         this._center = MovieClip(DisplayObjectContainer(param1).getChildByName("centr"));
         this._center_right = MovieClip(DisplayObjectContainer(param1).getChildByName("centr_right"));
         this._right = MovieClip(DisplayObjectContainer(param1).getChildByName("right"));
         this._title.width = this._title.textWidth + 4;
         var _loc2_:int = int((this._title.width - this._center.width) / 2);
         this._left.x = 0;
         this._center_left.x = int(this._left.width);
         this._center_left.width = _loc2_;
         this._center.x = int(this._center_left.x + this._center_left.width);
         this._center_right.x = int(this._center.x + this._center.width);
         this._center_right.width = _loc2_;
         this._right.x = int(this._center_right.x + this._center_right.width);
         param1.x = this.LEFT_PADDING + int((this.BASE_WIDTH - param1.width) / 2);
      }
      
      public function addChild(param1:DisplayObject) : void
      {
         DisplayObjectContainer(this._child).addChild(param1);
      }
   }
}


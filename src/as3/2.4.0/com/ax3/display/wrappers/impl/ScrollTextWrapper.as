package com.ax3.display.wrappers.impl
{
   import com.ax3.fishao.view.wrappers.impl.ScrollWithContainerWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class ScrollTextWrapper extends ScrollWithContainerWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      public var field:TextField;
      
      private var _initialFieldY:Number;
      
      public function ScrollTextWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = null;
         super.process(param1);
         _content = Sprite(param1);
         _loc2_ = _content.getChildByName("rect");
         this.field = TextField(_content.getChildByName("field"));
         this._initialFieldY = this.field.y;
         this.field.multiline = true;
         var _loc3_:DisplayObject = _content.getChildByName("scroll");
         addChild(_loc3_);
         removeAllChildren(_content);
         _content.addChild(this.field);
         _content.scrollRect = new Rectangle(0,0,_loc2_.width,_loc2_.height);
         _content.x = _loc2_.x;
         _content.y = _loc2_.y;
         addChild(_content);
      }
      
      public function set text(param1:String) : void
      {
         this.field.height = 1500;
         this.field.text = param1;
         scrollTo(0);
         this.redraw();
      }
      
      public function set htmlText(param1:String) : void
      {
         this.field.y = this._initialFieldY;
         this.field.height = 1500;
         this.field.htmlText = param1;
         this.redraw();
      }
      
      private function redraw() : void
      {
         var _loc1_:Rectangle = null;
         this.field.height = 1500;
         if(this.field.text.length > 0)
         {
            _loc1_ = this.field.getCharBoundaries(this.field.text.length - 1);
            if(_loc1_ != null)
            {
               this.field.height = _loc1_.y + _loc1_.height + 5;
            }
            else
            {
               this.field.height = this.field.textHeight + 5;
            }
         }
         else
         {
            this.field.height = this.field.textHeight + 5;
         }
         _contentHeight = this.field.y + this.field.height + 10;
         updateScroll();
      }
      
      public function onAssetProcessComplete() : void
      {
      }
      
      public function resizeTextFieldToContainer() : void
      {
         this.field.height = _content.scrollRect.height - 5;
      }
   }
}


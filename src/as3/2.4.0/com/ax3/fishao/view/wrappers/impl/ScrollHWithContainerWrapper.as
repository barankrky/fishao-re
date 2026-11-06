package com.ax3.fishao.view.wrappers.impl
{
   import flash.display.DisplayObjectContainer;
   import flash.geom.Rectangle;
   
   public class ScrollHWithContainerWrapper extends ScrollWithContainerWrapper
   {
      
      protected var _contentWidth:Number;
      
      public function ScrollHWithContainerWrapper()
      {
         super();
      }
      
      public function get contentWidth() : Number
      {
         return this._contentWidth;
      }
      
      override protected function initScroll() : void
      {
         _scroll = new HScrollWrapper();
         _scroll.process((_child as DisplayObjectContainer).getChildByName("scroll"));
         _scroll.moveHandler = scrollMoveHandler;
      }
      
      override protected function get distanceForScrolling() : Number
      {
         return this._contentWidth - _content.scrollRect.width;
      }
      
      override protected function scrollTo(param1:int) : void
      {
         var _loc2_:Rectangle = null;
         if(param1 >= 0 && param1 <= this.distanceForScrolling)
         {
            _loc2_ = _content.scrollRect;
            _loc2_.x = param1;
            _content.scrollRect = _loc2_;
         }
      }
      
      override public function updateScroll() : void
      {
         _scroll.percent = 0;
         var _loc1_:Number = this.distanceForScrolling;
         if(_loc1_ > 1)
         {
            _scroll.visible = true;
            _scroll.setHandlerSize(_content.scrollRect.width / this._contentWidth,20);
         }
         else
         {
            _scroll.visible = false;
         }
      }
   }
}


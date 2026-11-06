package com.ax3.fishao.tutorial.helpers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   
   public class FocusedViewInfo
   {
      
      private var _position:Point;
      
      private var _parent:DisplayObjectContainer;
      
      private var _view:DisplayObject;
      
      public function FocusedViewInfo(param1:DisplayObject)
      {
         super();
         this._view = param1;
         this._parent = this._view.parent;
         this._position = new Point(param1.x,param1.y);
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._parent;
      }
      
      public function get view() : DisplayObject
      {
         return this._view;
      }
      
      public function get positionOnLayerTutorial() : Point
      {
         var _loc1_:Point = new Point();
         if(this._parent != null)
         {
            _loc1_ = this._parent.localToGlobal(this._position);
         }
         return _loc1_;
      }
      
      public function update() : void
      {
         var _loc1_:Point = this.positionOnLayerTutorial;
         this._view.x = _loc1_.x;
         this._view.y = _loc1_.y;
      }
      
      public function tryRestoreToParent() : void
      {
         if(this._parent == null || this._view.parent == this._parent)
         {
            return;
         }
         this._parent.addChild(this._view);
         this._view.x = this._position.x;
         this._view.y = this._position.y;
      }
   }
}


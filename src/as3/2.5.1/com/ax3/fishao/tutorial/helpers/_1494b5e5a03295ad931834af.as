package com.ax3.fishao.tutorial.helpers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   
   public class _1494b5e5a03295ad931834af
   {
      
      private var _a8c4ce4a3dd7f93b02e6343f:Point;
      
      private var _821a1f659e83dbce2be186e3:DisplayObjectContainer;
      
      private var _af122e14d13725e0b8de15c4:DisplayObject;
      
      public function _1494b5e5a03295ad931834af(param1:DisplayObject)
      {
         super();
         this._af122e14d13725e0b8de15c4 = param1;
         this._821a1f659e83dbce2be186e3 = this._af122e14d13725e0b8de15c4.parent;
         this._a8c4ce4a3dd7f93b02e6343f = new Point(param1.x,param1.y);
      }
      
      public function get position() : Point
      {
         return this._a8c4ce4a3dd7f93b02e6343f;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this._821a1f659e83dbce2be186e3;
      }
      
      public function get view() : DisplayObject
      {
         return this._af122e14d13725e0b8de15c4;
      }
      
      public function get positionOnLayerTutorial() : Point
      {
         var _loc1_:Point = new Point();
         if(this._821a1f659e83dbce2be186e3 != null)
         {
            _loc1_ = this._821a1f659e83dbce2be186e3.localToGlobal(this._a8c4ce4a3dd7f93b02e6343f);
         }
         return _loc1_;
      }
      
      public function update() : void
      {
         var _loc1_:Point = this.positionOnLayerTutorial;
         this._af122e14d13725e0b8de15c4.x = _loc1_.x;
         this._af122e14d13725e0b8de15c4.y = _loc1_.y;
      }
      
      public function _edc25d3261cfa0589be172fc() : void
      {
         if(this._821a1f659e83dbce2be186e3 == null || this._af122e14d13725e0b8de15c4.parent == this._821a1f659e83dbce2be186e3)
         {
            return;
         }
         this._821a1f659e83dbce2be186e3.addChild(this._af122e14d13725e0b8de15c4);
         this._af122e14d13725e0b8de15c4.x = this._a8c4ce4a3dd7f93b02e6343f.x;
         this._af122e14d13725e0b8de15c4.y = this._a8c4ce4a3dd7f93b02e6343f.y;
      }
   }
}


package com.ax3.fishao.tutorial.helpers.masks
{
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   
   public class TutorialMaskRectangle extends TutorialMaskBase
   {
      
      private var _functionGetSize:Function;
      
      private var _lastSize:Point;
      
      public function TutorialMaskRectangle()
      {
         super();
      }
      
      public function set functionGetSize(param1:Function) : void
      {
         this._functionGetSize = param1;
      }
      
      public function get lastSize() : Point
      {
         return this._lastSize;
      }
      
      override public function update() : void
      {
         _lastPosition = _functionGetPosition() as Point;
         this._lastSize = this._functionGetSize() as Point;
         if(_lastPosition != null && this._lastSize != null)
         {
            _maskView.graphics.clear();
            _maskView.graphics.beginFill(0);
            _maskView.graphics.drawRoundRect(_lastPosition.x,_lastPosition.y,this._lastSize.x,this._lastSize.y,10,10);
            _maskView.graphics.endFill();
         }
         else
         {
            Cc.log("rect mask size is null:" + this._lastSize == null);
            Cc.log("rect mask position is null:" + _lastPosition == null);
         }
      }
   }
}


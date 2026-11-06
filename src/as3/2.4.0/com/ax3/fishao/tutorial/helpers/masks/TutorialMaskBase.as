package com.ax3.fishao.tutorial.helpers.masks
{
   import com.ax3.fishao.debug.Debug;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class TutorialMaskBase
   {
      
      protected var _functionGetPosition:Function;
      
      protected var _maskView:Sprite;
      
      protected var _lastPosition:Point;
      
      public function TutorialMaskBase()
      {
         super();
         this._maskView = new Sprite();
         this._maskView.blendMode = BlendMode.ERASE;
      }
      
      public function set functionGetPosition(param1:Function) : void
      {
         this._functionGetPosition = param1;
      }
      
      public function get maskView() : Sprite
      {
         return this._maskView;
      }
      
      public function get lastPosition() : Point
      {
         return this._lastPosition;
      }
      
      public function update() : void
      {
         Debug.assert(false);
      }
      
      public function cleanup() : void
      {
         if(this._maskView != null && this._maskView.parent != null)
         {
            this._maskView.parent.removeChild(this._maskView);
         }
      }
   }
}


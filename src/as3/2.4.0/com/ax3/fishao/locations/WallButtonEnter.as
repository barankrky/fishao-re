package com.ax3.fishao.locations
{
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import com.inkora.tween.TweenCube;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class WallButtonEnter extends SublocationEnter
   {
      
      public var activated:Boolean = false;
      
      private var _buttonAsset:MovieClip;
      
      private var _currentActivationState:Boolean = false;
      
      public var activatedBySomebody:Boolean = false;
      
      public function WallButtonEnter()
      {
         super();
      }
      
      public function processButton(param1:DisplayObject) : void
      {
         id = SublocationEnter.findIdByName(param1.name);
         this._buttonAsset = MovieClip(param1);
         this._buttonAsset.stop();
         this._buttonAsset.gotoAndStop(1);
      }
      
      public function update() : void
      {
         if(this._buttonAsset != null && this._currentActivationState != this.activated)
         {
            this._currentActivationState = this.activated;
            if(this._currentActivationState)
            {
               TweenCube.destroyTweensOf(this,false);
               TweenCube.to(this,2.4,{"frame":this._buttonAsset.totalFrames},{"loop":0});
            }
            else
            {
               TweenCube.destroyTweensOf(this,false);
               this._buttonAsset.gotoAndStop(1);
            }
         }
      }
      
      public function set frame(param1:int) : void
      {
         this._buttonAsset.gotoAndStop(param1);
      }
      
      public function get frame() : int
      {
         return this._buttonAsset.currentFrame;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         TweenCube.destroyTweensOf(this,false);
         this._buttonAsset = null;
      }
   }
}


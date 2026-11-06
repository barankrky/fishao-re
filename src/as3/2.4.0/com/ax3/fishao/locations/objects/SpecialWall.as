package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.BitmapUtil;
   import com.inkora.tween.TweenCube;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class SpecialWall
   {
      
      private var _asset:MovieClip;
      
      private var _isOpen:Boolean;
      
      private var _obstacleMap:BitmapData;
      
      private var _obstacleMapBounds:Rectangle;
      
      private var _xOffset:Number;
      
      private var _yOffset:Number;
      
      public function SpecialWall()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName("obstacleMap");
         this._obstacleMapBounds = _loc2_.getBounds(_loc2_);
         this._obstacleMap = BitmapUtil.cloneWithBounds(_loc2_);
         _loc2_.visible = false;
         this._asset.gotoAndStop(1);
         this._xOffset = this._asset.x + this._obstacleMapBounds.x;
         this._yOffset = this._asset.y + this._obstacleMapBounds.y;
      }
      
      public function open() : void
      {
         if(this._isOpen == false)
         {
            this._isOpen = true;
            FishaoSoundManager.playLoop(FishaoSoundManager.SFX_064_MOV_Thombani_pillars_loop);
            TweenCube.destroyTweensOf(this,false);
            TweenCube.to(this,2,{"frame":this._asset.totalFrames},{"onComplete":this.onOpenComplete});
         }
      }
      
      private function onOpenComplete() : void
      {
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_064_MOV_Thombani_pillars_loop);
         FishaoSoundManager.play(FishaoSoundManager.SFX_064_MOV_Thombani_pillars_end);
      }
      
      public function close() : Boolean
      {
         if(this._isOpen == true)
         {
            this._isOpen = false;
            FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_064_MOV_Thombani_pillars_loop);
            TweenCube.destroyTweensOf(this,false);
            this._asset.gotoAndStop(1);
            return true;
         }
         return false;
      }
      
      public function set frame(param1:int) : void
      {
         if(this._asset.currentFrame != param1)
         {
            this._asset.gotoAndStop(param1);
         }
      }
      
      public function get frame() : int
      {
         return this._asset.currentFrame;
      }
      
      public function isFullOpened() : Boolean
      {
         return this._isOpen && this._asset.currentFrame == this._asset.totalFrames;
      }
      
      public function hitTest(param1:Number, param2:Number) : Boolean
      {
         param1 -= this._xOffset;
         param2 -= this._yOffset;
         return this.isFullOpened() == false && this._obstacleMap != null && param1 > 0 && param2 > 0 && param1 < this._obstacleMap.width && param2 < this._obstacleMap.height && this._obstacleMap.getPixel32(param1,param2) > 16777215;
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._obstacleMap.dispose();
         this._obstacleMap = null;
      }
   }
}


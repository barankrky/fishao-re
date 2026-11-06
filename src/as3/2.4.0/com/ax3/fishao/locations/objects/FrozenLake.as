package com.ax3.fishao.locations.objects
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.BitmapUtil;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class FrozenLake extends Sprite
   {
      
      public static const ICE:String = "ice";
      
      public static const WATER:String = "water";
      
      public static const FREEZING:String = "freezing";
      
      public static const MELTING:String = "melting";
      
      private static const FROZE_TIME:int = 11;
      
      private static const MELT_TIME:int = 11;
      
      private var _asset:MovieClip;
      
      private var _isFrozen:Boolean = false;
      
      private var _obstacleMap:BitmapData;
      
      private var _obstacleMapBounds:Rectangle;
      
      public var xOffset:Number;
      
      public var yOffset:Number;
      
      public var origX:Number;
      
      public var origY:Number;
      
      public function FrozenLake()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         this.origX = this._asset.x;
         this.origY = this._asset.y;
         var _loc2_:DisplayObject = this._asset.getChildByName("obstacleMap");
         this._obstacleMapBounds = _loc2_.getBounds(_loc2_);
         this._obstacleMap = BitmapUtil.cloneWithBounds(_loc2_);
         _loc2_.visible = false;
         this.frame = 1;
         this.xOffset = this._asset.x + this._obstacleMapBounds.x;
         this.yOffset = this._asset.y + this._obstacleMapBounds.y;
         ShiftWrapper.shiftDisplayObject(this._asset,this);
         addChild(this._asset);
         this.visible = false;
      }
      
      public function freeze() : void
      {
         Cc.log("Water freeze",this._isFrozen);
         if(this._isFrozen == false)
         {
            this._isFrozen = true;
            this.visible = true;
            TweenCube.destroyTweensOf(this,true);
            this.frame = 1;
            TweenCube.to(this,FROZE_TIME,{"frame":this._asset.totalFrames},{"onComplete":this.onFreezeComplete});
         }
         else
         {
            Cc.warn("Water already is frozen");
         }
      }
      
      private function onFreezeComplete() : void
      {
         Cc.log("onFreezeComplete");
      }
      
      public function thawOut() : Boolean
      {
         Cc.log("Water thraw out",this._isFrozen);
         if(this._isFrozen == true)
         {
            FishaoSoundManager.playLoop(FishaoSoundManager.SFX_026_AMB_Ice_MERGED);
            TweenCube.destroyTweensOf(this,true);
            TweenCube.to(this,MELT_TIME,{"frame":1},{"onComplete":this.onThawOutComplete});
            return true;
         }
         Cc.warn("Water already is not frozen");
         return false;
      }
      
      private function onThawOutComplete() : void
      {
         FishaoSoundManager.stopLoop(FishaoSoundManager.SFX_026_AMB_Ice_MERGED);
         Cc.log("onThawOutComplete");
         this._isFrozen = false;
         this.visible = false;
      }
      
      public function set frame(param1:int) : void
      {
         if(this._asset != null && this._asset.currentFrame != param1)
         {
            this._asset.gotoAndStop(param1);
         }
      }
      
      public function get frame() : int
      {
         return this._asset.currentFrame;
      }
      
      public function get isFullFreezen() : Boolean
      {
         return this._isFrozen && this._asset.currentFrame == this._asset.totalFrames;
      }
      
      public function hitTest(param1:Number, param2:Number) : Boolean
      {
         param1 -= this.xOffset;
         param2 -= this.yOffset;
         return this._isFrozen == true && this._obstacleMap != null && param1 > 0 && param2 > 0 && param1 < this._obstacleMap.width && param2 < this._obstacleMap.height && this._obstacleMap.getPixel32(param1,param2) > 16777215;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(this._asset != null)
         {
            if(param1)
            {
               this._asset.gotoAndStop(this._asset.totalFrames);
            }
            this._asset.visible = this._isFrozen && param1;
         }
      }
      
      public function makeFrozen() : void
      {
         TweenCube.destroyTweensOf(this,true);
         this._isFrozen = true;
         this.visible = true;
      }
      
      public function makeUnfrozen() : void
      {
         TweenCube.destroyTweensOf(this,true);
         this._isFrozen = false;
         this.visible = false;
      }
      
      override public function get width() : Number
      {
         return this._asset.width;
      }
      
      override public function get height() : Number
      {
         return this._asset.height;
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._obstacleMap.dispose();
         this._obstacleMap = null;
         this._obstacleMapBounds = null;
      }
   }
}


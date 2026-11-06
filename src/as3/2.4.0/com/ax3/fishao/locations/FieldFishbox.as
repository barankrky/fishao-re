package com.ax3.fishao.locations
{
   import assets.common.Fishbox;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.geom.Point;
   
   public class FieldFishbox extends Fishbox
   {
      
      public var position:Point;
      
      public function FieldFishbox()
      {
         super();
         gotoAndStop(1);
      }
      
      public function add() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,1,{"frame":30},{"ease":Cubic.easeOut});
      }
      
      public function remove() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,1,{"frame":60},{"ease":Cubic.easeOut});
      }
      
      private function destroy() : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
      }
      
      public function get frame() : int
      {
         return this.currentFrame;
      }
      
      public function set frame(param1:int) : void
      {
         gotoAndStop(param1);
      }
   }
}


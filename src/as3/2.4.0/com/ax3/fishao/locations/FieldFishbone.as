package com.ax3.fishao.locations
{
   import assets.common.Fishbones;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.geom.Point;
   
   public class FieldFishbone extends Fishbones
   {
      
      public var position:Point;
      
      public function FieldFishbone()
      {
         super();
         mouseEnabled = false;
         mouseChildren = false;
      }
      
      public function add() : void
      {
         var _loc1_:int = (this.x + this.y) % 3 + 1;
         this.gotoAndStop(_loc1_);
         TweenCube.from(this,1,{
            "alpha":0,
            "y":y - 20
         },{"ease":Cubic.easeOut});
      }
      
      public function remove() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,1,{
            "alpha":0,
            "y":y - 40
         },{
            "onComplete":this.destroy,
            "ease":Cubic.easeOut
         });
      }
      
      public function destroy() : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
      }
   }
}


package com.ax3.fishao.locations.weather
{
   import com.inkora.tween.TweenCube;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class Weather extends Sprite
   {
      
      public function Weather(param1:Object)
      {
         super();
         alpha = 0;
         TweenCube.to(this,3,{"alpha":1});
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         super.scrollRect = param1;
      }
      
      public function destroy() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,3,{"alpha":0},{"onComplete":this.onComplete});
      }
      
      private function onComplete() : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
      }
   }
}


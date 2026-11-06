package com.ax3.fishao.locations
{
   import com.ax3.fishao.debug.Debug;
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.geom.Point;
   
   public class FieldBobsMinigameFishCoin extends gViewFishcoin
   {
      
      private var _position:Point;
      
      public function FieldBobsMinigameFishCoin(param1:Point)
      {
         super();
         scaleX = 0.5;
         scaleY = 0.5;
         mouseEnabled = false;
         mouseChildren = false;
         this._position = Debug.assertNotEqual(param1,null);
         this.x = this._position.x;
         this.y = this._position.y;
      }
      
      public function get position() : Point
      {
         return this._position;
      }
      
      public function add() : void
      {
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


package com.ax3.fishao.locations
{
   import com.inkora.easing.Cubic;
   import com.inkora.tween.TweenCube;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class FieldShell extends Bitmap
   {
      
      public var position:Point;
      
      public function FieldShell()
      {
         super();
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
            "y":y - 20
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


package com.ax3.fishao.locations.objects
{
   import flash.display.DisplayObjectContainer;
   
   public class ViewSecretEntranceWall extends ViewSpecial
   {
      
      public function ViewSecretEntranceWall(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         proceedWithObstacle();
      }
   }
}


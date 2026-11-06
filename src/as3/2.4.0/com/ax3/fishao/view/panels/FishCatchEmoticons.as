package com.ax3.fishao.view.panels
{
   import flash.display.MovieClip;
   
   public class FishCatchEmoticons extends FISH_CATCH_EMOTICONS
   {
      
      public var smallFish:MovieClip;
      
      public var mediumFish:MovieClip;
      
      public var largeFish:MovieClip;
      
      public var fiveStarFish:MovieClip;
      
      public function FishCatchEmoticons()
      {
         super();
         this.smallFish = getChildByName("small") as MovieClip;
         this.mediumFish = getChildByName("normal") as MovieClip;
         this.largeFish = getChildByName("big") as MovieClip;
         this.fiveStarFish = getChildByName("fivestar") as MovieClip;
         this.smallFish.gotoAndStop(1);
         this.mediumFish.gotoAndStop(1);
         this.largeFish.gotoAndStop(1);
         this.fiveStarFish.gotoAndStop(1);
         this.smallFish.visible = false;
         this.mediumFish.visible = false;
         this.largeFish.visible = false;
         this.fiveStarFish.visible = false;
         this.smallFish.y -= 65;
         this.mediumFish.y -= 65;
         this.largeFish.y -= 75;
         this.fiveStarFish.y -= 80;
      }
      
      public function showSmallEmoticon() : void
      {
         this.smallFish.visible = true;
         this.smallFish.gotoAndPlay(1);
      }
      
      public function showMediumEmoticon() : void
      {
         this.mediumFish.visible = true;
         this.mediumFish.gotoAndPlay(1);
      }
      
      public function showLargeEmoticon() : void
      {
         this.largeFish.visible = true;
         this.largeFish.gotoAndPlay(1);
      }
      
      public function showFiveStarEmoticon() : void
      {
         this.fiveStarFish.visible = true;
         this.fiveStarFish.gotoAndPlay(1);
      }
   }
}


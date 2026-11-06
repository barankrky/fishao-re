package assets.common
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12139")]
   public dynamic class SwimmingFishShadowSmall1 extends MovieClip
   {
      
      public function SwimmingFishShadowSmall1()
      {
         super();
         addFrameScript(119,this.frame120);
      }
      
      internal function frame120() : *
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}


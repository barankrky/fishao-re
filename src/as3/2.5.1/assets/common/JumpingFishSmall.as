package assets.common
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12177")]
   public dynamic class JumpingFishSmall extends MovieClip
   {
      
      public function JumpingFishSmall()
      {
         super();
         addFrameScript(28,this.frame29);
      }
      
      internal function frame29() : *
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}


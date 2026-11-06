package assets.common
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12135")]
   public dynamic class JumpingFishNormal extends MovieClip
   {
      
      public function JumpingFishNormal()
      {
         super();
         addFrameScript(30,this.frame31);
      }
      
      internal function frame31() : *
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}


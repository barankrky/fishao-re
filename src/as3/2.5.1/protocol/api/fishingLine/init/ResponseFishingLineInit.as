package protocol.api.fishingLine.init
{
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   import protocol.api.improvable.ResponseImprovable;
   
   public class ResponseFishingLineInit extends ResponseImprovable
   {
      
      private var _color:String;
      
      public function ResponseFishingLineInit()
      {
         super();
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function set color(param1:String) : void
      {
         this._color = param1;
      }
      
      override protected function get levelInfoClass() : Class
      {
         return FishingLineLevelInfo;
      }
   }
}


package protocol.api.fishingLine.data
{
   import com.ax3.fishao.debug.Debug;
   import protocol.api.improvable.ImprovableLevelInfo;
   
   public class FishingLineLevelInfo extends ImprovableLevelInfo
   {
      
      private var _lineLength:uint;
      
      private var _availableColors:Array;
      
      public function FishingLineLevelInfo()
      {
         super();
         this._availableColors = [];
      }
      
      public function get lineLength() : uint
      {
         return this._lineLength;
      }
      
      public function get availableColors() : Array
      {
         return this._availableColors;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         this._lineLength = Debug.assertProperty(param1,"line_length");
         this._availableColors = Debug.assertProperty(param1,"available_colors",Array);
      }
   }
}


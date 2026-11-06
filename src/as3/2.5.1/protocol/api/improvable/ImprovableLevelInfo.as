package protocol.api.improvable
{
   import com.ax3.fishao.core._da2facf75d08e7f9226a6df7;
   import com.ax3.fishao.debug.Debug;
   
   public class ImprovableLevelInfo implements _da2facf75d08e7f9226a6df7
   {
      
      private var _number:uint;
      
      private var _timeUpgrade:uint;
      
      private var _priceUpgrade:uint;
      
      public function ImprovableLevelInfo()
      {
         super();
      }
      
      public function get number() : uint
      {
         return this._number;
      }
      
      public function get timeUpgrade() : uint
      {
         return this._timeUpgrade;
      }
      
      public function get priceUpgrade() : uint
      {
         return this._priceUpgrade;
      }
      
      public function serialize() : Object
      {
         return null;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._number = Debug.assertProperty(param1,"number");
         this._timeUpgrade = Debug.assertProperty(param1,"time_upgrade");
         this._priceUpgrade = Debug.assertProperty(param1,"price_upgrade");
      }
   }
}


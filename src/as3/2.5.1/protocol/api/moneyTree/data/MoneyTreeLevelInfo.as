package protocol.api.moneyTree.data
{
   import com.ax3.fishao.core._da2facf75d08e7f9226a6df7;
   import com.ax3.fishao.debug.Debug;
   import protocol.api.improvable.ImprovableLevelInfo;
   
   public class MoneyTreeLevelInfo extends ImprovableLevelInfo implements _da2facf75d08e7f9226a6df7
   {
      
      private var _fishbucksPerDay:uint;
      
      private var _fishcoinsPerDay:uint;
      
      public function MoneyTreeLevelInfo()
      {
         super();
      }
      
      public function get fishbucksPerDay() : uint
      {
         return this._fishbucksPerDay;
      }
      
      public function get fishcoinsPerDay() : uint
      {
         return this._fishcoinsPerDay;
      }
      
      override public function deserialize(param1:Object) : void
      {
         super.deserialize(param1);
         this._fishcoinsPerDay = Debug.assertProperty(param1,"fishcoins_per_day");
         this._fishbucksPerDay = Debug.assertProperty(param1,"fishbucks_per_day");
      }
   }
}


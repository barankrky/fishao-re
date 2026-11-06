package protocol.api.moneyTree.init
{
   import protocol.api.improvable.ResponseImprovable;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   
   public class ResponseMoneyTreeInit extends ResponseImprovable
   {
      
      private var _timeToNextGenerate:int;
      
      private var _fishcoinsLeft:int;
      
      private var _fishbucksLeft:int;
      
      public function ResponseMoneyTreeInit()
      {
         super();
      }
      
      public function get timeToNextGenerate() : int
      {
         return this._timeToNextGenerate;
      }
      
      public function set timeToNextGenerate(param1:int) : void
      {
         this._timeToNextGenerate = param1;
      }
      
      public function get fishcoinsLeft() : int
      {
         return this._fishcoinsLeft;
      }
      
      public function set fishcoinsLeft(param1:int) : void
      {
         this._fishcoinsLeft = param1;
      }
      
      public function get fishbucksLeft() : int
      {
         return this._fishbucksLeft;
      }
      
      public function set fishbucksLeft(param1:int) : void
      {
         this._fishbucksLeft = param1;
      }
      
      override protected function get levelInfoClass() : Class
      {
         return MoneyTreeLevelInfo;
      }
   }
}


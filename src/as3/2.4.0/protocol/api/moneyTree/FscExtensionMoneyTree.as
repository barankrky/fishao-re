package protocol.api.moneyTree
{
   import protocol.api.improvable.FscExtensionImprovable;
   import protocol.api.moneyTree.init.RequestMoneyTreeInit;
   import protocol.api.moneyTree.rewardCollect.RequestMoneyTreeRewardCollect;
   import protocol.api.moneyTree.rewardGenerate.RequestMoneyTreeRewardGenerate;
   import protocol.api.moneyTree.upgradeByTime.RequestMoneyTreeUpgradeLevelByTime;
   import protocol.api.moneyTree.upgradeLevel.RequestMoneyTreeUpgradeLevel;
   import protocol.api.moneyTree.upgradeLevelEarly.RequestMoneyTreeUpgradeLevelEarly;
   
   public class FscExtensionMoneyTree extends FscExtensionImprovable
   {
      
      public function FscExtensionMoneyTree()
      {
         super();
      }
      
      public function collectReward(param1:uint, param2:uint, param3:Function) : void
      {
         var _loc4_:RequestMoneyTreeRewardCollect = new RequestMoneyTreeRewardCollect();
         _loc4_.fishbucksCount = param1;
         _loc4_.fishcoinsCount = param2;
         _connection.send(_loc4_,param3);
      }
      
      public function generateReward(param1:Function) : void
      {
         _connection.send(new RequestMoneyTreeRewardGenerate(),param1);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestMoneyTreeInit(),param1);
      }
      
      override public function upgradeLevel(param1:Function) : void
      {
         _connection.send(new RequestMoneyTreeUpgradeLevel(),param1);
      }
      
      override public function upgradeLevelEarly(param1:Function) : void
      {
         _connection.send(new RequestMoneyTreeUpgradeLevelEarly(),param1);
      }
      
      override public function upgradeLevelByTime(param1:Function) : void
      {
         _connection.send(new RequestMoneyTreeUpgradeLevelByTime(),param1);
      }
   }
}


package protocol.api.fishingLine
{
   import protocol.api.fishingLine.init.RequestFishingLineInit;
   import protocol.api.fishingLine.updateColor.RequestFishingLineUpdateColor;
   import protocol.api.fishingLine.upgradeByTime.RequestFishingLineUpgradeLevelByTime;
   import protocol.api.fishingLine.upgradeLevel.RequestFishingLineUpgradeLevel;
   import protocol.api.fishingLine.upgradeLevelEarly.RequestFishingLineUpgradeLevelEarly;
   import protocol.api.improvable.FscExtensionImprovable;
   
   public class FscExtensionFishingLine extends FscExtensionImprovable
   {
      
      public function FscExtensionFishingLine()
      {
         super();
      }
      
      public function updateFishingLineColor(param1:Function, param2:String) : void
      {
         var _loc3_:RequestFishingLineUpdateColor = new RequestFishingLineUpdateColor();
         _loc3_.color = param2;
         _connection.send(_loc3_,param1);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestFishingLineInit(),param1);
      }
      
      override public function upgradeLevel(param1:Function) : void
      {
         _connection.send(new RequestFishingLineUpgradeLevel(),param1);
      }
      
      override public function upgradeLevelEarly(param1:Function) : void
      {
         _connection.send(new RequestFishingLineUpgradeLevelEarly(),param1);
      }
      
      override public function upgradeLevelByTime(param1:Function) : void
      {
         _connection.send(new RequestFishingLineUpgradeLevelByTime(),param1);
      }
   }
}


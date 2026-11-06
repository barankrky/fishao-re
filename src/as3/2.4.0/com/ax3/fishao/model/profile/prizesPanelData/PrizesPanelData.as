package com.ax3.fishao.model.profile.prizesPanelData
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.profile.ProfilePanelData;
   import com.ax3.fishao.utils.Preloader;
   import protocol.sr.profile.ProfilePrizesResp;
   
   public class PrizesPanelData extends ProfilePanelData
   {
      
      public var userPrizesList:Vector.<Object>;
      
      public function PrizesPanelData()
      {
         super();
         this.userPrizesList = new Vector.<Object>(0);
      }
      
      private static function sortPrizesByTimestamp(param1:UserPrizeData, param2:UserPrizeData) : Number
      {
         if(param1.timeReceivedAgo > param2.timeReceivedAgo)
         {
            return 1;
         }
         if(param1.timeReceivedAgo < param2.timeReceivedAgo)
         {
            return -1;
         }
         return 0;
      }
      
      private function onGetPrizes(param1:ProfilePrizesResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:UserPrizeData = null;
         this.userPrizesList = new Vector.<Object>(0);
         var _loc4_:Object = JSON.parse(param1.data);
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = new UserPrizeData();
            _loc3_.deserialize(_loc2_);
            this.userPrizesList.push(_loc3_);
         }
         this.userPrizesList.sort(sortPrizesByTimestamp);
         _callback();
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         this.userPrizesList = new Vector.<Object>(0);
         super.load(param1,param2);
         FishaoFscModelManager.profileExtension.getProfilePrizesInfo(_login,Preloader.waitForResponse(this.onGetPrizes));
      }
   }
}


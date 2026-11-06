package com.ax3.fishao.model.profile.fishesPanelData
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.profile.ProfilePanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.view.dialogs.fishes.model.FishUserInfo;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.sr.profile.ProfileFishesResp;
   
   public class FishesPanelData extends ProfilePanelData
   {
      
      public var caughtFishes:Number;
      
      public var totalFishes:Number;
      
      public var userCaughtFishesList:Vector.<Object>;
      
      public function FishesPanelData()
      {
         super();
      }
      
      private static function orderByRealNames(param1:Object, param2:Object) : int
      {
         var _loc3_:String = param1.realName;
         var _loc4_:String = param2.realName;
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      private function onGetCaughtFishes(param1:ServerResp) : void
      {
         FishaoFscModelManager.profileExtension.getProfileFishesInfo(_login,Preloader.waitForResponse(this.onGetProfileFishesInfo));
      }
      
      private function onGetProfileFishesInfo(param1:ProfileFishesResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:FishUserInfo = null;
         var _loc6_:Boolean = false;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         this.userCaughtFishesList = new Vector.<Object>(0);
         var _loc10_:Object = JSON.parse(param1.caughtFishIdes);
         if(_loc10_ is Array)
         {
            _loc2_ = _loc10_ as Array;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = Number(_loc2_[_loc3_]);
               _loc5_ = GameSwf.instance.managerFishes.fishesUserMap[_loc4_.toString()];
               _loc6_ = _loc5_ ? true : false;
               _loc7_ = _loc6_ ? I18n.get("fish_" + _loc4_) : "?";
               _loc8_ = "fishes/fish_300x76_" + _loc4_.toString();
               _loc9_ = I18n.get("fish_" + _loc4_);
               this.addFish(_loc4_.toString(),_loc7_,_loc8_,_loc6_,_loc9_);
               _loc3_++;
            }
            this.userCaughtFishesList.sort(orderByRealNames);
         }
         this.caughtFishes = this.userCaughtFishesList.length;
         this.totalFishes = param1.amountOfAllFishTypes;
         _callback();
      }
      
      override public function load(param1:String, param2:Function) : void
      {
         this.userCaughtFishesList = new Vector.<Object>(0);
         super.load(param1,param2);
         GameSwf.instance.managerFishes.getFishdexData(Preloader.waitForResponse(this.onGetCaughtFishes));
      }
      
      private function addFish(param1:String, param2:String, param3:String, param4:Boolean, param5:String) : void
      {
         this.userCaughtFishesList.push(new UserCaughtFishData(param1,param2,param3,param4,param5));
      }
   }
}


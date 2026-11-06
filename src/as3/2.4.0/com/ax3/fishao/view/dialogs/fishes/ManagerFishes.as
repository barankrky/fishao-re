package com.ax3.fishao.view.dialogs.fishes
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.fishes.model.FishUserInfo;
   import com.ax3.fishao.view.dialogs.monster_fishes.ManagerMonsterFishes;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.utils.Dictionary;
   import protocol.api.fishes.FscExtensionFishes;
   import protocol.api.fishes.getRelevant.ResponseFishesGetRelevant;
   
   public class ManagerFishes extends ManagerBase
   {
      
      private var _extensionFishes:FscExtensionFishes;
      
      private var _fishesUser:Array;
      
      private var _fishesUserMap:Dictionary;
      
      private var _userFishesUnavailable:Array;
      
      private var _managerMonsterFishes:ManagerMonsterFishes;
      
      public function ManagerFishes()
      {
         super();
         this.init();
      }
      
      public static function sortByFishName(param1:FishUserInfo, param2:FishUserInfo) : int
      {
         var _loc3_:String = (param1 as FishUserInfo).displayName;
         var _loc4_:String = (param2 as FishUserInfo).displayName;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
      
      public function get fishesUser() : Array
      {
         return this._fishesUser;
      }
      
      public function get fishesUserMap() : Dictionary
      {
         return this._fishesUserMap;
      }
      
      public function getFishingDurationMultiplier(param1:int) : Number
      {
         return this._managerMonsterFishes.getFishingDurationMultiplier(param1);
      }
      
      private function onGetFishdexData(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:ResponseFishesGetRelevant = param1 as ResponseFishesGetRelevant;
         var _loc5_:Array = _loc4_.fishesCaught;
         this._userFishesUnavailable = _loc4_.fishesUnavailable;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"fish_id",int);
            if(this._fishesUserMap[_loc3_] == null)
            {
               this._fishesUserMap[_loc3_] = new FishUserInfo();
               this._fishesUser.push(this._fishesUserMap[_loc3_]);
            }
            (this._fishesUserMap[_loc3_] as FishUserInfo).deserialize(_loc2_);
         }
      }
      
      private function init() : void
      {
         this._fishesUser = [];
         this._fishesUserMap = new Dictionary(true);
         this._extensionFishes = FishaoFscModelManager.fscModel.extensionFishes;
      }
      
      override public function postInit() : void
      {
         this._managerMonsterFishes = GameSwf.instance.managerMonsterFishes;
      }
      
      public function isFishAvailable(param1:int) : Boolean
      {
         return this._userFishesUnavailable.indexOf(param1) < 0;
      }
      
      public function getAvailableFishes(param1:Vector.<FishInfoVO>) : Array
      {
         var _loc2_:FishInfoVO = null;
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            if(this.isFishAvailable(_loc2_.id))
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function getFishdexData(param1:Function = null) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onGetFishdexData(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._extensionFishes.getRelevant(callbackWrapper);
      }
      
      public function notepadUpdate(param1:int, param2:String) : void
      {
         (this._fishesUserMap[String(param1)] as FishUserInfo).notepad = param2;
      }
   }
}


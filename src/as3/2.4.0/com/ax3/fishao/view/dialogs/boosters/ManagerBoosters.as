package com.ax3.fishao.view.dialogs.boosters
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.boosters.base.BoosterInfo;
   import com.ax3.fishao.view.dialogs.boosters.base.FactoryBoosters;
   
   public class ManagerBoosters extends ManagerBase
   {
      
      private var _boosters:Array;
      
      public function ManagerBoosters()
      {
         super();
         this.init();
      }
      
      private function getBoosterById(param1:uint) : BoosterInfo
      {
         var _loc2_:BoosterInfo = null;
         var _loc3_:BoosterInfo = null;
         for each(_loc2_ in this._boosters)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function getBoosterByType(param1:String) : BoosterInfo
      {
         var _loc2_:BoosterInfo = null;
         var _loc3_:BoosterInfo = null;
         for each(_loc2_ in this._boosters)
         {
            if(_loc2_.type == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._boosters = [];
      }
      
      public function addBoosterById(param1:uint) : void
      {
         if(this.getBoosterById(param1) != null)
         {
            return;
         }
         var _loc2_:String = EBoosterType.getBoosterTypeById(param1);
         var _loc3_:BoosterInfo = FactoryBoosters.createBooster(_loc2_,param1);
         this._boosters.push(_loc3_);
      }
      
      public function removeBoosterByType(param1:String) : void
      {
         var _loc2_:BoosterInfo = this.getBoosterByType(param1);
         if(_loc2_ == null)
         {
            Debug.assert(false,"Couldn\'t remove booster effect. User is not affected by booster with type: " + param1);
            return;
         }
         var _loc3_:int = this._boosters.indexOf(_loc2_);
         this._boosters.splice(_loc3_,1);
      }
   }
}


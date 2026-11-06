package com.ax3.fishao.locations.lucky_raft
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.geom.Point;
   
   public class LocationDialogLuckyRaft extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersLuckyRaft;
      
      private var _locationModel:LocationModelLuckyRaft;
      
      public function LocationDialogLuckyRaft(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelLuckyRaft;
         super(param1);
      }
      
      private function onUpdateBoardFish(param1:LocationModelEvent) : void
      {
         var _loc2_:Array = param1.data as Array;
         this.updateBoardFishTooltip(_loc2_);
      }
      
      private function onGetForceMoveToSailorInfo(param1:LocationModelEvent) : void
      {
         var _loc2_:Boolean = param1.data as Boolean;
         if(_loc2_)
         {
            this.forceMoveToLuckySailor();
         }
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersLuckyRaft;
         return this._locationLayers;
      }
      
      override public function activate() : void
      {
         super.activate();
         Listeners.addEventListener(this,locationModel,LocationModelEvent.UPDATE_BOARD_FISH,this.onUpdateBoardFish);
         Listeners.addEventListener(this,locationModel,LocationModelEvent.FORCE_MOVE_TO_LUCKY_SAILOR,this.onGetForceMoveToSailorInfo);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         Listeners.removeEventListener(this,locationModel,LocationModelEvent.UPDATE_BOARD_FISH,this.onUpdateBoardFish);
         Listeners.removeEventListener(this,locationModel,LocationModelEvent.FORCE_MOVE_TO_LUCKY_SAILOR,this.onGetForceMoveToSailorInfo);
      }
      
      private function updateBoardFishTooltip(param1:Array) : void
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_] = I18n.get("fish_" + param1[_loc3_]);
            _loc3_++;
         }
         _loc2_.sort();
         var _loc4_:String = I18n.get(EStringType.EST_BOARD_FISH_LUCKY_RAFT);
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_COUNT,param1.length);
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc4_ += _loc2_[_loc5_];
            if(_loc5_ < param1.length - 1)
            {
               _loc4_ += ", ";
            }
            _loc5_++;
         }
         this._locationLayers.boardFish.tooltipText = _loc4_;
      }
      
      private function forceMoveToLuckySailor() : void
      {
         var _loc1_:NPC = null;
         _loc1_ = this._locationModel.getNPCbyName(ENpcName.ENN_LUCKY_SAILOR);
         _programmedCharMoveTarget = new Point();
         _programmedCharMoveTarget.x = _loc1_.position.x;
         _programmedCharMoveTarget.y = _loc1_.position.y + 30;
         _programmedCharMoveTargetNPC = _loc1_;
         if(_playerChar != null)
         {
            _playerChar.programmedMove = true;
            _playerChar.onMouseClick(_programmedCharMoveTarget.x,_programmedCharMoveTarget.y);
         }
      }
   }
}


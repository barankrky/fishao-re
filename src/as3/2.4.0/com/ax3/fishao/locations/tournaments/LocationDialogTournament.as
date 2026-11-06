package com.ax3.fishao.locations.tournaments
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown.ControllerCountdownItem;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown.DialogCountdown;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ECountdownType;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentState;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import com.ax3.utils.math.limit;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObjectContainer;
   
   public class LocationDialogTournament extends LocationDialog
   {
      
      private var _reachTournamentFinishSent:Boolean = false;
      
      private var _currentTournament:TournamentInfo;
      
      private var _managerTournaments:ManagerTournaments;
      
      public function LocationDialogTournament(param1:LocationModel)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         if(!BuildConfig.isProd())
         {
            Cc.addSlashCommand("openWall",this.openWall);
         }
         this._managerTournaments = GameSwf.instance.managerTournaments;
         this._currentTournament = this._managerTournaments.tournamentCurrent;
      }
      
      private function openWall(param1:int) : void
      {
         _locationLayersBase.tournamentWalls.openWall(param1);
      }
      
      public function onTournamentStart() : void
      {
         _playerChar.unfreeze();
         this.tryAddCountdownDialog();
      }
      
      private function tryAddCountdownDialog() : void
      {
         if(this._currentTournament.type == ETournamentType.ETT_RACE)
         {
            return;
         }
         if(_gui.getCountdownDialogByType(ECountdownType.ECT_TOURNAMENT) == null)
         {
            _gui.addCountdownDialog(this._currentTournament.timeLeftEnd,this._currentTournament.duration,ECountdownType.ECT_TOURNAMENT);
            this.updateTournamentMembersOnCountdown();
         }
      }
      
      public function updateTournamentLocationDialog() : void
      {
         var _loc1_:TournamentMemberInfo = null;
         if(locationModel.isTournament == false)
         {
            return;
         }
         if(this._currentTournament.type != ETournamentType.ETT_RACE && _gui.getCountdownDialogByType(ECountdownType.ECT_TOURNAMENT) != null)
         {
            this.updateTournamentMembersOnCountdown();
         }
         if(this._currentTournament.type == ETournamentType.ETT_RACE)
         {
            _loc1_ = this._currentTournament.getPlayer();
            if(_loc1_.criteria >= Math.round(this._currentTournament.fishToWinCount / 3))
            {
               this.openWall(0);
            }
            if(_loc1_.criteria >= Math.round(this._currentTournament.fishToWinCount / 3 * 2))
            {
               this.openWall(1);
            }
            if(_loc1_.criteria >= this._currentTournament.fishToWinCount)
            {
               this.openWall(2);
            }
         }
      }
      
      override protected function inspectTournamentFinish() : void
      {
         if(locationModel == null || !locationModel.isTournament)
         {
            return;
         }
         if(!_locationLayersBase.tournamentFinish || !_locationLayersBase.tournamentFinish.hitTestPoint(_playerChar.graphic.x,_playerChar.graphic.y) || this._reachTournamentFinishSent)
         {
            return;
         }
         this._reachTournamentFinishSent = true;
         _playerChar.freeze();
         this._managerTournaments.sendTournamentFinish();
      }
      
      private function checkUserFreezeState() : void
      {
         if(_playerChar == null)
         {
            return;
         }
         if(this._currentTournament.state == ETournamentState.ETS_SIGNING)
         {
            _playerChar.freeze();
         }
         else
         {
            _playerChar.unfreeze();
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         super.updateWithType(param1);
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_ENTER:
               if(this._currentTournament.state == ETournamentState.ETS_IN_PROGRESS)
               {
                  this.tryAddCountdownDialog();
               }
               this.checkUserFreezeState();
               break;
            case EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_START:
               this.onTournamentStart();
               break;
            case EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED:
               this.updateTournamentLocationDialog();
               break;
            case EControllerUpdate.ECU_TOURNAMENTS_MEMBER_FINISH:
         }
      }
      
      public function updateTournamentMembersOnCountdown() : void
      {
         var _loc1_:TournamentMemberInfo = null;
         var _loc2_:ControllerCountdownItem = null;
         var _loc3_:TournamentMemberInfo = null;
         var _loc4_:ControllerCountdownItem = null;
         var _loc5_:DialogCountdown = _gui.getCountdownDialogByType(ECountdownType.ECT_TOURNAMENT);
         Debug.assertNotEqual(_loc5_,null,"Impossible to call updateTournamentMembersOnCountdown method in LocationDialog while CountdownDialog with type: " + ECountdownType.ECT_TOURNAMENT + " not initialized on GUI");
         var _loc6_:Array = [];
         var _loc7_:int = Math.min(_loc5_.controllerCountdown.itemsLimit,this._currentTournament.members.length);
         var _loc8_:Boolean = false;
         var _loc9_:int = 1;
         while(_loc9_ <= _loc7_)
         {
            _loc1_ = this._currentTournament.getMemberByPosition(_loc9_);
            Debug.assertNotEqual(_loc1_,null,"Couldn\'t find tournamentMember in current tournament with position: " + _loc9_.toString());
            if(_loc1_.isPlayer && !_loc8_)
            {
               _loc8_ = true;
            }
            _loc2_ = this.getCountdownItem(_loc1_);
            _loc6_.push(_loc2_);
            _loc9_++;
         }
         if(!_loc8_)
         {
            _loc6_.pop();
            _loc3_ = this._currentTournament.getPlayer();
            Debug.assertNotEqual(_loc1_,null,"Couldn\'t find Player in current tournament");
            _loc4_ = this.getCountdownItem(_loc3_);
            _loc6_.push(_loc4_);
         }
         _loc5_.controllerCountdown.items = _loc6_;
         this._currentTournament.resetMembersCriteriaBoost();
      }
      
      private function getCountdownItem(param1:TournamentMemberInfo) : ControllerCountdownItem
      {
         var _loc2_:ControllerCountdownItem = null;
         var _loc3_:DisplayObjectContainer = new gViewCountdownItem();
         var _loc4_:ControllerCountdownItem = new ControllerCountdownItem(param1,_loc3_);
         _loc4_.tournamentType = this._currentTournament.type;
         return _loc4_;
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = false;
         if(!(param3 is PlayerChar))
         {
            return _loc4_;
         }
         if(_locationLayersBase == null)
         {
            return _loc4_;
         }
         return Boolean(_locationLayersBase.tournamentWalls) && _locationLayersBase.tournamentWalls.hitTest(param1,param2,param3);
      }
      
      override public function update(param1:uint, param2:uint) : void
      {
         super.update(param1,param2);
         this.updateStartLineCounter();
      }
      
      private function updateStartLineCounter() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(_locationLayersBase.startLineCounter != null)
         {
            _loc1_ = GameSwf.instance.managerTournaments.tournamentCurrent.timeLeftStart;
            _loc2_ = limit(_loc1_ + 1,1,5);
            if(_loc2_ != _locationLayersBase.startLineCounter.currentFrame)
            {
               _locationLayersBase.startLineCounter.gotoAndStop(_loc2_);
               if(_loc2_ > 1)
               {
                  FishaoSoundManager.play(FishaoSoundManager.SFX_062_UI_Timer_count_normal);
               }
               else
               {
                  FishaoSoundManager.play(FishaoSoundManager.SFX_062_UI_Timer_count_end);
                  _locationLayersBase.startLineCounter = null;
               }
            }
         }
      }
      
      override public function destroy() : void
      {
         Cc.removeEqualSlashCommand("openWall",this.openWall);
         super.destroy();
      }
   }
}


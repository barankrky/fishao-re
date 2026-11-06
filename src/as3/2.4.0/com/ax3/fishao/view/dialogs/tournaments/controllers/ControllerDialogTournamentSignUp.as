package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentState;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentPrizeInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewDialogTournamentSignUp;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protocol.api.base.ResponseError;
   
   public class ControllerDialogTournamentSignUp extends Controller
   {
      
      private static const INFINITY_SYMBOL:String = "∞";
      
      private var _view:ViewDialogTournamentSignUp;
      
      private var _entity:TournamentInfo;
      
      private var _managerTournaments:ManagerTournaments;
      
      private var _timer:Timer;
      
      private var _onSignUpClick:Boolean;
      
      public function ControllerDialogTournamentSignUp(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogTournamentSignUp(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonSignUp:
                  this.onSignUpButtonClick();
                  break;
               default:
                  Debug.assert(false,"Couldn\'t process onViewClick in ControllerTournamentSignUp with target: " + param1.toString());
            }
         }
         return _loc3_;
      }
      
      private function onSignUpButtonClick() : void
      {
         this._view.buttonSignUp.disable();
         this._onSignUpClick = true;
         if(app.user.fishcoins < this._entity.signUpCost)
         {
            PopupManager.getInstance().currentDialog().close();
            GameSwf.instance.showBuyFishcoinsDialog();
         }
         else
         {
            this._managerTournaments.canSignUpOnCurrent(this.onReceivedResponseCanSignUp);
         }
      }
      
      private function onReceivedResponseCanSignUp(param1:ServerResp) : void
      {
         var _loc2_:ResponseError = param1 as ResponseError;
         if(_loc2_ != null)
         {
            this._view.buttonSignUp.enable();
         }
      }
      
      private function onTimerTick(param1:TimerEvent) : void
      {
         this.updateTimers();
         this.updateButtons();
      }
      
      private function init() : void
      {
         this._managerTournaments = GameSwf.instance.managerTournaments;
         this.update(EControllerUpdate.ECU_TOURNAMENTS_ESTABLISH_CURRENT);
      }
      
      private function updateView() : void
      {
         this._view.dialogTitle = I18n.get(EStringType.EST_TOURNAMENT_NAME.replace(EStringTypeStubs.ESTS_TYPE,this._entity.type));
         this._view.members = this._entity.membersCountSignedUp.toString() + " / " + this._entity.membersCountMax.toString();
         var _loc1_:String = I18n.get(EStringType.EST_TOURNAMENT_TYPE_TEMPLATE);
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_TYPE,I18n.get(EStringType.EST_TOURNAMENT_TYPE.replace(EStringTypeStubs.ESTS_TYPE,this._entity.type)));
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_DIFFICULTY,I18n.get(EStringType.EST_TOURNAMENT_DIFFICULTY.replace(EStringTypeStubs.ESTS_DIFFICULTY,this._entity.difficulty)));
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_LEVEL_MIN,this._entity.memberLevelMin);
         var _loc2_:String = this._entity.memberLevelMax == int.MAX_VALUE ? INFINITY_SYMBOL : this._entity.memberLevelMax.toString();
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_LEVEL_MAX,_loc2_);
         this._view.type = _loc1_;
         this._view.description = I18n.get(EStringType.EST_TOURNAMENT_DESCRIPTION.replace(EStringTypeStubs.ESTS_TYPE,this._entity.type));
         switch(this._entity.type)
         {
            case ETournamentType.ETT_BOAT_ON_SEA:
            case ETournamentType.ETT_LAKE_RUN:
            case ETournamentType.ETT_MORAY:
               this._view.durationTitle = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_DURATION_DEFAULT);
               this._view.duration = TimeConverter.toHMSString(TimeConverter.fromSeconds(this._entity.duration));
               break;
            case ETournamentType.ETT_RACE:
               this._view.durationTitle = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_DURATION_FISH);
               this._view.duration = this._entity.fishToWinCount.toString();
               break;
            default:
               Debug.assert(false,"Unsupported tournament type on updateView in ControllerTournamentSignUp: " + this._entity.type);
         }
         this._view.buttonSignUp.coins = this._entity.signUpCost;
      }
      
      private function updatePrizeList() : void
      {
         var _loc1_:TournamentPrizeInfo = null;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:ControllerTournamentPrize = null;
         var _loc4_:Array = [];
         for each(_loc1_ in this._entity.prizeItems)
         {
            _loc2_ = new gViewPrizeItem();
            _loc3_ = new ControllerTournamentPrize(_loc2_,_loc1_);
            _loc3_.displayRelevant = true;
            _loc4_.push(_loc3_.view.source);
         }
         this._view.prizes = _loc4_;
      }
      
      private function updateTimers() : void
      {
         var _loc1_:String = this._entity.state;
         switch(_loc1_)
         {
            case ETournamentState.ETS_UPCOMING:
               this._view.timeStart = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_TOURNAMENT_SOON);
               this._view.timeSignUp = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_SIGN_UP_TOURNAMENT_SOON);
               break;
            case ETournamentState.ETS_WAIT_FOR_SIGN_UP:
            case ETournamentState.ETS_SIGNING:
               this._view.timeSignUp = TimeConverter.toHMSString(TimeConverter.fromSeconds(this._entity.timeLeftSignUp));
               this._view.timeStart = TimeConverter.toHMSString(TimeConverter.fromSeconds(this._entity.timeLeftStart));
               if(this._entity.timeLeftStart <= 0)
               {
                  this.tryCleanupTimer();
                  this._managerTournaments.establishRelevantTournament();
               }
               break;
            default:
               Debug.assert(false,"Unsupported ETournamentState in updateTimers method of ControllerDialogTournamentSignUp: " + _loc1_);
         }
      }
      
      private function updateButtons() : void
      {
         var _loc1_:String = this._managerTournaments.tournamentCurrent.state;
         switch(_loc1_)
         {
            case ETournamentState.ETS_UPCOMING:
            case ETournamentState.ETS_WAIT_FOR_SIGN_UP:
               if(this._view.buttonSignUp.enabled)
               {
                  this._view.buttonSignUp.disable();
               }
               break;
            case ETournamentState.ETS_SIGNING:
               if(!this._view.buttonSignUp.enabled && !this._onSignUpClick)
               {
                  this._view.buttonSignUp.enable();
               }
               break;
            default:
               Debug.assert(false,"Unsupported ETournamentState in updateButtons method of ControllerDialogTournamentSignUp: " + _loc1_);
         }
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:DialogBase = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_SIGN_UP:
               this._view.buttonSignUp.disable();
               _loc2_ = PopupManager.getInstance().getDialogByType(EDialogType.EDT_TOURNAMENT_SIGNUP);
               if(_loc2_ != null)
               {
                  _loc2_.close();
               }
               break;
            case EControllerUpdate.ECU_TOURNAMENTS_ESTABLISH_CURRENT:
               this._entity = this._managerTournaments.tournamentCurrent;
               this.updateView();
               this.updatePrizeList();
               this.recreateTimer();
               this.onTimerTick(null);
               break;
            default:
               Debug.assert(false,"Unsupported update type in update method of ControllerTournamentSignUp: " + param1);
         }
      }
      
      private function recreateTimer() : void
      {
         this.tryCleanupTimer();
         this._timer = new Timer(200);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.start();
      }
      
      private function tryCleanupTimer() : void
      {
         if(this._timer == null)
         {
            return;
         }
         this._timer.removeEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.stop();
         this._timer = null;
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupTimer();
         this._managerTournaments = null;
         this._entity = null;
         super.cleanup();
      }
   }
}


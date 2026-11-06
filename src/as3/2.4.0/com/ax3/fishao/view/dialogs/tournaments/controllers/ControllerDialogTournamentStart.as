package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentState;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewDialogTournamentStart;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protocol.api.base.ResponseError;
   
   public class ControllerDialogTournamentStart extends Controller
   {
      
      private var _view:ViewDialogTournamentStart;
      
      private var _managerTournaments:ManagerTournaments;
      
      private var _entity:TournamentInfo;
      
      private var _controllerTournamentMembers:ControllerTournamentMembers;
      
      private var _timer:Timer;
      
      public function ControllerDialogTournamentStart(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogTournamentStart(this,param1);
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
               case this._view.buttonReady:
                  this.onReadyButtonClick();
                  break;
               default:
                  Debug.assert(false,"Couldn\'t process onViewClick in ControllerTournamentSignUp with target: " + param1.toString());
            }
         }
         return _loc3_;
      }
      
      private function onReadyButtonClick() : void
      {
         this._view.buttonReady.disable();
         this._managerTournaments.sendReadyState(this.onStatusChanged);
      }
      
      private function onStatusChanged(param1:ServerResp) : void
      {
         var _loc2_:ResponseError = param1 as ResponseError;
         if(_loc2_ != null)
         {
            this._view.buttonReady.enable();
         }
      }
      
      private function onTimerTick(param1:TimerEvent) : void
      {
         this.updateTimers();
      }
      
      private function init() : void
      {
         this._managerTournaments = GameSwf.instance.managerTournaments;
         this._entity = this._managerTournaments.tournamentCurrent;
         if(this._entity.state != ETournamentState.ETS_SIGNING || this._entity.timeLeftStart <= 0)
         {
            return;
         }
         this._controllerTournamentMembers = new ControllerTournamentMembers(this._view.viewMembers);
         this.updateView();
         this.recreateTimer();
         this.updateTimers();
         this.update(EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED);
      }
      
      private function updateView() : void
      {
         switch(this._entity.state)
         {
            case ETournamentState.ETS_SIGNING:
               this._view.dialogTitle = I18n.get(EStringType.EST_TOURNAMENT_NAME.replace(EStringTypeStubs.ESTS_TYPE,this._entity.type));
               break;
            default:
               Debug.assert(false,"Unsupported tournament state on updateView in ControllerTournamentStart: " + this._entity.type);
         }
         this._view.dialogTitle = I18n.get(EStringType.EST_TOURNAMENT_NAME.replace(EStringTypeStubs.ESTS_TYPE,this._entity.type));
      }
      
      private function updateTimers() : void
      {
         var _loc1_:int = this._entity.timeLeftStart;
         var _loc2_:int = this._entity.type == ETournamentType.ETT_LAKE_RUN ? 5 : 0;
         if(_loc1_ <= _loc2_)
         {
            PopupManager.getInstance().getDialogByType(EDialogType.EDT_TOURNAMENT_START).close();
         }
         else
         {
            this._view.timeStart = TimeConverter.toHMSString(TimeConverter.fromSeconds(_loc1_));
         }
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED:
               this.checkButtonReadyState();
               if(this._controllerTournamentMembers != null)
               {
                  this._controllerTournamentMembers.update(param1);
               }
               break;
            default:
               Debug.assert(false,"Unsupported update type in update method of ControllerTournamentDialogStart: " + param1);
         }
      }
      
      private function checkButtonReadyState() : void
      {
         var _loc1_:TournamentMemberInfo = this._entity.getMemberByLogin(app.user.username);
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.isReady)
         {
            this._view.buttonReady.disable();
         }
         else
         {
            this._view.buttonReady.enable();
         }
      }
      
      private function recreateTimer() : void
      {
         this.tryCleanupTimer();
         this._timer = new Timer(500);
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
         if(this._controllerTournamentMembers != null)
         {
            this._controllerTournamentMembers.cleanup();
            this._controllerTournamentMembers = null;
         }
         this._managerTournaments = null;
         this._entity = null;
         super.cleanup();
      }
   }
}


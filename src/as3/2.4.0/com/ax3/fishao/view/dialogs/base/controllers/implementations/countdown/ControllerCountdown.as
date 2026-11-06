package com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ECountdownIconType;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ECountdownState;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ECountdownType;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ViewCountdown;
   import com.ax3.fishao.view.dialogs.base.views.interfaces.IView;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ControllerCountdown extends Controller
   {
      
      private var _view:ViewCountdown;
      
      private var _type:String;
      
      private var _state:String;
      
      private var _items:Array;
      
      private var _timeLeft:uint;
      
      private var _timeTotal:uint;
      
      private var _membersScoreType:String;
      
      private var _onCompleteFunction:Function;
      
      private var _itemsLimit:int;
      
      public function ControllerCountdown(param1:DisplayObjectContainer, param2:uint, param3:uint)
      {
         this._timeLeft = param2;
         this._timeTotal = param3;
         this._view = new ViewCountdown(this,param1);
         super(this._view);
         this.init();
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
         this.updateType();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set description(param1:String) : void
      {
         this._view.description = param1;
      }
      
      public function set onCompleteFunction(param1:Function) : void
      {
         this._onCompleteFunction = param1;
      }
      
      public function get onCompleteFunction() : Function
      {
         return this._onCompleteFunction;
      }
      
      public function set timeLeft(param1:uint) : void
      {
         this._timeLeft = param1;
         this.updateTime();
      }
      
      public function set items(param1:Array) : void
      {
         this.tryToCleanupItems();
         this._items = param1;
         this.updateItemsView();
         this.updateItemsData();
      }
      
      public function get itemsLimit() : int
      {
         return this._itemsLimit;
      }
      
      public function set membersScoreType(param1:String) : void
      {
         this._membersScoreType = param1;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonMaximize:
                  this._state = ECountdownState.ECS_MAXIMIZED;
                  this.updateViewState();
                  break;
               case this._view.buttonMinimize:
                  this._state = ECountdownState.ECS_MINIMIZED;
                  this.updateViewState();
                  break;
               default:
                  Debug.assert(false,"Couldn\'t process onViewClick in ControllerCountdown with target: " + param1.toString());
            }
         }
         return _loc3_;
      }
      
      override public function onViewMouseDown(param1:IView, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewMouseDown(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view:
                  (this._view.source as Sprite).startDrag();
                  break;
               default:
                  Debug.assert(false,"Couldn\'t process onViewMouseDown in ControllerCountdown with target: " + param2.target.toString());
            }
         }
         return _loc3_;
      }
      
      override public function onViewMouseUp(param1:IView, param2:MouseEvent) : Boolean
      {
         var _loc3_:Boolean = super.onViewMouseDown(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view:
                  (this._view.source as Sprite).stopDrag();
                  break;
               default:
                  Debug.assert(false,"Couldn\'t process onViewClick in ControllerCountdown with target: " + param2.target.toString());
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._items = [];
         this._itemsLimit = 5;
         this._state = ECountdownState.ECS_MINIMIZED;
         (this._view.source as Sprite).buttonMode = true;
         this.updateViewState();
         this.updateTime();
      }
      
      private function updateViewState() : void
      {
         switch(this._state)
         {
            case ECountdownState.ECS_MAXIMIZED:
               this._view.viewMinimized.visible = false;
               this._view.viewMaximized.visible = true;
               this._view.buttonMinimize.visible = true;
               this._view.buttonMaximize.visible = false;
               break;
            case ECountdownState.ECS_MINIMIZED:
               this._view.viewMinimized.visible = true;
               this._view.viewMaximized.visible = false;
               this._view.buttonMinimize.visible = false;
               this._view.buttonMaximize.visible = true;
               break;
            default:
               Debug.assert(false,"Unsupported ECountdownState on updateViewState method of ControllerCountdown: " + this._state.toString());
         }
      }
      
      private function updateType() : void
      {
         switch(this._type)
         {
            case ECountdownType.ECT_TOURNAMENT:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_TOURNAMENT);
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_MAINTANENCE:
               this._view.labelTime.y = 31;
               this._view.viewProgress.source.y = 31;
               this._view.labelDescription.y = 13;
               this.description = I18n.get(EStringType.EST_COUNTDOWN_MAINTANENCE);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_MAINTANENCE;
               break;
            case ECountdownType.ECT_MINIGAME_BOB:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_MINIGAME_BOB);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_MINIGAME_STEVE:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_MINIGAME_STEVE);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_RAFT_WAITING:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_RAFT_WAITING);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_RAFT_FISHING:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_RAFT_FISHING);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_TROUT_FARM:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_TROUT_FARM);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_BOAT:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_BOAT);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            case ECountdownType.ECT_PYRAMID:
               this.description = I18n.get(EStringType.EST_COUNTDOWN_PYRAMID);
               this.disableMaximizeState();
               this._view.iconType = ECountdownIconType.ECIT_CLOCK;
               break;
            default:
               Debug.assert(false,"Unsupported ECountdownType on updateType method of ControllerCountdown: " + this._type.toString());
         }
      }
      
      private function updateTime() : void
      {
         var _loc1_:int = int(this._timeLeft / 60);
         var _loc2_:int = this._timeLeft % 60;
         this._view.labelTime.text = (_loc1_ < 10 ? "0" : "") + _loc1_.toString() + ":" + (_loc2_ < 10 ? "0" : "") + _loc2_.toString();
         this._view.viewProgress.percent = limit(int(100 * this._timeLeft / this._timeTotal),1,100);
         if(_loc1_ == 0)
         {
            if(_loc2_ >= 1 && _loc2_ <= 10)
            {
               FishaoSoundManager.play(FishaoSoundManager.SFX_062_UI_Timer_count_normal);
            }
            else if(_loc2_ == 0)
            {
               FishaoSoundManager.play(FishaoSoundManager.SFX_062_UI_Timer_count_end);
            }
         }
      }
      
      private function updateItemsView() : void
      {
         var _loc1_:IController = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._items)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._view.items = _loc2_;
      }
      
      private function updateItemsData() : void
      {
         var _loc1_:ControllerCountdownItem = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.updateData();
         }
      }
      
      public function disableMaximizeState() : void
      {
         this._view.buttonMaximize.visible = false;
      }
      
      private function tryToCleanupItems() : void
      {
         var _loc1_:ControllerCountdownItem = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.cleanup();
            _loc1_ = null;
         }
      }
      
      override public function cleanup() : void
      {
         this._onCompleteFunction = null;
         this._type = null;
         this._state = null;
         super.cleanup();
      }
   }
}

